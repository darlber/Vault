#!/bin/bash
# ============================================================
# 05_shodan_osint.sh - Shodan + OSINT pasivo
# Uso: bash 05_shodan_osint.sh
# NOTA: Primero ejecute: shodan init TU_API_KEY
# Guarda resultados en resultados/
# ============================================================
DOMAIN="rcsmm.eu"
IP1="62.97.84.197"
IP2="213.172.39.24"
DIR="resultados/05_shodan_osint"
mkdir -p "$DIR"
echo "[+] Iniciando recoleccion Shodan + OSINT pasivo"
echo "============================================" | tee "$DIR/resumen.txt"

# --- 1. InternetDB API (gratis, sin key) ---
echo -e "\n[1] InternetDB API - informacion basica de IPs"
for ip in "$IP1" "$IP2"; do
  echo "=== $ip ===" | tee -a "$DIR/internetdb.txt"
  curl -s "https://internetdb.shodan.io/$ip" 2>/dev/null | python3 -m json.tool >> "$DIR/internetdb.json" 2>/dev/null
  curl -s "https://internetdb.shodan.io/$ip" 2>/dev/null | tee -a "$DIR/internetdb.txt"
  echo "" >> "$DIR/internetdb.txt"
done

# --- 2. Shodan CLI (si instalado y con key) ---
echo -e "\n[2] Shodan CLI - busquedas"
if command -v shodan &>/dev/null; then
  shodan host "$IP1" 2>/dev/null > "$DIR/shodan_host_principal.txt"
  shodan host "$IP2" 2>/dev/null > "$DIR/shodan_host_servidor.txt"
  shodan search "hostname:$DOMAIN" --fields ip_str,port,hostnames,product,version,vulns 2>/dev/null > "$DIR/shodan_search_domain.txt"
  shodan search "org:\"Future Garden Spain\"" --fields ip_str,port,hostnames 2>/dev/null > "$DIR/shodan_org_futuregarden.txt"
  shodan search "org:\"Servytec\"" --fields ip_str,port,hostnames 2>/dev/null > "$DIR/shodan_org_servytec.txt"
  shodan search "asn:AS8220" --fields ip_str,port,hostnames 2>/dev/null > "$DIR/shodan_as8220.txt"
  echo "[*] Shodan completado"
else
  echo "[!] Shodan CLI no instalado. Para instalar: pip3 install shodan && shodan init API_KEY"
fi

# --- 3. Wayback Machine ---
echo -e "\n[3] Wayback Machine - historico de URLs"
curl -s "http://web.archive.org/cdx/search/cdx?url=$DOMAIN&output=json&fl=original,timestamp,statuscode" 2>/dev/null | python3 -c "
import sys,json
try:
    data = json.load(sys.stdin)
    for entry in data[1:]:  # skip header
        print(f'{entry[1]} | {entry[2]} | {entry[0]}')
except: pass
" 2>/dev/null > "$DIR/wayback_urls.txt"
echo "[*] URLs historicas encontradas: $(wc -l < "$DIR/wayback_urls.txt" 2>/dev/null || echo 0)"

# --- 4. Google Dorks (simulados - los dorks se ejecutan manualmente en navegador) ---
echo -e "\n[4] Google Dorks para rcsmm.eu (ejecutar manualmente en navegador)"
cat > "$DIR/google_dorks.txt" << 'EOF'
=== GOOGLE DORKS - rcsmm.eu ===
Ejecutar manualmente en el navegador:

1. Directorios abiertos:
   site:rcsmm.eu intitle:"index of"

2. Archivos PDF:
   site:rcsmm.eu filetype:pdf

3. Posibles backups:
   site:rcsmm.eu ext:sql OR ext:bak OR ext:dump

4. Paneles admin:
   site:rcsmm.eu inurl:admin

5. Moodle:
   site:moodle.rcsmm.eu intitle:"Login" "lost password"

6. Correos electronicos:
   site:rcsmm.eu mail

7. Documentos internos:
   site:rcsmm.eu filetype:xls OR filetype:csv

8. Moodle expuesto:
   inurl:/moodle filetype:php rcsmm

9. Vulnerabilidades:
   "rcsmm" "vulnerability" OR "cve" OR "security"

10. Redes sociales:
    "Real Conservatorio Superior de Música" "leak" OR "filtered" OR "datos"

Busqueda combinada avanzada:
   site:rcsmm.eu (password OR passwd OR login OR admin OR backup OR sql OR config)
EOF
echo "[*] Dorks guardados en $DIR/google_dorks.txt"

# --- 5. theHarvester ---
echo -e "\n[5] theHarvester - emails, subdominios, IPs"
if command -v theHarvester &>/dev/null; then
  theHarvester -d "$DOMAIN" -b google,linkedin,bing,yahoo,crtsh -f "$DIR/theharvester.html" 2>/dev/null | tee "$DIR/theharvester_output.txt"
else
  echo "[!] theHarvester no instalado. Para instalar: apt install theharvester"
fi

# --- 6. Email formatos comunes ---
echo -e "\n[6] Generando posibles correos institucionales (formato nombre.apellido@rcsmm.es)"
cat > "$DIR/emails_potenciales.txt" << 'EOF'
FORMATOS COMUNES:
nombre.apellido@rcsmm.es
n.apellido@rcsmm.es
nombre.apellido@rcsmm.eu
info@rcsmm.es
admin@rcsmm.eu
secretaria@rcsmm.eu
direccion@rcsmm.eu
biblioteca@rcsmm.eu (confirmado: biblioteca@rcsmm.eu)
webmaster@rcsmm.eu
EOF

# --- 7. Tecnologias por Wappalyzer (via API publica) ---
echo -e "\n[7] Wappalyzer - deteccion de tecnologias"
for url in "https://$DOMAIN" "https://moodle.$DOMAIN"; do
  name=$(echo "$url" | sed 's/https:\/\///')
  curl -s "https://www.wappalyzer.com/lookup/?url=$url" 2>/dev/null | head -200 > "$DIR/wappalyzer_${name}.txt" 2>/dev/null
done

echo -e "\n============================================" | tee -a "$DIR/resumen.txt"
echo "[+] Shodan + OSINT completado. Archivos en $DIR/"
