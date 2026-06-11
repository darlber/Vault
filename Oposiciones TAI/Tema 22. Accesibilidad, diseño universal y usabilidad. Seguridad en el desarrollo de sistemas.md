> Accesibilidad, diseño universal y usabilidad. Acceso y usabilidad de las tecnologías, productos y servicios relacionados con la sociedad de la información. Confidencialidad y disponibilidad de la información en puestos de usuario final. Conceptos de seguridad en el desarrollo de los sistemas.

## 1. Accesibilidad Web

### Concepto
- **Accesibilidad web**: diseño que permite que personas con discapacidad puedan **percibir, entender, navegar e interactuar** con la web.
- Beneficia a todos los usuarios, no solo a personas con discapacidad.

### WAI (Web Accessibility Initiative)
- Iniciativa del **W3C** para mejorar la accesibilidad web.
- Desarrolla las **WCAG** (Web Content Accessibility Guidelines) y las **ATAG** (Authoring Tool Accessibility Guidelines).

### WCAG (Pautas de Accesibilidad para el Contenido Web)
- Versiones: WCAG 1.0 (1999), WCAG 2.0 (2008), WCAG 2.1 (2018), WCAG 2.2 (2023).
- **4 principios fundamentales (POUR)**:
  1. **Perceptible**: la información debe mostrarse de forma que los usuarios puedan percibirla.
  2. **Operable**: los componentes de interfaz deben ser operables (navegables).
  3. **Comprensible**: la información y operaciones deben ser comprensibles.
  4. **Robusto**: el contenido debe ser interpretable por una amplia variedad de agentes de usuario.

### Niveles de conformidad
- **Nivel A** (prioridad 1): mínimo, requisitos básicos.
- **Nivel AA** (prioridad 2): nivel exigido por ley en España (RD 1112/2018 para sector público).
- **Nivel AAA** (prioridad 3): máximo nivel.

### Normativa en España
- **UNE 139803:2012**: requisitos de accesibilidad para contenidos web basados en WCAG 2.0.
- **Real Decreto 1112/2018**: exige nivel **AA** para sedes electrónicas y sitios web del sector público.

### Buenas prácticas de accesibilidad
- Usar **CSS para la maquetación** (separar contenido de presentación).
- Añadir texto **alt** a las imágenes para describir su función.
- Enlaces con **texto que tenga sentido fuera de contexto** (evitar "pinche aquí").
- Evitar información importante en **ventanas emergentes**.
- Usar **migas de pan** (breadcrumbs) para orientación.
- **Diseño líquido** (líquido/fluido) para adaptarse a diferentes tamaños.

### Herramientas de evaluación
- **TAW** (Test de Accesibilidad Web): familia de herramientas para análisis de accesibilidad.
- La evaluación requiere **intervención humana** (no solo herramientas automáticas).

## 2. Diseño Universal (Diseño para Todos)

### Concepto
- **Diseño Universal**: proceso de diseñar productos que puedan ser utilizados por el **rango más amplio de personas**, funcionando en el rango más amplio de situaciones.
- También llamado **Diseño Inclusivo** o **Diseño para Todos**.

### 7 Principios del Diseño Universal (NC State University, 1997)
1. **Uso equitativo**: útil y vendible a personas con diversas capacidades.
2. **Flexibilidad en el uso**: se adapta a un amplio rango de preferencias y capacidades.
3. **Uso simple e intuitivo**: fácil de entender independientemente de la experiencia.
4. **Información perceptible**: comunica efectivamente la información necesaria al usuario.
5. **Tolerancia al error**: minimiza riesgos y consecuencias adversas de acciones accidentales o involuntarias.
6. **Bajo esfuerzo físico**: puede usarse eficientemente con mínimo de fatiga.
7. **Tamaño y espacio para el acceso**: proporciona tamaño y espacio apropiados para el alcance, manipulación y uso.

## 3. Usabilidad

### Concepto (ISO 9241-11)
- **Usabilidad**: grado en que un producto puede ser usado por usuarios específicos para conseguir objetivos específicos con **eficacia**, **eficiencia** y **satisfacción** en un contexto de uso específico.
- Dimensiones:
  - **Eficacia**: los usuarios logran los objetivos.
  - **Eficiencia**: recursos empleados para lograr los objetivos.
  - **Satisfacción**: comodidad y actitud positiva del usuario.

### Relación con accesibilidad
- Accesibilidad y usabilidad están relacionadas pero no son lo mismo.
- Una web accesible suele ser más usable, y viceversa.
- Las sedes electrónicas deben cumplir **principios de accesibilidad y usabilidad** según normativa.

## 4. Seguridad de la Información en Puestos de Usuario

### Tríada CIA (Confidencialidad, Integridad, Disponibilidad)
- **Confidencialidad**: la información no se revela a personas no autorizadas.
- **Integridad**: la información no se modifica sin autorización.
- **Disponibilidad**: la información está accesible cuando se necesita.

### Seguridad en puestos de usuario final
- Control de acceso (contraseñas, autenticación multifactor).
- Protección contra malware (antivirus, firewall).
- Copias de seguridad (backups).
- Cifrado de datos sensibles.
- Actualizaciones de software y parches de seguridad.

## 5. Seguridad en el Desarrollo de Sistemas

### Security by Design
- La seguridad debe aplicarse **desde la fase de requisitos y diseño arquitectónico**, no solo en pruebas o después del despliegue.
- Enfoque **DevSecOps**: integrar seguridad en todo el ciclo de vida del desarrollo.

### OWASP Top 10
- Documento que recoge las **10 vulnerabilidades de seguridad en aplicaciones web más críticas** a nivel mundial.
- Actualizado periódicamente por la **OWASP** (Open Web Application Security Project).
- Ejemplos: inyección SQL, XSS, autenticación rota, exposición de datos sensibles.

### Principios de diseño seguro
- **Defense in depth** (defensa en profundidad): múltiples capas de seguridad.
- **Least privilege** (mínimo privilegio): cada usuario/proceso tiene solo los permisos necesarios.
- **Fail secure** (fallo seguro): ante un error, el sistema debe quedar en estado seguro.
- **Separation of duties** (separación de funciones): ninguna persona tiene control completo.

### Calidad del diseño software
- **Alto acoplamiento** entre módulos → escasa calidad (dificulta mantenimiento y reutilización).
- **Alta cohesión** entre elementos de un módulo → buena calidad (funcionalidad focalizada).
- **QFD** (Quality Function Deployment): metodología usada en ingeniería de calidad para crear productos que se adapten a gustos y necesidades del usuario.
