#!/bin/bash
# ============================================================
# 04_service_enum.sh - Enumeracion de servicios
# Uso: bash 04_service_enum.sh
# Guarda resultados en resultados/
# ============================================================
IP="213.172.39.24"
DIR="resultados/04_servicios"
mkdir -p "$DIR"
echo "[+] Enumerando servicios en $IP"
echo "============================================" | tee "$DIR/resumen.txt"

# --- 1. FTP (21) ---
echo -e "\n[1] FTP - acceso anonimo y banners"
echo "quit" | timeout 5 nc -nv "$IP" 21 2>/dev/null > "$DIR/ftp_banner.txt"
cat "$DIR/ftp_banner.txt"
nmap -p 21 --script=ftp-anon,ftp-bounce,ftp-brute -oA "$DIR/ftp_nse" "$IP" 2>/dev/null | tee -a "$DIR/resumen.txt"
# Intentar login anonimo
curl -s --user anonymous:test "ftp://$IP/" 2>/dev/null > "$DIR/ftp_anon_listing.txt"

# --- 2. SMTP (25, 26, 465, 587) ---
echo -e "\n[2] SMTP - enumeracion de usuarios y comandos"
for puerto in 25 26; do
  echo "=== Puerto $puerto ===" | tee -a "$DIR/smtp_banner.txt"
  echo -e "EHLO scan\r\nVRFY root\r\nVRFY admin\r\nVRFY info\r\nVRFY postmaster\r\nVRFY webmaster\r\nEXPN root\r\nQUIT\r\n" | timeout 5 nc -nv "$IP" "$puerto" 2>/dev/null >> "$DIR/smtp_banner.txt"
  echo "" >> "$DIR/smtp_banner.txt"
done
# smtp-user-enum (si instalado)
command -v smtp-user-enum >/dev/null 2>&1 && {
  smtp-user-enum -M VRFY -U /usr/share/wordlists/seclists/Usernames/xato-net-10-million-usernames-dup.txt -t "$IP" 2>/dev/null | tee "$DIR/smtp_users_vrfy.txt"
  smtp-user-enum -M EXPN -U /usr/share/wordlists/seclists/Usernames/xato-net-10-million-usernames-dup.txt -t "$IP" 2>/dev/null | tee "$DIR/smtp_users_expn.txt"
}

# --- 3. DNS (53) ---
echo -e "\n[3] DNS - transferencia de zona e info"
dig axfr @"$IP" rcsmm.eu 2>/dev/null > "$DIR/dns_axfr.txt"
if grep -qi "Transfer failed" "$DIR/dns_axfr.txt" 2>/dev/null; then
  echo "[!] Transferencia de zona denegada"
else
  echo "[+] Transferencia de zona posible:"
  cat "$DIR/dns_axfr.txt"
fi
dnsrecon -d rcsmm.eu -t axfr --nameserver "$IP" 2>/dev/null >> "$DIR/dns_axfr_dnsrecon.txt"

# --- 4. POP3 (110, 995) ---
echo -e "\n[4] POP3 - banner grab"
for puerto in 110 995; do
  echo "=== Puerto $puerto ===" >> "$DIR/pop3_banner.txt"
  timeout 5 nc -nv "$IP" "$puerto" 2>/dev/null >> "$DIR/pop3_banner.txt"
  echo "" >> "$DIR/pop3_banner.txt"
done
nmap -p 110,995 --script=pop3-capabilities,pop3-ntlm-info -oA "$DIR/pop3_nse" "$IP" 2>/dev/null | tee -a "$DIR/resumen.txt"

# --- 5. IMAP (143, 993) ---
echo -e "\n[5] IMAP - banner grab"
for puerto in 143 993; do
  echo "=== Puerto $puerto ===" >> "$DIR/imap_banner.txt"
  timeout 5 nc -nv "$IP" "$puerto" 2>/dev/null >> "$DIR/imap_banner.txt"
  echo "" >> "$DIR/imap_banner.txt"
done
nmap -p 143,993 --script=imap-capabilities,imap-ntlm-info -oA "$DIR/imap_nse" "$IP" 2>/dev/null | tee -a "$DIR/resumen.txt"

# --- 6. RPC (111) ---
echo -e "\n[6] RPC - enumeracion"
rpcinfo -p "$IP" 2>/dev/null > "$DIR/rpc_info.txt"
cat "$DIR/rpc_info.txt"
nmap -p 111 --script=nfs-* -oA "$DIR/rpc_nse" "$IP" 2>/dev/null | tee -a "$DIR/resumen.txt"

# --- 7. NNTP (119) ---
echo -e "\n[7] NNTP - lista de grupos"
echo -e "list\r\nquit\r\n" | timeout 5 nc -nv "$IP" 119 2>/dev/null > "$DIR/nntp_groups.txt"
cat "$DIR/nntp_groups.txt"

# --- 8. Puertos inusuales (12000, 31337) ---
echo -e "\n[8] Puertos inusuales - banner grab"
for puerto in 12000 31337; do
  echo "=== Puerto $puerto ===" >> "$DIR/puertos_inusuales.txt"
  curl -k -s --max-time 5 "http://$IP:$puerto/" 2>/dev/null >> "$DIR/puertos_inusuales.txt"
  echo "" >> "$DIR/puertos_inusuales.txt"
  curl -k -s --max-time 5 "https://$IP:$puerto/" 2>/dev/null >> "$DIR/puertos_inusuales.txt"
  echo "" >> "$DIR/puertos_inusuales.txt"
  timeout 5 nc -nv "$IP" "$puerto" 2>/dev/null >> "$DIR/puertos_inusuales.txt"
  echo "" >> "$DIR/puertos_inusuales.txt"
done
nmap -sC -sV -p 12000,31337 -oA "$DIR/inusuales_nse" "$IP" 2>/dev/null | tee -a "$DIR/resumen.txt"

# --- 9. Pure-FTPd version check ---
echo -e "\n[9] Pure-FTPd - exploits conocidos"
# Pure-FTPd version check via nmap ya incluido en 02_nmap
searchsploit pure-ftpd 2>/dev/null | tee "$DIR/searchsploit_pureftpd.txt"

echo -e "\n============================================" | tee -a "$DIR/resumen.txt"
echo "[+] Enumeracion de servicios completada. Archivos en $DIR/"
