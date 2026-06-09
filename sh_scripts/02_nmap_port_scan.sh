#!/bin/bash
# ============================================================
# 02_nmap_port_scan.sh - Escaneo de puertos con nmap
# Uso: bash 02_nmap_port_scan.sh
# Guarda resultados en resultados/
# ============================================================
IP1="62.97.84.197"
IP2="213.172.39.24"
DOMAIN="rcsmm.eu"
DIR="resultados/02_nmap"
mkdir -p "$DIR"
echo "[+] Iniciando escaneo de puertos con nmap"
echo "[*] IP principal (rcsmm.eu): $IP1"
echo "[*] IP servidor (moodle/mail): $IP2"
echo "============================================" | tee "$DIR/resumen.txt"

# --- 1. Escaneo rapido de todos los puertos (IP principal) ---
echo -e "\n[1] Escaneo full TCP - IP principal $IP1 (tarda varios minutos)"
nmap -p- --min-rate=2000 -T4 -oA "$DIR/fulltcp_principal" "$IP1" 2>/dev/null | tee "$DIR/nmap_fulltcp_principal.txt"
echo "[*] Puertos abiertos IP principal:"
grep ^[0-9] "$DIR/nmap_fulltcp_principal.txt" | cut -d/ -f1 | tr '\n' ',' | sed 's/,$//' | tee "$DIR/puertos_principal.txt"

# --- 2. Escaneo completo con scripts y versiones (IP principal) ---
echo -e "\n[2] Escaneo detallado - IP principal $IP1"
PORTS1=$(cat "$DIR/puertos_principal.txt" 2>/dev/null || echo "80,443")
nmap -sC -sV -O -p"$PORTS1" --min-rate=1000 -oA "$NM_DIR/detallado_principal" "$IP1" 2>/dev/null | tee "$DIR/nmap_detallado_principal.txt"
echo "[*] Resultados guardados en $DIR/"

# --- 3. Escaneo full TCP - IP servidor $IP2 ---
echo -e "\n[3] Escaneo full TCP - IP servidor $IP2 (tarda mas, 17+ puertos conocidos)"
nmap -p- --min-rate=2000 -T4 -oA "$DIR/fulltcp_servidor" "$IP2" 2>/dev/null | tee "$DIR/nmap_fulltcp_servidor.txt"
echo "[*] Puertos abiertos IP servidor:"
grep ^[0-9] "$DIR/nmap_fulltcp_servidor.txt" | cut -d/ -f1 | tr '\n' ',' | sed 's/,$//' | tee "$DIR/puertos_servidor.txt"

# --- 4. Escaneo detallado con scripts (IP servidor) ---
echo -e "\n[4] Escaneo detallado - IP servidor $IP2"
PORTS2=$(cat "$DIR/puertos_servidor.txt" 2>/dev/null || echo "11,21,25,26,53,80,110,111,119,143,443,465,587,993,995,12000,31337")
nmap -sC -sV -O -sS -p"$PORTS2" --min-rate=1000 -oA "$DIR/detallado_servidor" "$IP2" 2>/dev/null | tee "$DIR/nmap_detallado_servidor.txt"

# --- 5. Escaneo UDP top 100 ---
echo -e "\n[5] Escaneo UDP top 100 puertos - ambas IPs"
nmap -sU --top-ports 100 -T4 -oA "$DIR/udp_top100" "$IP1" "$IP2" 2>/dev/null | tee "$DIR/nmap_udp.txt"

# --- 6. Scripts NSE de seguridad web ---
echo -e "\n[6] NSE scripts de seguridad web (ambas IPs)"
nmap -sV -p 80,443 --script=http-vuln*,http-enum,http-headers,http-methods,http-auth-finder,http-iis-webdav-vuln,http-config-backup,http-cors,http-title,http-server-header -oA "$DIR/nse_web" "$IP1" "$IP2" 2>/dev/null | tee "$DIR/nmap_nse_web.txt"

# --- 7. NSE para servidor de correo ---
echo -e "\n[7] NSE scripts SMTP/POP3/IMAP"
nmap -sV -p 25,26,110,143,465,587,993,995 --script=smtp-*,pop3-*,imap-* -oA "$DIR/nse_mail" "$IP2" 2>/dev/null | tee "$DIR/nmap_nse_mail.txt"

# --- 8. NSE FTP ---
echo -e "\n[8] NSE scripts FTP"
nmap -sV -p 21 --script=ftp-anon,ftp-bounce,ftp-libopie,ftp-proftpd-backdoor,ftp-vsftpd-backdoor,ftp-vuln-cve2010-4221 -oA "$DIR/nse_ftp" "$IP2" 2>/dev/null | tee "$DIR/nmap_nse_ftp.txt"

# --- 9. Resumen final ---
echo -e "\n============================================" | tee -a "$DIR/resumen.txt"
echo "[+] Resumen de puertos abiertos:" >> "$DIR/resumen.txt"
echo "IP principal ($IP1): $(cat "$DIR/puertos_principal.txt" 2>/dev/null || echo '80,443')" >> "$DIR/resumen.txt"
echo "IP servidor ($IP2): $(cat "$DIR/puertos_servidor.txt" 2>/dev/null || echo '11,21,25,26,53,80,110,111,119,143,443,465,587,993,995,12000,31337')" >> "$DIR/resumen.txt"
echo "[+] Escaneo nmap completado. Archivos en $DIR/"
