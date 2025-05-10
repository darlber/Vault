# Desarrollo de Videojuegos en Android
## Herramientas de Android para Gráficos y Animación

- **Canvas**: Permite dibujar en una superficie de forma personalizada (líneas, textos, bitmaps, etc.).
- **Animators**: Sistema de animación basado en propiedades y estilos predefinidos.
- **Drawable Animation**: Muestra imágenes en secuencia como una animación.
- **Drawables**: Librería para representar formas e imágenes 2D.
- **OpenGL**: Librería multiplataforma para gráficos 3D de alto rendimiento.
## Arquitectura Propuesta
- **Game Loop (Bucle de Juego)**: Ciclo central que:
  - Recibe eventos de usuario.
  - Procesa lógica del juego.
  - Genera salidas visuales (animación) y sonoras.
- **Lógica del videojuego**: Componente principal que decide qué animaciones o sonidos ejecutar.
## Sonido
- Se maneja dentro del game loop usando el framework de Android para reproducir efectos en tiempo real.
## Canvas de Android
- Se utiliza para gráficos dinámicos.
- Basado en coordenadas `(x, y)` y una superficie de dibujo asociada a un `Bitmap`.
### Elementos necesarios para dibujar:
1. Coordenadas (x, y)
2. Primitiva de dibujo (`Rect`, `Text`, `Bitmap`, etc.)
3. Objeto `Paint` (define color y estilo)
### Sistema de Coordenadas
- `(0,0)` es la esquina superior izquierda.
- `(x_max, y_max)` es la inferior derecha (obtenido vía `Display` y `Point`).
### Métodos principales de `Canvas`:
- `drawARGB(a, r, g, b)` – Rellenar canvas con color.
- `drawArc(...)` – Dibujar arcos.
- `drawBitmap(...)` – Dibujar imágenes.
- `drawCircle(...)` – Dibujar círculos.
- `drawLine(...)`, `drawLines(...)` – Dibujar líneas.
- `drawOval(...)` – Dibujar óvalos.
- `drawPath(...)` – Dibujar rutas.
- `drawPicture(...)` – Dibujar imágenes desde objetos `Picture`.
- `drawPoint(...)`, `drawPoints(...)` – Dibujar puntos.
- `drawRect(...)` – Dibujar rectángulos.
- `drawRoundRect(...)` – Rectángulos con esquinas redondeadas.
- `drawText(...)` – Dibujar texto.
- `drawTextOnPath(...)` – Dibujar texto siguiendo una ruta.
### Ejemplo de método `render(Canvas canvas)`:

```java
public void render(Canvas canvas) {
    Paint myPaint = new Paint();
    myPaint.setStyle(Paint.Style.STROKE);
    canvas.drawColor(Color.RED); // Rellenar fondo
    Bitmap bmp = BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher);
    canvas.drawBitmap(bmp, 500, 500, null); // Dibujar imagen

    myPaint.setStrokeWidth(10);
    myPaint.setColor(Color.BLUE);
    canvas.drawRect(450, 450, 300, 300, myPaint); // Rectángulo

    RectF rectF = new RectF(50, 20, 200, 120);
    canvas.drawOval(rectF, myPaint); // Óvalo
    canvas.drawArc(rectF, 90, 45, true, myPaint); // Arco

    myPaint.setStyle(Paint.Style.FILL);
    myPaint.setTextSize(100);
    canvas.drawText("Aquí un texto", 50, 200, myPaint); // Texto
}
```
#  Dibujables y Framework de Animaciones en Android
## 5.4 Dibujables (Drawables)
- **Drawable**: Abstracción para cualquier elemento que pueda ser dibujado (imágenes, formas, etc.).
- **Formatos soportados**:
  - `.png` (preferido)
  - `.jpg` (aceptable)
  - `.gif` (desaconsejado)
### Sprites
- Imágenes con fondo transparente, usadas para integrarse visualmente en escenas.
- Solo se dibujan los píxeles no transparentes.
- Se crean con herramientas como **GIMP**:
  - Editor gráfico open-source.
  - Soporta creación de transparencias esenciales para sprites.
## 5.5 Framework de Animaciones de Android
- Permite crear animaciones complejas sin necesidad de conocimientos avanzados de física o matemáticas.
- Se usa principalmente la clase `Animation` y `AnimationSet`.
- Tipos de animaciones:
  - **Property Animations**
  - **View Animations**
  - **Drawable Animations**
### 5.5.1 Property Animations
- Introducidas en API nivel 11.
- Permiten animar propiedades de cualquier objeto (`View`, botones, etc.).
- Ejemplo: Trasladar y desvanecer (fade in) un botón simultáneamente.
```java
public void AnimacionBoton(){
    AnimatorSet animadorBoton = new AnimatorSet();

    // Traslada desde -800px hasta la posición original
    ObjectAnimator trasladar = ObjectAnimator.ofFloat(botonJuego, "translationX", -800, 0);
    trasladar.setDuration(5000); // duración 5 segundos

    // Efecto fade in de 0 a 1 (transparente a opaco)
    ObjectAnimator fade = ObjectAnimator.ofFloat(botonJuego, "alpha", 0f, 1f);
    fade.setDuration(8000); // duración 8 segundos

    // Ejecutar ambas animaciones simultáneamente
    animadorBoton.play(trasladar).with(fade);

    // Iniciar la animación
    animadorBoton.start();
}
```
