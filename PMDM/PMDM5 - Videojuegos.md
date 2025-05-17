# 5. 1Desarrollo de Videojuegos en Android

- **Canvas**: Permite dibujar en una superficie de forma personalizada (líneas, textos, bitmaps, etc.).
- **Animators**: Sistema de animación basado en propiedades y estilos predefinidos.
- **Drawable Animation**: Muestra imágenes en secuencia como una animación.
- **Drawables**: Librería para representar formas e imágenes 2D.
- **OpenGL**: Librería multiplataforma para gráficos 3D de alto rendimiento.
# 5.2 Arquitectura Propuesta
- **Game Loop (Bucle de Juego)**: Ciclo central que:
  - Recibe eventos de usuario.
  - Procesa lógica del juego.
  - Genera salidas visuales (animación) y sonoras.
- **Lógica del videojuego**: Componente principal que decide qué animaciones o sonidos ejecutar.
## Sonido
- Se maneja dentro del game loop usando el framework de Android para reproducir efectos en tiempo real.
# 5.3 Canvas de Android
- Se utiliza para gráficos dinámicos.
- Basado en coordenadas `(x, y)` y una superficie de dibujo asociada a un `Bitmap`.
## Elementos necesarios para dibujar:
1. Coordenadas (x, y)
2. Primitiva de dibujo (`Rect`, `Text`, `Bitmap`, etc.)
3. Objeto `Paint` (define color y estilo)
## Sistema de Coordenadas
- `(0,0)` es la esquina superior izquierda.
- `(x_max, y_max)` es la inferior derecha (obtenido vía `Display` y `Point`).
## Métodos principales de `Canvas`:
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
# 5.4 Dibujables (Drawables)
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
# 5.5 Framework de Animaciones de Android
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
# 5.6 Game Loop: Animación en Tiempo Real
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

# 5.7 La Interacción con el Jugador
- La interacción se gestiona vía eventos táctiles (`Touch`) y gestos.
- Ciclo de Touch: `dispatchTouchEvent` → `onInterceptTouchEvent` → `onTouchEvent`.
## 5.7.1 Eventos Touch
1. **Dispatch**: Recorre hijos de la actividad para procesar el toque.  
2. **Intercept**: Decide si un hijo procesa el evento.  
3. **Callback**: `onTouchEvent` maneja la lógica final (tipo de acción y coordenadas).
### Acciones de `MotionEvent`:
- `ACTION_DOWN`: Inicio del toque.  
- `ACTION_MOVE`: Movimiento tras el toque.  
- `ACTION_UP`: Fin del toque.  
- `ACTION_CANCEL`: Gesto abortado.
### Ejemplo básico de `onTouch` en `SurfaceView`:
```java
public class Juego extends SurfaceView implements SurfaceHolder.Callback, OnTouchListener {
    int touchX, touchY;
    boolean hayToque = false;

    public Juego(Context ctx) {
        super(ctx);
        setOnTouchListener(this);
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (hayToque) {
            canvas.drawCircle(touchX, touchY, 20, myPaint);
        }
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN: hayToque = true; break;
            case MotionEvent.ACTION_UP:   hayToque = false; break;
        }
        touchX = (int) event.getX();
        touchY = (int) event.getY();
        return true;
    }
}
```
## 5.7.2 Eventos Multitouch
- Cada dedo es un **pointer** (x, y, id, index).  
- Eventos:
  - Primer dedo: `ACTION_DOWN`  
  - Dedos adicionales: `ACTION_POINTER_DOWN`  
  - Movimiento: `ACTION_MOVE`  
  - Dedo suelto: `ACTION_POINTER_UP`  
  - Último dedo suelto: `ACTION_UP`  
### Claves:
- `event.getPointerCount()` para contar toques.  
- `MotionEventCompat.getActionIndex(event)` para obtener índice.  
- `MotionEventCompat.getX/Y(event, index)` para coordenadas.
### Ejemplo de manejo multitouch:
```java
public class Toque { int index, x, y; Toque(int i, int x, int y){...} }
private ArrayList<Toque> toques = new ArrayList<>();

@Override
public boolean onTouch(View v, MotionEvent event) {
    int index = MotionEventCompat.getActionIndex(event);
    switch (event.getActionMasked()) {
        case ACTION_DOWN:
        case ACTION_POINTER_DOWN:
            int x = (int) MotionEventCompat.getX(event, index);
            int y = (int) MotionEventCompat.getY(event, index);
            toques.add(new Toque(index, x, y));
            break;
        case ACTION_POINTER_UP:
        case ACTION_UP:
            toques.removeIf(t -> t.index == index);
            break;
    }
    hayToque = !toques.isEmpty();
    return true;
}

public void render(Canvas canvas) {
    if (hayToque) {
        synchronized(this) {
            for (Toque t : toques) {
                canvas.drawCircle(t.x, t.y, 100, myPaint);
                canvas.drawText(String.valueOf(t.index), t.x, t.y, myPaint2);
            }
        }
    }
}
```
## 5.7.3 Gestos (Gestures)
- Se usan **GestureDetector** y sus listeners:
  - **OnGestureListener**:
    - `onDown`, `onSingleTapUp`, `onFling`, `onLongPress`, `onScroll`, `onShowPress`
  - **OnDoubleTapListener**:
    - `onDoubleTap`, `onDoubleTapEvent`, `onSingleTapConfirmed`
### Uso en `onTouchEvent`:
```java
@Override
public boolean onTouchEvent(MotionEvent event) {
    return detectorGestos.onTouchEvent(event);
}
```
### Ejemplo de `SimpleOnGestureListener`:
```java
private class ControladorGestos extends GestureDetector.SimpleOnGestureListener {
    @Override public boolean onDown(MotionEvent e) { Log.i(TAG,"onDown"); return true; }
    @Override public void onLongPress(MotionEvent e) { Log.i(TAG,"onLongPress"); }
    @Override public boolean onScroll(MotionEvent e1, MotionEvent e2, float dx, float dy) {
        Log.i(TAG,"onScroll"); return false;
    }
    @Override public boolean onSingleTapUp(MotionEvent e) { Log.i(TAG,"onSingleTapUp"); return true; }
    @Override public boolean onFling(MotionEvent e1, MotionEvent e2, float vx, float vy) {
        Log.i(TAG,"onFling"); return false;
    }
}
```
# 5.8 Videojuegos
## 5.8.2 El Modo de Pantalla
- **Orientación fija**  
  - `android:screenOrientation="portrait"` o `"landscape"` en el manifiesto.
- **Multi‑orientación**  
  - Añadir `android:configChanges="orientation"` y gestionar cambios en  
    ```java
    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        // Guardar estado y recalcular coordenadas
    }
    ```
- **Pantalla completa (Immersive Full‑Screen)**  
  - Llamar a `hideSystemUI()` en `onCreate`:
    ```java
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        j = new Juego(this);
        hideSystemUI();
        setContentView(j);
    }

    private void hideSystemUI() {
        j.setSystemUiVisibility(
            View.SYSTEM_UI_FLAG_LAYOUT_STABLE
            | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
            | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
            | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
            | View.SYSTEM_UI_FLAG_FULLSCREEN
            | View.SYSTEM_UI_FLAG_IMMERSIVE);
    }
    ```
- **Calcular tamaño de pantalla**  
  ```java
  public int AltoPantalla, AnchoPantalla;
  public void calculaTamañoPantalla() {
      Display display = actividad.getWindowManager().getDefaultDisplay();
      Point size = new Point();
      display.getSize(size);
      AnchoPantalla = size.x;
      AltoPantalla  = size.y;
  }
  ```
- **Escalar bitmaps**  
  ```java
  Bitmap imagen = BitmapFactory.decodeResource(getResources(), R.drawable.imagen);
  Bitmap imagen_escalada = Bitmap.createScaledBitmap(
      imagen, AnchoPantalla, AltoPantalla, true);
  ```
## 5.8.4 El Escenario
1. **Declarar variables**  
    ```java
    private static final int MAX_IMAGENES_FONDO = 6;
    Bitmap imagenes[] = new Bitmap[MAX_IMAGENES_FONDO];
    int recursos_imagenes[] = {
        R.drawable.bg1, R.drawable.bg2, R.drawable.bg3,
        R.drawable.bg4, R.drawable.bg5, R.drawable.bg6
    };
    int yImgActual = 0, yImgSiguiente = -AltoPantalla;
    int img_actual = 0, img_siguiente = 1;
    ```
2. **Cargar y escalar fondos**  
    ```java
    public void cargaBackground() {
        for (int i = 0; i < MAX_IMAGENES_FONDO; i++) {
            Bitmap fondo = BitmapFactory.decodeResource(
                getResources(), recursos_imagenes[i]);
            imagenes[i] = Bitmap.createScaledBitmap(
                fondo, AnchoPantalla, AltoPantalla, true);
        }
    }
    ```
3. **Actualizar fondo en el game loop**  
    ```java
    public void actualiza_fondo() {
        yImgActual++;
        yImgSiguiente++;
        if (yImgActual > AltoPantalla) {
            img_actual   = (img_actual + 1)   % MAX_IMAGENES_FONDO;
            img_siguiente = (img_siguiente + 1) % MAX_IMAGENES_FONDO;
            yImgActual    = 0;
            yImgSiguiente = -AltoPantalla;
        }
    }
    ```
4. **Renderizar fondo**  
    ```java
    canvas.drawBitmap(imagenes[img_actual],   0, yImgActual,   null);
    canvas.drawBitmap(imagenes[img_siguiente],0, yImgSiguiente,null);
    ```
## 5.8.14 Libera Recursos

```java
public void fin() {
    bucle.fin();
    mediaPlayer.release();
    for (Bitmap bmp : imagenes) bmp.recycle();
    nave.recycle();
    enemigo_listo.recycle();
    enemigo_tonto.recycle();
    disparo.recycle();
}

@Override
public void surfaceDestroyed(SurfaceHolder holder) {
    boolean retry = true;
    while (retry) {
        try {
            fin();
            bucle.join();
            retry = false;
        } catch (InterruptedException e) { }
    }
}
```
---
## 5.9 Motores para Videojuegos
- **2D**: Cocos2d (open source).  
- **3D**: Unity (motor líder en el mercado).
[[PMDM6 - Sensores]]