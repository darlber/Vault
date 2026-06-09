#!/bin/bash
# ============================================================
# run_all.sh - Orquestador: ejecuta todos los scripts
# Uso: bash run_all.sh [opcion]
# Opciones:
#   all   - ejecutar todos (por defecto)
#   dns   - solo 01_dns_subdomain_enum.sh
#   nmap  - solo 02_nmap_port_scan.sh
#   web   - solo 03_web_app_scan.sh
#   srv   - solo 04_service_enum.sh
#   osint - solo 05_shodan_osint.sh
#   vuln  - solo 06_vulns_exploit.sh
#   quick - solo dns + web + osint (los mas rapidos)
# ============================================================
MODO="${1:-all}"
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
REPORTE="$BASE_DIR/resultados/REPORTE_FINAL.txt"
mkdir -p "$BASE_DIR/resultados"

echo "============================================"
echo "  RECOLECCION OSINT - rcsmm.eu"
echo "  Modo: $MODO"
echo "  Inicio: $(date)"
echo "============================================"

TIEMPO_INICIO=$(date +%s)

ejecutar() {
    local SCRIPT="$1"
    local NOMBRE="$2"
    echo ""
    echo "============================================"
    echo "  EJECUTANDO: $NOMBRE"
    echo "  Script: $SCRIPT"
    echo "  Hora: $(date)"
    echo "============================================"
    if [ -f "$BASE_DIR/$SCRIPT" ]; then
        cd "$BASE_DIR"
        bash "$SCRIPT" 2>&1
        echo "[OK] $NOMBRE completado (codigo: $?)"
    else
        echo "[!ERROR] Script no encontrado: $BASE_DIR/$SCRIPT"
    fi
}

# --- EJECUCION SEGUN MODO ---
case "$MODO" in
    all)
        ejecutar "01_dns_subdomain_enum.sh" "01 - DNS Enumeration"
        ejecutar "02_nmap_port_scan.sh" "02 - Nmap Port Scan"
        ejecutar "03_web_app_scan.sh" "03 - Web Application Scan"
        ejecutar "04_service_enum.sh" "04 - Service Enumeration"
        ejecutar "05_shodan_osint.sh" "05 - Shodan + OSINT"
        ejecutar "06_vulns_exploit.sh" "06 - Vulnerability Checks"
        ;;
    dns)
        ejecutar "01_dns_subdomain_enum.sh" "01 - DNS Enumeration"
        ;;
    nmap)
        ejecutar "02_nmap_port_scan.sh" "02 - Nmap Port Scan"
        ;;
    web)
        ejecutar "03_web_app_scan.sh" "03 - Web Application Scan"
        ;;
    srv)
        ejecutar "04_service_enum.sh" "04 - Service Enumeration"
        ;;
    osint)
        ejecutar "05_shodan_osint.sh" "05 - Shodan + OSINT"
        ;;
    vuln)
        ejecutar "06_vulns_exploit.sh" "06 - Vulnerability Checks"
        ;;
    quick)
        ejecutar "01_dns_subdomain_enum.sh" "01 - DNS Enumeration"
        ejecutar "03_web_app_scan.sh" "03 - Web Application Scan"
        ejecutar "05_shodan_osint.sh" "05 - Shodan + OSINT"
        ;;
    *)
        echo "[!] Modo no reconocido: $MODO"
        echo "Opciones: all, dns, nmap, web, srv, osint, vuln, quick"
        exit 1
        ;;
esac

TIEMPO_FIN=$(date +%s)
DURACION=$((TIEMPO_FIN - TIEMPO_INICIO))

# --- GENERAR REPORTE FINAL ---
echo ""
echo "============================================"
echo "  GENERANDO REPORTE FINAL..."
echo "============================================"

cat > "$REPORTE" << EOF
============================================================
 REPORTE FINAL DE RECOLECCION - rcsmm.eu
 Generado: $(date)
 Duracion total: ${DURACION}s
 Modo: $MODO
============================================================

OBJETIVOS PRINCIPALES:
  Dominio: rcsmm.eu
  IP principal: 62.97.84.197 (Future Garden Spain / COLT AS8220)
  IP servidor:  213.172.39.24 (Servytec - Moodle, Mail, DNS, FTP, etc.)

SUBDOMINIOS CONFIRMADOS:
  rcsmm.eu -> 62.97.84.197 (Apache 80/443)
  www.rcsmm.eu -> 62.97.84.197
  moodle.rcsmm.eu -> 213.172.39.24 (Moodle 2.7 EOL, PHP 5.6.38)
  mail.rcsmm.eu -> 213.172.39.24 (Postfix, Dovecot, Pure-FTPd)

SERVICIOS EN 213.172.39.24 (17 puertos):
  11(systat), 21(FTP), 25(SMTP), 26, 53(DNS), 80(HTTP), 110(POP3),
  111(RPC), 119(NNTP), 143(IMAP), 443(HTTPS), 465(SMTPS), 587(SUBMISSION),
  993(IMAPS), 995(POP3S), 12000, 31337

27 CVEs DETECTADAS POR SHODAN (PHP 5.6.38 EOL):
  Ver resultados/06_vulns/searchsploit_results.txt

DIRECTORIO DE RESULTADOS:
  resultados/
  ├── 01_dns/          - Subdominios, WHOIS, DNS records
  ├── 02_nmap/         - Escaneos de puertos
  ├── 03_web/          - WhatWeb, nikto, gobuster, headers
  ├── 04_servicios/    - FTP, SMTP, POP3, IMAP, RPC, NNTP, etc.
  ├── 05_shodan_osint/ - Shodan, Wayback, theHarvester
  └── 06_vulns/        - Searchsploit, exploits, SSL tests

ARCHIVOS IMPORTANTES:
  - resultados/03_web/nikto_*.txt        - Nikto vulnerability scan
  - resultados/03_web/gobuster_*.txt     - Directory enumeration
  - resultados/03_web/whatweb_*.txt      - Technology fingerprinting
  - resultados/04_servicios/ftp_*.txt    - FTP access
  - resultados/04_servicios/smtp_*.txt   - SMTP user enumeration
  - resultados/06_vulns/searchsploit_results.txt - Available exploits
  - resultados/06_vulns/moodle_users.txt - Moodle users found
  - resultados/06_vulns/phpinfo_output.txt (if accessible)

NOTAS IMPORTANTES:
  - PHP 5.6.38 es END OF LIFE desde Dic 2018
  - Moodle 2.7 es END OF LIFE desde Nov 2015
  - Moodle tiene registro abierto (/user/register) verificado
  - Drupal 9.5.11 es END OF LIFE desde Nov 2023
  - Puerto 31337 = "elite" en hacker leet speak
============================================================
EOF

echo "[OK] Reporte generado: $REPORTE"
echo ""
echo "============================================"
echo "  RECOLECCION COMPLETADA"
echo "  Duracion: ${DURACION}s"
echo "  Resultados en: $BASE_DIR/resultados/"
echo "  Reporte: $REPORTE"
echo "============================================"
