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

# Animaciones View, Drawable y Game Loop en Android
## 5.5.2 View Animations
Permiten aplicar animaciones básicas a las vistas (`View`) como rotación, escala, desplazamiento y transparencia.
### Tipos de animadores:
- `RotateAnimation`: Rota un objeto.
- `ScaleAnimation`: Cambia su tamaño.
- `TranslateAnimation`: Lo mueve por la pantalla.
- `AlphaAnimation`: Cambia su transparencia.
- `Transformation`: Aplica transformaciones personalizadas.
### Tipos de interpoladores:
Controlan el ritmo del cambio:
- `AccelerateDecelerateInterpolator`: Lento - rápido - lento.
- `AccelerateInterpolator`: Lento al inicio, luego acelera.
- `BounceInterpolator`: Rebote al final.
- `CycleInterpolator`: Repetición cíclica.
- `DecelerateInterpolator`: Rápido al inicio, luego se frena.
- `LinearInterpolator`: Cambio uniforme.
---
### 5.5.2.1 Animaciones View en XML
Archivo en `res/anim` que define animaciones combinadas (rotar + mover):

```xml
<set android:shareInterpolator="false" xmlns:android="http://schemas.android.com/apk/res/android">
    <rotate
        android:duration="1600"
        android:fromDegrees="0"
        android:toDegrees="358"
        android:interpolator="@android:anim/linear_interpolator"
        android:pivotX="50%"
        android:pivotY="50%"
        android:repeatCount="infinite"/>
    <translate
        android:duration="10000"
        android:fromXDelta="-1200"
        android:toXDelta="1200"
        android:fromYDelta="0"
        android:toYDelta="40"
        android:repeatMode="reverse"
        android:repeatCount="infinite"/>
</set>
```
---
### 5.5.2.2 Animaciones View en código
Ejemplo de movimiento con `TranslateAnimation` en código:
```java
ImageView imagen = findViewById(R.id.imgPlaneta);
TranslateAnimation animation = new TranslateAnimation(-400.0f, 800.0f, 80.0f, 400.0f);
animation.setDuration(10000);
animation.setRepeatCount(5);
animation.setRepeatMode(2);
imagen.startAnimation(animation);
```
---
## 5.5.3 Drawable Animations
Permiten crear animaciones tipo “película” con varios bitmaps encadenados.
### Definición en XML (`res/drawable/animacion_robot.xml`):
```xml
<animation-list xmlns:android="http://schemas.android.com/apk/res/android"
    android:oneshot="false">
    <item android:drawable="@drawable/robot1" android:duration="200"/>
    ...
    <item android:drawable="@drawable/robot10" android:duration="200"/>
</animation-list>
```
### Código para lanzar la animación:
```java
AnimationDrawable animacion_robot;

@Override
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_main);
    ImageView imgRobot = findViewById(R.id.imgRobot);
    imgRobot.setBackgroundResource(R.drawable.animacion_robot);
    animacion_robot = (AnimationDrawable) imgRobot.getBackground();
    imgRobot.setOnTouchListener(this);
}

@Override
public boolean onTouch(View v, MotionEvent event) {
    if (event.getAction() == MotionEvent.ACTION_DOWN) {
        animacion_robot.start();
        return true;
    }
    return false;
}
```
---
## 5.6 Game Loop: Animación en Tiempo Real
Un bucle de juego se repite constantemente mientras el juego esté activo. Tiene tres fases:
```java
while (JuegoEnEjecución) {
    actualizar();   // cálculos de lógica, físicas, inputs
    renderizar();   // dibuja elementos en pantalla
    dormir();       // sincroniza con el reloj del sistema
}
```
### Detalles clave:
- **Actualizar**: Lógica del juego, entradas del usuario, red, estado del juego.
- **Renderizar**: Dibujo en `Canvas` (usando `View` o `SurfaceView`).
  - `View`: redibuja automáticamente en `onDraw`.
  - `SurfaceView`: usa su propio hilo y es más eficiente para juegos con gráficos dinámicos.
- **Dormir**: Controla el ritmo del bucle para mantener una tasa de FPS (30fps aceptable).
> Saltarse algunos renderizados puede ayudar a mantener el ritmo del juego sin afectar la jugabilidad.
