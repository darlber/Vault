>Periféricos: conectividad y administración. Elementos de impresión. Elementos de almacenamiento. Elementos de visualización y digitalización.

# 1. Periféricos: concepto y clasificación
Los periféricos son dispositivos externos conectados al ordenador que permiten la comunicación entre el sistema informático y el exterior. Sin ellos, el ordenador no podría interactuar con el usuario ni con otros sistemas. Se clasifican según la dirección del flujo de datos.

## 1.1 Periféricos de entrada
Permiten introducir datos e instrucciones en el ordenador desde el exterior:
- **Teclado**: introduce texto y comandos. Puede ser mecánico (interruptores individuales) o de membrana. Distribuciones: QWERTY, AZERTY, QWERTZ.
- **Ratón** (mouse): dispositivo apuntador que controla el cursor en la interfaz gráfica. Tecnologías: mecánico (bola), óptico (LED/láser). Botones: izquierdo, derecho, rueda de desplazamiento.
- **Escáner**: digitaliza documentos físicos convirtiéndolos en imágenes digitales. Véase sección 5.
- **Micrófono**: captura sonido ambiental para su procesamiento y grabación digital.
- **Cámara web** (webcam): captura video e imágenes en tiempo real. Resolución medida en megapíxeles (MP).
- **Lápiz óptico**: dispositivo apuntador que permite dibujar o seleccionar elementos directamente sobre una superficie sensible.
- **Lector de códigos de barras**: lee códigos de barras (EAN, UPC, QR) mediante un haz láser o cámara.
- **Tableta digitalizadora**: superficie sensible a la presión que permite dibujar con un lápiz stylus. Usada en diseño gráfico y CAD.
- **Escáner de huella dactilar**: lector biométrico para identificación de usuarios.
- **Joystick / gamepad**: dispositivos de control para videojuegos y aplicaciones de simulación.

## 1.2 Periféricos de salida
Muestran o transmiten información procesada al usuario:
- **Monitor** (pantalla): dispositivo de visualización principal. Véase sección 4.
- **Impresora**: produce copias físicas en papel. Véase sección 3.
- **Plotter**: impresora de gran formato para planos técnicos, mapas y diseños CAD. Utiliza plumillas o tecnología de inyección de tinta de gran ancho.
- **Altavoces** (speakers): reproducen señales de audio digital convertidas a analógicas mediante un DAC (Digital-to-Analog Converter).
- **Auriculares**: altavoces personales para uso individual. Pueden ser alámbricos (jack 3,5 mm) o inalámbricos (Bluetooth).
- **Proyector** (cañón): proyecta imágenes en una pantalla o superficie exterior mediante tecnologías LCD, DLP o LCoS.
- **Impresora 3D**: periférico de salida que crea objetos tridimensionales por superposición de capas (fabricación aditiva).

## 1.3 Periféricos mixtos (entrada/salida)
Realizan simultáneamente funciones de entrada y salida:
- **Pantalla táctil** (touch screen): integra entrada táctil y salida visual. Detecta el toque mediante tecnología capacitiva (multitáctil) o resistiva (presión).
- **Impresora multifunción**: combina impresión, escaneado, fotocopiado y fax en un único dispositivo.
- **Tarjeta de red** (NIC - Network Interface Card): permite la comunicación del ordenador con otros equipos a través de una red. Puede ser Ethernet (cableada, conector RJ-45) o Wi-Fi (inalámbrica). Cada tarjeta tiene una dirección MAC única de 48 bits.
- **Módem** (Modulador-Demodulador): convierte señales digitales en analógicas para su transmisión por líneas telefónicas (DSL) o por fibra óptica (ONT).
- **Fax**: dispositivo que escanea un documento (entrada) y lo transmite por línea telefónica, o recibe y lo imprime (salida).

## 1.4 Periféricos de almacenamiento
Almacenan datos de forma permanente o extraíble. También se denominan memorias secundarias o auxiliares. Véase sección 6.

# 2. Conectividad y puertos
## 2.1 Puertos y conectores
Interfaces físicas para la conexión de periféricos al ordenador:

### USB (Universal Serial Bus)
Estándar de conexión en serie más extendido. Permite conexión en caliente (hot plug) y alimentación eléctrica (bus power).

| Versión | Año | Velocidad | Conectores |
|---------|-----|-----------|------------|
| USB 1.1 | 1998 | 12 Mbps | USB-A, USB-B |
| USB 2.0 | 2000 | 480 Mbps | USB-A, USB-B, Mini-USB, Micro-USB |
| USB 3.0 (3.1 Gen 1) | 2008 | 5 Gbps | USB-A (azul), USB-B, Micro-USB 3.0 |
| USB 3.1 (3.1 Gen 2) | 2013 | 10 Gbps | USB-A, USB-C |
| USB 3.2 | 2017 | 10-20 Gbps | USB-C |
| USB4 | 2019 | 20-40 Gbps | USB-C |

- **USB-A**: conector rectangular clásico, usado en anfitriones (hosts).
- **USB-B**: conector cuadrado, usado en periféricos (impresoras, escáneres).
- **USB-C**: conector reversible de 24 pines. Transmite datos, video (DisplayPort Alt Mode) y alimentación (USB Power Delivery hasta 240W).
- **Micro-USB**: usado en dispositivos móviles antiguos.
- **USB On-The-Go (OTG)**: permite que dispositivos móviles actúen como anfitrión USB.

### Conectores de video
- **HDMI** (High-Definition Multimedia Interface): transmite audio y video digital sin comprimir. Versiones: HDMI 1.4 (4K@30Hz), HDMI 2.0 (4K@60Hz), HDMI 2.1 (8K@60Hz, 48 Gbps). Conectores: Tipo A (estándar), Tipo C (mini), Tipo D (micro).
- **DisplayPort**: interfaz de video digital, alternativa a HDMI. Ventaja: mayor ancho de banda y soporte para daisy chain. Versiones: DP 1.2 (4K@60Hz), DP 1.4 (8K@60Hz), DP 2.0 (16K@60Hz). Conector estándar y Mini DisplayPort (usado en Apple).
- **VGA** (Video Graphics Array): conector analógico de 15 pines (DE-15). Obsoleto, aún presente en proyectores antiguos.
- **DVI** (Digital Visual Interface): interfaz de video digital anterior a HDMI. Variantes: DVI-D (digital), DVI-A (analógico), DVI-I (integrado).

### Conectores de red
- **RJ-45**: conector modular de 8 contactos (8P8C) para redes Ethernet (cable de par trenzado Categoría 5e, 6, 6a, 7, 8). Velocidades: Fast Ethernet (100 Mbps), Gigabit Ethernet (1 Gbps), 10 Gigabit Ethernet (10 Gbps).
- **RJ-11**: conector de 6 contactos (6P4C) para línea telefónica (módems DSL, fax).

### Conectores de audio
- **Jack TRS** (Tip-Ring-Sleeve): conector analógico de 3,5 mm. Mono (TS), estéreo (TRS), con micrófono (TRRS). Código de colores: verde (salida estéreo), rosa (micrófono), azul (entrada de línea).
- **RCA** (conector coaxial): usado en audio analógico y video compuesto. Color rojo/blanco (audio), amarillo (video compuesto).

### Otros conectores
- **PS/2**: conector circular de 6 pines para teclado (púrpura) y ratón (verde). Prácticamente en desuso.
- **eSATA**: interfaz externa para discos duros SATA.
- **Thunderbolt**: interfaz de alta velocidad desarrollada por Intel/Apple. Combina PCI Express y DisplayPort. Thunderbolt 3 y 4 usan conector USB-C. Velocidad: hasta 40 Gbps.
- **FireWire** (IEEE 1394): interfaz serie de alta velocidad para video digital. En desuso.

## 2.2 Conectividad inalámbrica
- **Bluetooth**: tecnología inalámbrica de corto alcance (hasta 100 m en BT 5.x) en banda 2,4 GHz. Versiones: BT 2.0 + EDR (3 Mbps), BT 3.0 + HS (24 Mbps), BT 4.0/4.2 (Low Energy), BT 5.0/5.2/5.3 (mayor alcance, velocidad y broadcasting). Perfiles: HID (teclado/ratón), A2DP (audio estéreo), HFP (manos libres), PAN (red personal).
- **Wi-Fi** (IEEE 802.11): red inalámbrica de área local. Estándares: 802.11b (11 Mbps), 802.11g (54 Mbps), 802.11n (Wi-Fi 4, hasta 600 Mbps), 802.11ac (Wi-Fi 5, hasta 3,5 Gbps en 5 GHz), 802.11ax (Wi-Fi 6/6E, hasta 9,6 Gbps, 2,4/5/6 GHz), 802.11be (Wi-Fi 7, hasta 46 Gbps).
- **NFC** (Near Field Communication): comunicación de corto alcance (~10 cm), usada para pagos móviles, emparejamiento rápido y transferencia de datos.
- **Infrarrojos** (IrDA): comunicación óptica de corto alcance mediante LED infrarrojo. En desuso (reemplazado por Bluetooth).
- **Zigbee**: protocolo de baja potencia para IoT (automatización del hogar, sensores).

## 2.3 Administración de periféricos
### Controladores (drivers)
Software que permite al sistema operativo comunicarse con un dispositivo hardware. Traduce las instrucciones genéricas del SO en comandos específicos del dispositivo. Tipos:
- **Controladores nativos**: incluidos en el sistema operativo (plug and play).
- **Controladores del fabricante**: proporcionados por el fabricante del dispositivo, con funcionalidades avanzadas.
- **Controladores genéricos**: funcionalidad básica proporcionada por el SO para dispositivos estándar (HID, almacenamiento masivo USB, impresoras).

### Plug and Play (PnP)
Tecnología que permite al sistema operativo detectar y configurar automáticamente los dispositivos hardware conectados. El sistema asigna automáticamente los recursos necesarios (IRQ, direcciones de E/S, canales DMA) y carga el driver adecuado. Solo es necesario conectar físicamente el dispositivo para que funcione. Introducido por Microsoft a partir de Windows 95; actualmente es un estándar en todos los SO modernos.

### Gestión de dispositivos
- **Windows**: Administrador de dispositivos (devmgmt.msc). Permite ver, actualizar controladores, habilitar/deshabilitar dispositivos, solucionar conflictos de recursos (IRQ, DMA, E/S).
- **Linux**: comandos `lspci`, `lsusb`, `lshw`, `dmesg`. Gestión mediante archivos de dispositivo en `/dev`.
- **Firmware**: software integrado en el dispositivo que controla su funcionamiento básico. Se actualiza mediante procesos de flasheo (firmware update).

# 3. Elementos de impresión
## 3.1 Impresoras
Dispositivo periférico de salida que produce una copia física (en papel u otros soportes) de documentos almacenados en formato electrónico.

### 3.1.1 Clasificación por tecnología de impresión
#### Impresoras de impacto
- **Matricial** (dot matrix): imprime mediante una matriz de agujas que golpean una cinta entintada contra el papel. Ventajas: bajo coste por página, imprime en formularios continuos y multicopias. Desventajas: baja calidad de imagen, ruidosas. Usadas en facturación y entornos industriales. Velocidad: caracteres por segundo (cps).

#### Impresoras de página
- **Láser**: utiliza un tambor fotosensible que se carga electrostáticamente con un láser. El tóner (polvo seco) se adhiere al tambor y se transfiere al papel mediante calor y presión (fusión). Ventajas: alta velocidad, alta calidad de texto, bajo coste por página en alto volumen. Velocidad: páginas por minuto (ppm). Resolución: puntos por pulgada (dpi).
- **LED**: similar a la láser, pero utiliza una matriz de diodos LED en lugar de un láser. Menos piezas móviles, mayor fiabilidad.

#### Impresoras de chorro de tinta (inkjet)
Expulsan gotas de tinta líquida a través de boquillas (inyectores) sobre el papel. Tecnologías:
- **Térmica** (bubble jet): calienta la tinta para crear burbujas que expulsan la gota (Canon, HP).
- **Piezoeléctrica**: un cristal piezoeléctrico se deforma al aplicar voltaje, expulsando la tinta (Epson).
Ventajas: alta calidad de imagen y color, ideal para fotografías. Desventajas: mayor coste por página, cabezales pueden obstruirse.

#### Impresoras de sublimación
Utilizan calor para transferir tinta sólida a estado gaseoso sobre papel especial. Usadas para impresión fotográfica de alta calidad y tarjetas de identificación.

#### Impresoras 3D
Crean objetos tridimensionales por superposición de capas (fabricación aditiva). Tecnologías: FDM (filamento fundido), SLA (resina curada con luz UV), SLS (sinterizado láser de polvo).

### 3.1.2 Parámetros de impresión
- **Resolución**: medida en dpi (dots per inch) o ppp (puntos por pulgada). Indica la densidad de puntos que puede imprimir. Ejemplos: 600×600 dpi (texto), 4800×1200 dpi (fotografía).
- **Velocidad**: medida en ppm (páginas por minuto) para impresoras de página, o cps (caracteres por segundo) para matriciales. Se mide en condiciones estándar (páginas de texto con 5% de cobertura).
- **Ciclo de trabajo**: número máximo de páginas que puede imprimir al mes sin sobrecargarse.
- **Capacidad de papel**: número de hojas que pueden cargarse en las bandejas de entrada.
- **Idiomas de descripción de página**: PCL (HP), PostScript (Adobe), PDF (directo).
- **Conectividad**: USB, Ethernet (red), Wi-Fi, Bluetooth, NFC.

### 3.1.3 Color en impresión
- **Modelo CMYK**: Cian, Magenta, Yellow, Key (negro). Mezcla sustractiva de colores.
- **Modelo RGB**: Rojo, Verde, Azul. Mezcla aditiva, usado en monitores.
- **Tintas**: pigmento (mayor durabilidad) vs. tinte (colores más vivos).
- **Cartuchos**: individuales (un cartucho por color) o combinados (CMYK en uno).

## 3.2 Plóter (plotter)
Impresora de gran formato para planos técnicos, mapas, carteles y diseños CAD. Tipos:
- **Plóter de plumillas**: utiliza plumillas de distintos colores y grosores sobre papel continuo. Típico en arquitectura e ingeniería.
- **Plóter de inyección**: utiliza tecnología inkjet de gran ancho (hasta varios metros). Alta calidad y velocidad.
- **Plóter de corte**: utiliza una cuchilla para cortar vinilo u otros materiales (rotulación, cartelería).

## 3.3 Parámetros comunes de los elementos de impresión
| Parámetro | Descripción | Unidad |
|-----------|-------------|--------|
| Resolución | Densidad de puntos | dpi (dots per inch) |
| Velocidad | Páginas por minuto | ppm |
| Velocidad (matricial) | Caracteres por segundo | cps |
| Tamaño máximo | Formato de papel soportado | A4, A3, A2, A1, A0 |
| Capacidad de papel | Hojas en bandejas | hojas |
| Ciclo de trabajo | Páginas por mes | páginas/mes |

# 4. Elementos de visualización
## 4.1 Monitores
Dispositivo de salida que muestra información gráfica al usuario mediante una pantalla.

### 4.1.1 Tecnologías de pantalla
**CRT (Cathode Ray Tube)**:
Tecnología antigua (tubo de rayos catódicos). Voluminosa, pesada, alto consumo. Imagen mediante haz de electrones que impacta en fósforo. Buen ángulo de visión y reproducción de color. Prácticamente en desuso.

**LCD (Liquid Crystal Display)**:
Pantalla de cristal líquido. Una capa de cristal líquido se alinea mediante campos eléctricos para bloquear o dejar pasar la luz de una retroiluminación (backlight). Tecnologías de panel:
- **TN (Twisted Nematic)**: respuesta rápida (1 ms), bajo coste, pero ángulos de visión limitados y color pobre. Usada en gaming económico.
- **IPS (In-Plane Switching)**: excelente ángulo de visión (178°) y reproducción de color. Respuesta más lenta (4-5 ms). Usada en diseño gráfico y uso general.
- **VA (Vertical Alignment)**: alto contraste (3000:1), buen color, entre TN e IPS en velocidad y ángulo de visión.

**LED (Light Emitting Diode)**:
Variante de LCD que usa retroiluminación LED en lugar de CCFL (fluorescente). Tipos:
- **Edge LED**: LEDs en los bordes de la pantalla. Perfil delgado.
- **Direct LED**: LEDs detrás de toda la pantalla. Mejor control de zonas de atenuación local (local dimming).
- **Mini-LED**: miles de LEDs pequeños para atenuación local precisa. Alto contraste HDR.

**OLED (Organic LED)**:
Cada píxel emite su propia luz (no necesita retroiluminación). Negro absoluto (píxeles apagados), colores vibrantes, alto contraste infinito. Respuesta rápida. Desventajas: burn-in (retención de imagen), menor vida útil. Usada en móviles de gama alta y TVs premium.

### 4.1.2 Parámetros de monitores
| Parámetro | Descripción | Unidad |
|-----------|-------------|--------|
| Resolución | Número de píxeles (ancho × alto) | píxeles |
| Tamaño | Diagonal de la pantalla | pulgadas (") |
| Relación de aspecto | Proporción ancho/alto | 16:9, 16:10, 4:3, 21:9 |
| Frecuencia de refresco | Número de fotogramas por segundo | Hz (75, 144, 240, 360) |
| Tiempo de respuesta | Tiempo en cambiar un píxel de un color a otro | ms (1, 4, 5) |
| Brillo | Luminosidad máxima | cd/m² (nits) |
| Contraste | Relación entre blanco y negro | estático (1000:1) y dinámico |
| Ángulo de visión | Ángulo máximo de visión sin pérdida de color | grados (178°) |
| Gama de color | Espacio de color cubierto | sRGB, DCI-P3, Adobe RGB |
| HDR | Alto rango dinámico | HDR10, Dolby Vision, HLG |

**Resoluciones estándar**:
| Nombre | Resolución | Relación | Uso |
|--------|------------|----------|-----|
| HD (720p) | 1280×720 | 16:9 | Básica |
| Full HD (1080p) | 1920×1080 | 16:9 | Estándar |
| WQHD (1440p) | 2560×1440 | 16:9 | Gaming |
| 4K UHD | 3840×2160 | 16:9 | Alta definición, diseño |
| 5K | 5120×2880 | 16:9 | Profesional |
| 8K UHD | 7680×4320 | 16:9 | Ultra alta definición |

### 4.1.3 Conexiones de video
Véase sección 2.1.

## 4.2 Proyectores
Dispositivo de salida que proyecta imágenes ampliadas sobre una superficie externa (pantalla, pared).
- **LCD** (3LCD): tres paneles LCD (uno por color RGB). Buen brillo y color, pero píxeles visibles (efecto mosquitera). Usado en aulas y oficinas.
- **DLP** (Digital Light Processing): microespejos (DMD) que reflejan la luz. Alto contraste, negros profundos, menor efecto mosquitera. Puede producir efecto arcoíris. Un chip DLP con rueda de color o tres chips.
- **LCoS** (Liquid Crystal on Silicon): hibrido entre LCD reflectivo y DLP. Alta resolución y calidad. Usado en cine en casa de gama alta.

**Parámetros**:
- **Lúmenes ANSI**: brillo del proyector. A mayor luminosidad, mejor visión en ambientes iluminados.
- **Resolución nativa**: resolución real del panel (SVGA, XGA, WXGA, Full HD, 4K).
- **Relación de contraste**: diferencia entre blanco y negro.
- **Relación de proyección** (throw ratio): distancia necesaria para un tamaño de imagen dado.
- **Vida útil de la lámpara**: horas antes de reducir el brillo (LED 20.000 h, láser 30.000 h, lámpara UHP 3.000-5.000 h).

## 4.3 Pantallas táctiles (touch screen)
Tecnologías principales:
- **Capacitiva**: detecta cambios en el campo eléctrico al tocarla con el dedo. Multitáctil, más sensible y duradera. Usada en smartphones y tablets.
- **Resistiva**: dos capas conductoras separadas por un espacio; al presionar, las capas hacen contacto. Permite uso con guantes o stylus. Menor durabilidad.
- **Infrarroja**: matriz de LEDs infrarrojos que detectan interrupción del haz. Robusta, usada en entornos industriales.
- **SAW** (Surface Acoustic Wave): ondas ultrasónicas en la superficie. Alta claridad, pero sensible a contaminación.

# 5. Elementos de digitalización
## 5.1 Escáneres
Dispositivo de entrada que captura imágenes de documentos físicos (papel, fotografías) y las convierte en datos digitales.

### 5.1.1 Tipos de escáner
- **Escáner plano** (flatbed): el documento se coloca sobre una superficie de cristal y un cabezal de exploración se desplaza bajo él. Usado para documentos y fotografías.
- **Escáner de tambor**: el documento se monta en un tambor giratorio y un fotomultiplicador captura la imagen. Alta calidad (hasta 10.000 dpi). Usado en artes gráficas.
- **Escáner de alimentación** (ADF - Automatic Document Feeder): el documento se introduce mediante un alimentador automático. Ideal para gran volumen de documentos. Puede ser a una cara o dúplex.
- **Escáner de mano**: se pasa manualmente sobre el documento. Portátil, pero menor calidad.
- **Escáner de código de barras**: lee códigos de barras mediante haz láser o cámara.

### 5.1.2 Tecnologías de captura
- **CCD** (Charge-Coupled Device): sensor de alta calidad que captura la imagen mediante una matriz de fotodiodos. Mayor profundidad de campo y calidad de color. Usado en escáneres profesionales.
- **CIS** (Contact Image Sensor): sensor de contacto con LEDs integrados. Más delgado, menor consumo, pero menor profundidad de campo y calidad. Usado en escáneres domésticos y portátiles.

### 5.1.3 Parámetros de escaneado
| Parámetro | Descripción | Unidad |
|-----------|-------------|--------|
| Resolución óptica | Resolución real del sensor | dpi (600, 1200, 2400, 4800) |
| Resolución interpolada | Resolución mejorada por software | dpi (9600, 19200) |
| Profundidad de color | Número de bits por píxel | 24 bits (16,7 M colores), 48 bits |
| Densidad óptica (Dmax) | Rango tonal capturable | 0-3.2, 0-3.8 D |
| Velocidad | Páginas por minuto | ppm |
| Capacidad ADF | Número de hojas en alimentador | hojas |
| Tamaño máximo | Formato máximo escaneable | A4, A3, A2 |

## 5.2 OCR (Reconocimiento Óptico de Caracteres)
Tecnología que permite convertir imágenes de texto impreso o manuscrito en datos digitales editables. El proceso consta de dos fases:
1. El escáner captura la imagen del documento.
2. El software OCR analiza las formas de los caracteres, los identifica y los convierte en texto codificado (ASCII/Unicode).

Sus siglas corresponden a **Optical Character Recognition**. Se utiliza en:
- Digitalización de documentos administrativos.
- Escaneado de formularios normalizados.
- Reconocimiento de matrículas de vehículos.
- Digitalización de libros y archivos históricos.
- Procesamiento automático de facturas y albaranes.

La precisión del OCR depende de la calidad de la imagen (resolución, contraste), la claridad de la fuente y la corrección del layout.

## 5.3 Tableta digitalizadora
Dispositivo de entrada compuesto por una superficie plana sensible a la presión y un lápiz stylus. Permite dibujar, pintar y escribir con precisión. Parámetros:
- **Área activa**: superficie útil de dibujo (A6, A5, A4, A3).
- **Niveles de presión**: sensibilidad a la presión del lápiz (2048, 4096, 8192 niveles).
- **Resolución**: líneas por pulgada (lpi) o puntos por mm.
- **Inclinación**: detección del ángulo del lápiz.
- **Report rate**: frecuencia de muestreo (pps - points per second).

Usada en diseño gráfico, ilustración digital, CAD, diseño 3D y edición de fotografía.

# 6. Elementos de almacenamiento
## 6.1 Disco duro (HDD - Hard Disk Drive)
Dispositivo de almacenamiento magnético que utiliza uno o más platos giratorios recubiertos de material magnético y cabezales de lectura/escritura que flotan sobre ellos.

### 6.1.1 Funcionamiento
- **Platos**: discos de aluminio o vidrio recubiertos de material ferromagnético. Giran a velocidad constante (5.400, 7.200, 10.000 o 15.000 RPM).
- **Cabezales**: electroimanes que leen/escriben datos en los platos. Flotan a nanómetros de distancia sobre una lámina de aire.
- **Pista** (track): círculo concéntrico en la superficie del plato.
- **Sector**: unidad mínima de almacenamiento (512 bytes o 4 KB - Advanced Format).
- **Cilindro**: conjunto de pistas de igual radio en todos los platos.
- **Actuador**: brazo que mueve los cabezales sobre los platos.

### 6.1.2 Parámetros
| Parámetro | Descripción |
|-----------|-------------|
| Capacidad | GB o TB (500 GB, 1 TB, 2 TB, 4 TB, 10 TB, 20 TB) |
| Velocidad de giro | RPM (5.400, 7.200, 10.000, 15.000) |
| Tasa de transferencia | MB/s (150-250 MB/s en HDD modernos) |
| Tiempo de acceso | ms (búsqueda + latencia rotacional, ~8-15 ms) |
| Tiempo de búsqueda | ms (movimiento del cabezal a la pista correcta) |
| Latencia rotacional | ms (media vuelta del plato) |
| Caché | MB (16-256 MB) |
| Factor de forma | 3,5" (sobremesa), 2,5" (portátil) |
| Interfaz | SATA, SAS, SCSI, FC |

### 6.1.3 Interfaces de disco
- **SATA** (Serial ATA): interfaz serie estándar para HDD/SSD. Versiones: SATA I (1,5 Gbps), SATA II (3 Gbps), SATA III (6 Gbps).
- **PATA** (Parallel ATA/IDE): interfaz paralela. Obsoleto.
- **SAS** (Serial Attached SCSI): interfaz para servidores y entornos empresariales. Compatible con SATA. Velocidades: 3, 6, 12, 22,5 Gbps.
- **SCSI** (Small Computer System Interface): interfaz paralela para servidores. Obsoleta, reemplazada por SAS.
- **FC** (Fibre Channel): interfaz de alta velocidad para SAN (Storage Area Network), hasta 128 Gbps.

## 6.2 Unidad de estado sólido (SSD)
Dispositivo de almacenamiento basado en memorias flash NAND, sin partes móviles. Más rápido, silencioso, resistente a golpes y con menor consumo que el HDD.

### 6.2.1 Tipos de memoria NAND
- **SLC** (Single-Level Cell): 1 bit por celda. Mayor velocidad, durabilidad y coste. Uso empresarial.
- **MLC** (Multi-Level Cell): 2 bits por celda. Equilibrio velocidad/coste.
- **TLC** (Triple-Level Cell): 3 bits por celda. Mayor densidad, menor coste, menor durabilidad. Uso en consumo.
- **QLC** (Quad-Level Cell): 4 bits por celda. Máxima densidad, menor velocidad y durabilidad. Uso en almacenamiento masivo económico.
- **3D NAND**: celdas apiladas verticalmente para aumentar densidad sin reducir tamaño de celda. Todas las tecnologías actuales.

### 6.2.2 Factores de forma
- **2,5"**: formato tradicional, interfaz SATA.
- **M.2**: formato compacto (22×42/60/80/110 mm). Interfaces: SATA o NVMe (PCI Express).
- **mSATA**: formato mini PCIe. En desuso.
- **U.2**: formato 2,5" con interfaz SAS/NVMe para servidores.
- **NVMe** (Non-Volatile Memory Express): protocolo de comunicación sobre PCI Express. Mayor velocidad que SATA (hasta 7 GB/s vs 550 MB/s). Usa colas de comandos paralelas (64K colas × 64K comandos).

### 6.2.3 Parámetros
| Parámetro | SSD SATA | SSD NVMe |
|-----------|----------|----------|
| Lectura secuencial | ~550 MB/s | 3.500-7.000 MB/s |
| Escritura secuencial | ~520 MB/s | 3.000-6.500 MB/s |
| IOPS lectura aleatoria | ~90.000 | ~1.000.000 |
| Latencia | ~0,1 ms | ~0,02 ms |
| Durabilidad (TBW) | 100-1.500 TB | 200-5.000 TB |

### 6.2.4 Comparativa HDD vs SSD
| Característica | HDD | SSD |
|----------------|-----|-----|
| Velocidad lectura | 150-250 MB/s | 550-7.000 MB/s |
| Latencia | 8-15 ms | 0,02-0,1 ms |
| Capacidad máxima | ~24 TB (2025) | ~15 TB (2025, consumo) |
| Coste por GB | ~0,02 €/GB | ~0,05-0,10 €/GB |
| Ruido | Sí (mecánico) | No |
| Consumo | 6-10 W | 2-5 W |
| Resistencia golpes | Baja | Alta |
| Vida útil | 3-5 años | 5-10 años (depende de escrituras) |

## 6.3 Unidades ópticas
Almacenamiento basado en lectura/escritura mediante láser sobre discos reflectantes.

| Tipo | Capacidad | Láser | Usos |
|------|-----------|-------|------|
| CD-ROM / CD-R / CD-RW | 700 MB | 780 nm (infrarrojo) | Audio, software |
| DVD±R / DVD±RW / DVD-RAM | 4,7 GB (una capa), 8,5 GB (doble capa) | 650 nm (rojo) | Video, datos |
| Blu-ray (BD) | 25 GB (una capa), 50 GB (doble), 100/128 GB (BDXL) | 405 nm (azul-violeta) | Video HD, datos |
| HD DVD | 15 GB (una capa), 30 GB (doble) | 405 nm | Formato competidor (discontinuado) |

**Velocidades**: expresadas como múltiplos de la velocidad base (1× CD = 150 KB/s, 1× DVD = 1.385 KB/s, 1× BD = 4,5 MB/s). Ejemplo: 16× DVD = 22,16 MB/s.

## 6.4 Memoria flash extraíble
- **Memoria USB** (pendrive): almacenamiento flash portátil con conector USB integrado. Capacidades: 8 GB - 2 TB. Velocidad: USB 2.0 (hasta 35 MB/s), USB 3.0 (hasta 400 MB/s).
- **Tarjetas de memoria**: formato compacto usado en cámaras, móviles y tablets. Tipos: SD (Secure Digital), SDHC (2-32 GB), SDXC (32 GB - 2 TB), SDUC (2-128 TB), microSD (versión compacta para móviles), CompactFlash (profesional), Memory Stick (Sony, en desuso).
- **Clases de velocidad SD**: Class 2, 4, 6, 10; UHS-I (U1, U3); UHS-II; Video Speed Class (V6, V10, V30, V60, V90).

## 6.5 Almacenamiento en red
- **NAS** (Network Attached Storage): dispositivo de almacenamiento conectado a la red (Ethernet) que proporciona acceso a archivos a través de protocolos como NFS (Linux/Unix), SMB/CIFS (Windows) o AFP (macOS). Sistema operativo integrado (NAS OS). Configuraciones: 1, 2, 4, 6, 8 bahías. Usa discos SATA/SAS.
- **SAN** (Storage Area Network): red de alta velocidad dedicada exclusivamente al almacenamiento. Utiliza protocolos FC (Fibre Channel), iSCSI (IP), FCoE. Proporciona acceso a nivel de bloque (no de archivo). Usada en centros de datos empresariales.
- **DAS** (Direct Attached Storage): almacenamiento conectado directamente al servidor (no a la red). Interno (discos internos) o externo (cajas de discos por USB, eSATA, Thunderbolt).

## 6.6 RAID (Redundant Array of Independent Disks)
Tecnología que combina múltiples discos en una sola unidad lógica para mejorar el rendimiento, la redundancia o ambos.

| Nivel | Descripción | Mín. discos | Capacidad útil | Tolerancia | Rendimiento |
|-------|-------------|-------------|----------------|------------|-------------|
| **RAID 0** | Striping (datos divididos en bloques entre discos) | 2 | 100% (n×capacidad) | Ninguna | Alta lectura/escritura |
| **RAID 1** | Mirroring (copia idéntica en dos discos) | 2 | 50% (1 disco) | 1 disco | Lectura alta, escritura normal |
| **RAID 5** | Striping con paridad distribuida | 3 | (n-1)/n | 1 disco | Lectura alta, escritura media |
| **RAID 6** | Striping con paridad doble | 4 | (n-2)/n | 2 discos | Lectura alta, escritura baja |
| **RAID 10 (1+0)** | Mirroring + Striping | 4 | 50% (n/2) | 1 por cada mirror | Muy alta |

RAID por hardware (controladora dedicada) vs. RAID por software (SO). RAID no es un sustituto de las copias de seguridad.

## 6.7 Jerarquía de almacenamiento
Clasificación de los tipos de memoria por velocidad, capacidad y coste:
1. **Registros del procesador**: decenas de bytes, velocidad 0,3-0,5 ns.
2. **Caché L1, L2, L3**: KB-MB, velocidad 0,5-10 ns.
3. **RAM (memoria principal)**: GB, velocidad ~50-100 ns.
4. **SSD (almacenamiento primario)**: GB-TB, velocidad ~0,1-7 GB/s.
5. **HDD (almacenamiento masivo)**: TB, velocidad ~150-250 MB/s.
6. **Cinta magnética / almacenamiento en nube**: PB-EB, velocidad baja. Usado para backup y archivado.
