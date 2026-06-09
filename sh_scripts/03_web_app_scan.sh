#!/bin/bash
# ============================================================
# 03_web_app_scan.sh - Analisis de aplicaciones web
# Uso: bash 03_web_app_scan.sh
# Guarda resultados en resultados/
# ============================================================
URL1="https://rcsmm.eu"
URL2="https://moodle.rcsmm.eu"
IP1="62.97.84.197"
IP2="213.172.39.24"
DIR="resultados/03_web"
mkdir -p "$DIR"
echo "[+] Iniciando analisis de aplicaciones web"
echo "[*] URL principal: $URL1"
echo "[*] URL moodle: $URL2"
echo "============================================" | tee "$DIR/resumen.txt"

# --- 1. WhatWeb ---
echo -e "\n[1] WhatWeb - fingerprinting"
whatweb -a 3 "$URL1" --log-json="$DIR/whatweb_principal.json" 2>/dev/null | tee "$DIR/whatweb_principal.txt"
whatweb -a 3 "$URL2" --log-json="$DIR/whatweb_moodle.json" 2>/dev/null | tee "$DIR/whatweb_moodle.txt"

# --- 2. Headers HTTP ---
echo -e "\n[2] Headers HTTP y cookies"
for url in "$URL1" "$URL2"; do
  name=$(echo "$url" | sed 's/https:\/\///' | sed 's/\///')
  echo "=== $url ===" >> "$DIR/headers_${name}.txt"
  curl -k -s -D- "$url" 2>/dev/null | head -50 >> "$DIR/headers_${name}.txt"
  echo "" >> "$DIR/headers_${name}.txt"
  echo "--- Security Headers ---" >> "$DIR/headers_${name}.txt"
  curl -k -s -I "$url" 2>/dev/null | grep -iE "x-frame|x-content|x-xss|strict-transport|content-security|referrer|permissions|x-permitted" >> "$DIR/headers_${name}.txt" 2>/dev/null
  echo "---" >> "$DIR/headers_${name}.txt"
  # Cookie attributes
  curl -k -s -I "$url" 2>/dev/null | grep -i "set-cookie" >> "$DIR/cookies_${name}.txt" 2>/dev/null
done

# --- 3. Gobuster directory enumeration ---
echo -e "\n[3] Gobuster - directorios y archivos"
WORDLIST="/usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt"
if [ -f "$WORDLIST" ]; then
  for target in "$URL1" "$URL2"; do
    name=$(echo "$target" | sed 's/https:\/\///' | sed 's/\///')
    gobuster dir -u "$target" -w "$WORDLIST" -t 50 -x php,html,txt,zip,json,bak,old,sql,log -q -o "$DIR/gobuster_${name}.txt" 2>/dev/null
    echo "[*] Gobuster $name: $(wc -l < "$DIR/gobuster_${name}.txt" 2>/dev/null) rutas"
  done
else
  echo "[!] Wordlist no encontrada en $WORDLIST. Usando wordlist alternativa..."
  gobuster dir -u "$URL1" -w /usr/share/wordlists/dirb/common.txt -t 50 -x php,html,txt,zip -q -o "$DIR/gobuster_principal_common.txt" 2>/dev/null
  gobuster dir -u "$URL2" -w /usr/share/wordlists/dirb/common.txt -t 50 -x php,html,txt,zip -q -o "$DIR/gobuster_moodle_common.txt" 2>/dev/null
fi

# --- 4. nikto ---
echo -e "\n[4] Nikto - escaneo de vulnerabilidades web"
nikto -h "$URL1" -ssl -Format txt -output "$DIR/nikto_principal.txt" 2>/dev/null
nikto -h "$URL2" -ssl -Format txt -output "$DIR/nikto_moodle.txt" 2>/dev/null

# --- 5. WPScan (por si hay WordPress) ---
echo -e "\n[5] WPScan - detectar WordPress"
wpscan --url "$URL1" --enumerate vp,vt --no-update 2>/dev/null | tee "$DIR/wpscan_principal.txt"
wpscan --url "$URL2" --enumerate vp,vt --no-update 2>/dev/null | tee "$DIR/wpscan_moodle.txt"

# --- 6. droopescan (Drupal detectado en rcsmm.eu) ---
echo -e "\n[6] droopescan - Drupal scan"
droopescan scan drupal -u "$URL1" --enumerate v 2>/dev/null | tee "$DIR/droopescan_principal.txt"

# --- 7. droopescan (Moodle) ---
echo -e "\n[7] droopescan - Moodle scan"
droopescan scan moodle -u "$URL2" 2>/dev/null | tee "$DIR/droopescan_moodle.txt"

# --- 8. Rutas criticas Moodle ---
echo -e "\n[8] Rutas criticas Moodle"
for path in admin/index.php login/index.php user/index.php install.php upgrade/index.php admin/phpinfo.php admin/registration/register.php admin/tool/phpunit/index.php; do
  code=$(curl -k -s -o /dev/null -w "%{http_code}" -L "$URL2/$path" 2>/dev/null)
  echo "$URL2/$path -> HTTP $code" >> "$DIR/rutas_moodle.txt"
done

# --- 9. Detectar plataforma de pago ---
echo -e "\n[9] Detectar pasarela de pago / plugins"
curl -k -s -L "$URL1" 2>/dev/null | grep -ioP '(redsys|paypal|stripe|bizum|mercadopago|rvp|pasarela|payment)' | sort -u > "$DIR/pasarelas.txt"
echo "[*] Pasarelas detectadas: $(cat "$DIR/pasarelas.txt" 2>/dev/null || echo 'ninguna')"

# --- 10. Robots.txt y sitemap ---
echo -e "\n[10] robots.txt y sitemap"
for url in "$URL1" "$URL2"; do
  name=$(echo "$url" | sed 's/https:\/\///' | sed 's/\///')
  curl -k -s -L "$url/robots.txt" 2>/dev/null > "$DIR/robots_${name}.txt"
  curl -k -s -L "$url/sitemap.xml" 2>/dev/null > "$DIR/sitemap_${name}.txt"
done

echo -e "\n============================================" | tee -a "$DIR/resumen.txt"
echo "[+] Analisis web completado. Archivos en $DIR/"
