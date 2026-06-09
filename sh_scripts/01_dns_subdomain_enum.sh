#!/bin/bash
# ============================================================
# 01_dns_subdomain_enum.sh - Enum DNS de rcsmm.eu
# Uso: bash 01_dns_subdomain_enum.sh
# Guarda resultados en resultados/
# ============================================================
DOMAIN="rcsmm.eu"
IPS_PRINCIPAL="62.97.84.197"
IPS_MOODLE="213.172.39.24"
DIR="resultados/01_dns"
mkdir -p "$DIR"
echo "[+] Iniciando enumeracion DNS de $DOMAIN"
echo "[*] Resultados en $DIR/"
echo "============================================" | tee "$DIR/resumen.txt"

# --- 1. Consultas DNS basicas ---
echo -e "\n[1] Registros DNS basicos" | tee -a "$DIR/resumen.txt"
for tipo in A AAAA MX NS TXT SOA CNAME; do
  dig +short "$DOMAIN" "$tipo" 2>/dev/null | tee -a "$DIR/${tipo}.txt"
  dig +short "www.$DOMAIN" "$tipo" 2>/dev/null | tee -a "$DIR/www_${tipo}.txt"
done

echo -e "\n--- Resumen DNS basico ---" >> "$DIR/resumen.txt"
echo "A: $(cat $DIR/A.txt 2>/dev/null)" >> "$DIR/resumen.txt"
echo "MX: $(cat $DIR/MX.txt 2>/dev/null)" >> "$DIR/resumen.txt"
echo "NS: $(cat $DIR/NS.txt 2>/dev/null)" >> "$DIR/resumen.txt"
echo "TXT: $(cat $DIR/TXT.txt 2>/dev/null)" >> "$DIR/resumen.txt"

# --- 2. Subdominios con dnsrecon ---
echo -e "\n[2] dnsrecon - brute force de subdominios"
dnsrecon -d "$DOMAIN" -t brt -D /usr/share/wordlists/dns/subdomains-top1million-110000.txt --csv "$DIR/dnsrecon_bruteforce.csv" 2>/dev/null | tee "$DIR/dnsrecon_brute_output.txt"
dnsrecon -d "$DOMAIN" -t std --csv "$DIR/dnsrecon_std.csv" 2>/dev/null | tee "$DIR/dnsrecon_std_output.txt"

# --- 3. Subdominios con subfinder ---
echo -e "\n[3] subfinder"
subfinder -d "$DOMAIN" -silent -o "$DIR/subfinder.txt" 2>/dev/null
echo "[*] Subdominios encontrados por subfinder: $(wc -l < "$DIR/subfinder.txt" 2>/dev/null || echo 0)"
cat "$DIR/subfinder.txt" 2>/dev/null | tee -a "$DIR/todos_subdominios.txt"

# --- 4. Subdominios con Sublist3r ---
echo -e "\n[4] Sublist3r"
sublist3r -d "$DOMAIN" -o "$DIR/sublist3r.txt" 2>/dev/null
echo "[*] Subdominios encontrados por Sublist3r: $(wc -l < "$DIR/sublist3r.txt" 2>/dev/null || echo 0)"
cat "$DIR/sublist3r.txt" 2>/dev/null | tee -a "$DIR/todos_subdominios.txt"

# --- 5. Subdominios con amass (pasivo) ---
echo -e "\n[5] amass enum (pasivo)"
amass enum -passive -d "$DOMAIN" -o "$DIR/amass.txt" 2>/dev/null
echo "[*] Subdominios encontrados por amass: $(wc -l < "$DIR/amass.txt" 2>/dev/null || echo 0)"
cat "$DIR/amass.txt" 2>/dev/null | tee -a "$DIR/todos_subdominios.txt"

# --- 6. Certificate Transparency (crt.sh) ---
echo -e "\n[6] crt.sh - Certificate Transparency"
curl -s "https://crt.sh/?q=%25.$DOMAIN&output=json" 2>/dev/null | jq -r '.[].name_value' 2>/dev/null | sort -u > "$DIR/crtsh.txt"
echo "[*] Subdominios de crt.sh: $(wc -l < "$DIR/crtsh.txt" 2>/dev/null || echo 0)"
cat "$DIR/crtsh.txt" 2>/dev/null | tee -a "$DIR/todos_subdominios.txt"

# --- 7. Unificar y deduplicar ---
echo -e "\n[7] Unificando subdominios unicos"
sort -u "$DIR/todos_subdominios.txt" 2>/dev/null > "$DIR/subdominios_unicos.txt"
echo "[*] Total subdominios unicos: $(wc -l < "$DIR/subdominios_unicos.txt" 2>/dev/null || echo 0)"
cat "$DIR/subdominios_unicos.txt"

# --- 8. Resolver IPs de cada subdominio ---
echo -e "\n[8] Resolviendo IPs de subdominios"
while IFS= read -r sub; do
  ip=$(dig +short "$sub" A 2>/dev/null)
  echo "$sub -> $ip" | tee -a "$DIR/subdominios_ips.txt"
done < "$DIR/subdominios_unicos.txt"

# --- 9. WHOIS ---
echo -e "\n[9] WHOIS"
whois "$DOMAIN" 2>/dev/null > "$DIR/whois_dominio.txt"
echo "[*] WHOIS guardado en $DIR/whois_dominio.txt"

for ip in $IPS_PRINCIPAL $IPS_MOODLE; do
  whois "$ip" 2>/dev/null > "$DIR/whois_ip_${ip}.txt"
  echo "[*] WHOIS de $ip guardado"
done

# --- 10. Informacion adicional ---
echo -e "\n[10] Informacion adicional"
# Reverse DNS
for ip in $IPS_PRINCIPAL $IPS_MOODLE; do
  dig +short -x "$ip" 2>/dev/null > "$DIR/reverso_${ip}.txt"
  echo "PTR $ip: $(cat "$DIR/reverso_${ip}.txt")"
done

# WhatDNS (si existe)
curl -s "https://whatdns.app/check?q=$DOMAIN" 2>/dev/null | head -50 > "$DIR/whatdns.txt" 2>/dev/null

echo -e "\n============================================" | tee -a "$DIR/resumen.txt"
echo "[+] DNS enumeration completada. Archivos en $DIR/"
