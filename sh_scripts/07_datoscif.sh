#!/bin/bash
# ============================================================
# 07_datoscif.sh - Busqueda en DatosCif y transparencia
# Uso: bash 07_datoscif.sh
# NOTA: RCSMM es entidad publica, no SL/SA. No aparece en
#       DatosCif. Este script busca datos del organismo
#       en fuentes de transparencia.
# Guarda resultados en resultados/
# ============================================================
DIR="resultados/07_datoscif"
mkdir -p "$DIR"
echo "[+] Buscando datos institucionales del RCSMM"
echo "============================================" | tee "$DIR/resumen.txt"

# --- 1. DatosCif (empresas mercantiles) - el RCSMM NO aparece ---
echo -e "\n[1] DatosCif - Busqueda de RCSMM"
echo "[*] RCSMM es entidad PUBLICA (Consejeria de Educacion, CAM)" | tee -a "$DIR/datoscif.txt"
echo "[*] No tiene CIF de empresa mercantil (no es SL/SA)" | tee -a "$DIR/datoscif.txt"
echo "[*] Su CIF es institucional (entidad de derecho publico)" | tee -a "$DIR/datoscif.txt"

# --- 2. Buscar DatosCif del proveedor CDMON / Future Garden Spain ---
echo -e "\n[2] DatosCif - Proveedor de hosting"
echo "Buscando datos del proveedor (Future Garden Spain / COLT)..." >> "$DIR/datoscif.txt"
curl -s "https://www.datoscif.es/search?q=future+garden+spain" 2>/dev/null | grep -ioP '(CIF|NIF|B[0-9]{8}|raz[oó]n social)[^<]*' | head -10 > "$DIR/datoscif_proveedor.txt"
echo "[*] Datos del proveedor:"
cat "$DIR/datoscif_proveedor.txt" 2>/dev/null || echo "No se encontraron datos en DatosCif"

# --- 3. Portal de Transparencia CAM ---
echo -e "\n[3] Portal de Transparencia - Comunidad de Madrid"
echo "[*] Buscar en: https://www.comunidad.madrid/transparencia/"
cat > "$DIR/transparencia_notas.txt" << 'EOF'
El RCSMM depende de la Consejeria de Educacion, Ciencia y Universidades
de la Comunidad de Madrid. Sus datos se buscan en:

1. Portal de Transparencia CAM:
   https://www.comunidad.madrid/transparencia/
   Buscar: "Real Conservatorio Superior de Musica"

2. Censo de Entidades de la CAM:
   Buscar por CIF: S-2812345-E (formato tipico organismo publico)

3. BORME - No aplica (entidad publica)
   Para informacion de contratacion publica:
   https://contrataciondelestado.es

4. INCIBE - Para brechas de seguridad reportadas:
   https://www.incibe.es

5. AEPD - Para sanciones/brechas:
   https://www.aepd.es
   Buscar resoluciones con "Real Conservatorio Superior de Musica"
EOF
cat "$DIR/transparencia_notas.txt"

# --- 4. Buscar en fuentes de datos abiertos ---
echo -e "\n[4] Datos abiertos - contratacion publica"
curl -s "https://contrataciondelestado.es/sindicacion/sindicacion_643_1435_2.csv" 2>/dev/null | grep -i "conservatorio\|rcsmm" > "$DIR/contratos_rcsmm.csv" 2>/dev/null
echo "[*] Contratos encontrados: $(wc -l < "$DIR/contratos_rcsmm.csv" 2>/dev/null || echo 'No se pudo consultar')"

# --- 5. AEPD - busqueda de sanciones ---
echo -e "\n[5] AEPD - Procedimientos sancionadores"
curl -s "https://www.aepd.es/es/area-de-prensa" 2>/dev/null | grep -i "conservatorio\|rcsmm\|real conservatorio" > "$DIR/aepd_rcsmm.txt" 2>/dev/null
if [ -s "$DIR/aepd_rcsmm.txt" ]; then
  echo "[!] Posibles referencias AEPD encontradas:"
  cat "$DIR/aepd_rcsmm.txt"
else
  echo "[*] Sin resultados directos en AEPD"
fi

# --- 6. Resumen - porque RCSMM no esta en DatosCif ---
echo -e "\n[6] Explicacion legal" | tee -a "$DIR/resumen.txt"
cat >> "$DIR/resumen.txt" << 'EOF'
DATOSCIF Y EL RCSMM:
----------------------
DatosCif (datoscif.es) extrae informacion del BORME (Boletin Oficial
del Registro Mercantil). Solo incluye empresas MERCANTILES:
  - Sociedades Limitadas (SL)
  - Sociedades Anonimas (SA)
  - Sociedades Civiles
  - Autonomos (en ciertos casos)

El RCSMM es un CENTRO PUBLICO de ensenanza dependiente de la
Consejeria de Educacion de la Comunidad de Madrid. Es una entidad
de derecho publico, NO una empresa mercantil.

Su personalidad juridica corresponde a la Administracion Publica:
  - NIF: Formato S-XXXXXXX-X (letra S = Organismo Publico)
  - No tiene CIF de empresa
  - No aparece en el Registro Mercantil
  - No esta en BORME

Para sus datos institucionales acudir a:
  1. Portal de Transparencia de la CAM
  2. Sede electronica del RCSMM
  3. Registro de Entidades del Sector Publico
  4. Contratacion del Estado

DATOS QUE SI ESTAN EN DATOSCIF (si existen):
  - Empresas de servicios contratadas por el RCSMM
  - Empresas de hosting/mantenimiento web
  - Proveedores de servicios informaticos
EOF

echo -e "\n============================================" | tee -a "$DIR/resumen.txt"
echo "[+] Busqueda DatosCif completada. Archivos en $DIR/"
