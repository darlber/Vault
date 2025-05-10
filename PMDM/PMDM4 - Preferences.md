# Preferences
```java
SharedPreferences misPreferencias = getSharedPreferences("prefs", MODE_PRIVATE);
```
- Prefs es el nombre. Ilimitado.
- Mode_Private. Modo de creación. Solo se puede desde la propia aplicación. Existen otros dos modos (_MODE_WORLD_READABLE_ y _MODE_WORLD_WRITEABLE_), los cuales son totalmente desaconsejados debido a los problemas de seguridad que puedan provocar.
Ejemplo:
```java
editor.putString("nombre", “Raistlin”);
editor.putString("apellidos", “Majere”);
editor.putInt("edad", 36);
editor.putBoolean(“estaVivo”, true);
```
Para aplicar los cambios:

```java
editor.apply();
//o 
editor.commit();
```

Recoger prefs:

```java
String nombre = misPreferencias.getString("nombre", "en blanco");
String apellidos = misPreferencias.getString("apellidos", "en blanco");
int edad = misPreferencias.getInt("edad", 0);
boolean estaVivo = misPreferencias.getBoolean(“estaVivo”, true);
```

# Crear Preference Screens (deprecated):
## Paso 1. Crear XML dentro de res/xml
Al fichero lo hemos llamado _preferencias.xml_, y su contenido será el siguiente:
```xml
<?xml version="1.0" encoding="utf-8"?>
<PreferenceScreen xmlns:android="http://schemas.android.com/apk/res/android">
    <EditTextPreference
        android:key="nickname"
        android:title="Nickname"
        android:summary="Tan solo escribe tu apodo">
    </EditTextPreference>
    <CheckBoxPreference
        android:key="gustanSuperheroes"
        android:title="¿Te gustan los superheroes?"
        android:summary="Para gustos los colores"
        android:defaultValue="true">
    </CheckBoxPreference>
</PreferenceScreen>
```
## Paso 2. Crear una nueva actividad
En el paso anterior hemos definido la estructura de nuestras preferencias. Ahora tenemos que crear una nueva actividad, la cual será invocada cada vez que el usuario quiera editar las preferencias de nuestra aplicación.
```java
public class MisPreferencias extends PreferenceActivity {
}
```
==Declararlo en el AndroidManifest.xml==
```xml
<activity
	android:name="org.example.package.Class"
	android:label="MisPreferencias">
</activity
```

## Paso 3. Cargar el layout (o interfaz) definido en _res/xml/preferencias.xml
```java
 public class MisPreferencias extends PreferenceActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
       //setContentView(R.layout.activity_mis_preferencias);
       
        addPreferencesFromResource(R.xml.preferencias);
    }
```

## Paso 4. Lanzar el *Intent*
```java
public void editarPreferencias(View view){
        startActivity(new Intent(this, MisPreferencias.class));
    }
```

## Paso 5. Debug
# Preference Fragment
A partir de Android 3.0, la clase que hereda de _PreferenceActivity_ carga unas cabeceras (_headers_), las cuales apuntan a subclases de _PreferenceFragment_ que son las encargadas de mostrar las preferencias en la pantalla.

_Preference Headers_ son unos niveles de agrupación superiores, que permiten una más clara y mejor visualización de las preferencias.

Para definir _Preference Headers_ hay que crear un fichero de recursos XML en el directorio _res/xml_. En nuestro ejemplo lo llamaremos _preferences_headers.xml_, y su contenido será:

```xml
<?xml version="1.0" encoding="utf-8"?>
<preference-headers xmlns:android="http://schemas.android.com/apk/res/android">
    <header
		android:fragment="com.mmc.preferencefragment01.DatosPersonales"
        android:icon="@drawable/datos_personales"
        android:title="Datos personales"
        android:summary="No es por cotillear, tan solo necesitamos tus datos" />
    <header
        android:fragment="com.mmc.preferencefragment01.PersonajesFavoritos"
        android:icon="@drawable/personajes_favoritos"
        android:title="Personajes favoritos"
        android:summary="¿Cuáles son tus personajes ficticios favoritos?" />
    <header
        android:fragment="com.mmc.preferencefragment01.Aficiones"
        android:icon="@drawable/aficiones"
        android:title="Aficiones"
        android:summary="¿Cuáles son tus aficiones?" />
</preference-headers>
```

```java
public class MisFragmentPreferencias extends PreferenceActivity {
    @Override
    public void onBuildHeaders(List<Header> target) {
        super.onBuildHeaders(target);
        loadHeadersFromResource(R.xml.preference_headers, target);
    }
```
# Ficheros estáticos
Para empezar se debe añadir el fichero como un recurso (_res/raw_)

Conseguir el acceso al fichero es sencillo, tan solo necesitamos un objeto de la clase _InputStream_:

```java
Resources r = getResources();
InputStream in = r.openRawResource(R.raw.palabras);
```
# Clase MediaPlayer
Estados de reproducción:
1. Idle
2. **_initialized:_** Inicialización del reproductor (Media Player) con contenido para reproducir 
3. **_prepared:_** Preparación del Media Player 
4. **_started:_** Comienzo de la reproducción 
5. **_pause_** or **_stop:_** Pausa o parada de la reproducción 
6. _**completed:**_ La reproducción se ha completado
## Inicialización del reproductor
Primero hay que pasar por el estado **_Idle_**, para ello basta con crear un objeto de la clase _MediaPlayer_:
```java
MediaPlayer mediaPlayer = new MediaPlayer();
```
A continuación debemos pasar al estado **_Initialized_**:
```java
mediaPlayer.setDataSource();
```
## Preparación
```java
mediaPlayer.prepare();
```
## Control
```java
mediaPlayer.start();
mediaPlayer.pause();
mediaPlayer.stop();
```
## Finalización
```java
mediaPlayer.release();
```
### Ejemplo
Usaremos la propiedad _onClick_ del widget Button para invocar los distintos métodos.
```xml
<Button
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/play"
        android:id="@+id/playButton"
        android:onClick="play"
        android:layout_alignParentTop="true"
        android:layout_alignParentStart="true" />
```

```java
public class MainActivity extends Activity{
    MediaPlayer mediaPlayer;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mediaPlayer = MediaPlayer.create(this, R.raw.adrenalina);
    }
```

```java
public void play(View view){
        TextView t = (TextView) findViewById(R.id.textView);
        if (mediaPlayer.isPlaying()){
            t.setText("Ya estás escuchando música, ¿qué más quieres chaval?");
        }
        else {
            mediaPlayer.start();
            t.setText("Tu MP está parado, tranqui que le hago un start()");
        }
    }
public void pause(View view){
        TextView t = (TextView) findViewById(R.id.textView);
        if (mediaPlayer.isPlaying()) {
            mediaPlayer.pause();
            t.setText("Acabas de pausar tu MP");
        }
        else {
            t.setText("Tu MP no está en ejecución, luego no lo puedes pausar");
        }
    }
```

```java
public void stop(View view) throws IOException {
        TextView t = (TextView) findViewById(R.id.textView);
        if (mediaPlayer!=null && mediaPlayer.isPlaying()) {
            mediaPlayer.stop();
            try {
                mediaPlayer.prepare();
                t.setText("La música estaba sonando pero acabas de hacer un stop() y un prepare() a tu MP");
            } catch (IOException e) {
                e.printStackTrace();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            }
        }
        else {
            t.setText("La música no suena, el MP está parado, ¿por qué haces un stop()?");
        }
    }
```
# MediaController
`MediaController mediaController = new MediaController(_Context context_);`

Si queremos usar MediaController con la clase MediaPlayer, tenemos que implementar el interfaz _MediaController.MediaPlayerControl_. Los métodos que tendremos que implementar son:

```java
public boolean canPause() { }

public boolean canSeekBackward() { }

public boolean canSeekForward() { }

public int getAudioSessionId() { }

public int getBufferPercentage() { }

public int getCurrentPosition() { }

public int getDuration() { }

public boolean isPlaying() { }

public void pause() { }

public void seekTo(int pos) { }

public void start() { }

// Especificar la parte gráfica del mediacontroller
mediaController.setMediaPlayer(MediaController.MediaPlayerControl player)
mediaController.setAnchorView(View view);
mediaController.show(int timeout);
```

# Reproducción de video
1. VideoView
2. SurfaceView

Comenzamos declarando las variables de las clases VideoView y MediaController:

```java
public class MainActivity extends Activity {
       VideoView videoView;
       MediaController mediaController;                    
```

Dentro del método _onCreate():_

```java
@Override
protected void onCreate(Bundle savedInstanceState) {
super.onCreate(savedInstanceState);
setContentView(R.layout.activity_main);
       // Obtenemos la referencia al widget VideoView
videoView = (VideoView) findViewById(R.id.videoView);
// Creamos el objeto MediaController
mediaController = new MediaController(this);
// Establecemos el ancho del MediaController
mediaController.setAnchorView(videoView);
// Al contenedor VideoView le añadimos los controles
videoView.setMediaController(mediaController);
// Cargamos el contenido multimedia (el vídeo) en el VideoView
videoView.setVideoURI(Uri.parse("android.resource://" + getPackageName() + "/" + R.raw.magia));
// Registramos el callback que será invocado cuando el vídeo esté cargado y
// preparado para la reproducción
videoView.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
@Override
             public void onPrepared(MediaPlayer mp) {
                    mediaController.show(10000);
                    videoView.start();
             }
       });
 }
```
 
Y para terminar programamos el método _onTouchEvent()_, para que se muestre el MediaControl cuando el usuario pulse en la pantalla:

```java
@Override
public boolean onTouchEvent(MotionEvent event) {
       mediaController.show();
       return false;
}
```

Merece especial atención el uso que se ha hecho del método _setVideoURI()_ para cargar el contenido a reproducir:

```java
videoView.setVideoURI(Uri.parse("android.resource://" + getPackageName() + "/" + R.raw.magia));
```

- Mediante un string se indica el recurso:  (“android.resource://" + getPackageName() + "/" + R.raw.magia)
- Con el método _Uri.parse()_ se convierte ese string a un objeto de la clase _Uri_, que es lo que espera el método _setVideoURI()_.
# Streaming
Incluimos el permiso en el Manifest.

`<uses-permission android:name="android.permission.INTERNET"/>`

Y lo segundo y último, es modificar el origen del contenido a reproducir:

a)  En el ejemplo _VideoView_, tendríamos que cambiar la línea:

`videoView.setVideoURI(Uri.parse("android.resource://" + getPackageName() + "/" + R.raw.magia));`

Por:

`videoView.setVideoURI(Uri.parse("http://mim.zz.mu/ut4_multimedia/magia.webm"));`

b)  Y en el ejemplo _MediaPlayer05_, cambiamos la línea:

`mediaPlayer.setDataSource(this, Uri.parse("android.resource://" + getPackageName() + "/" + R.raw.metodo_para_escapar));`

Por:

`mediaPlayer.setDataSource(this, Uri.parse("http://mim.zz.mu/ut4_multimedia/cirujano/04_aire.ogg"));`

# Fotos
1. Usar un _intent_, delegando a la aplicación nativa de Android todo el trabajo sucio.
2. Programar nosotros mismos una aplicación que controle directamente la cámara de fotos.

```java
static final CAPTURA_IMAGEN = 1;
private void hacerFoto(){
        Intent hacerFotoIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
        if (hacerFotoIntent.resolveActivity(getPackageManager()) != null) {
            startActivityForResult(hacerFotoIntent, CAPTURA_IMAGEN);
        }
}
```

## Thumbnail
```java
@Override

protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == CAPTURA_IMAGEN_THUMBNAIL && resultCode == RESULT_OK) {
            Bundle extras = data.getExtras();
            Bitmap imageBitmap = (Bitmap) extras.get("data");
            imageView.setImageBitmap(imageBitmap);
        }
}
```

## Guardar
Otorgar permisos de escritura y lectura a nuestra aplicaciones ==READ_EXTERNAL_STORAGE y WRITE_EXTERNAL_STORAGE==
Para no sobreescribir fotos, nombrarlas con la fecha y hora.
```java
String mCurrentPhotoPath;
private File createImageFile() throws IOException {
        // Create an image file name
        String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
        String imageFileName = "JPEG_" + timeStamp + "_";
        File storageDir = Environment.getExternalStoragePublicDirectory(
                Environment.DIRECTORY_PICTURES);    
        File image = File.createTempFile(
                imageFileName,  /* prefix */
                ".jpg",         /* suffix */
                storageDir      /* directory */
        );
        // Save a file: path for use with ACTION_VIEW intents
        mCurrentPhotoPath = "file:" + image.getAbsolutePath();
        return image;
    }
```

Después, Intent.
```java
static final int CAPTURA_IMAGEN_TAMAÑO_REAL = 2;
private void dispatchTakePictureIntent() {
        Intent takePictureIntent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
        // Ensure that there's a camera activity to handle the intent
        if (takePictureIntent.resolveActivity(getPackageManager()) != null) {
            // Create the File where the photo should go
            File photoFile = null;
            try {
                photoFile = createImageFile();
            } catch (IOException ex) {
                // Error occurred while creating the File
                //...
            }
            // Continue only if the File was successfully created
            if (photoFile != null) {
              takePictureIntent.putExtra(MediaStore.EXTRA_OUTPUT,Uri.fromFile(photoFile));
                startActivityForResult(takePictureIntent, CAPTURA_IMAGEN_TAMAÑO_REAL);
            }
        }
    }
```
# Tratamiento de Imágenes Escaladas
Aunque los usuarios prefieren fotos en alta resolución, las apps deben cargarlas en versiones más pequeñas. Android ofrece una forma eficiente de hacerlo: primero se obtienen las dimensiones de la imagen sin cargarla completamente (`inJustDecodeBounds = true`), luego se calcula un _factor de escala_ adecuado, y finalmente se carga una versión escalada usando `inSampleSize`. Esto ahorra memoria y evita excepciones como "OutOfMemoryError".

```java
private void cargarImagenEscalada() {
    int anchoObjetivo = imageView.getWidth();
    int altoObjetivo = imageView.getHeight();

    BitmapFactory.Options opciones = new BitmapFactory.Options();
    opciones.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(rutaImagen, opciones);

    int anchoFoto = opciones.outWidth;
    int altoFoto = opciones.outHeight;

    int factorEscala = Math.min(anchoFoto / anchoObjetivo, altoFoto / altoObjetivo);

    opciones.inJustDecodeBounds = false;
    opciones.inSampleSize = factorEscala;

    Bitmap bitmapEscalado = BitmapFactory.decodeFile(rutaImagen, opciones);
    imageView.setImageBitmap(bitmapEscalado);
}
```

# 📹Captura de vídeo en Android
Manifest:
```xml
    <uses-feature
        android:name="android.hardware.camera"
        android:required="true" />
```
Android ofrece **dos formas** principales de grabar vídeo:
1. **Usar `Intent` con `MediaStore.ACTION_VIDEO_CAPTURE`** (más fácil y recomendado).
2. Usar la clase `MediaRecorder` para una solución más personalizada (más compleja).

En este ejemplo usamos **la primera opción**, delegando la grabación a la app del sistema.

## 🧱 Pasos básicos

### 1. Crear y lanzar el intent
```java
private final static int GRABAR_VIDEO = 1;

public void comenzarGrabacion(View view){
    Intent intent = new Intent(MediaStore.ACTION_VIDEO_CAPTURE);
    
    // Calidad baja (0) o alta (1)
    intent.putExtra(MediaStore.EXTRA_VIDEO_QUALITY, 0);

    // Límite de duración (en segundos)
    intent.putExtra(MediaStore.EXTRA_DURATION_LIMIT, 5);

    if (intent.resolveActivity(getPackageManager()) != null) {
        startActivityForResult(intent, GRABAR_VIDEO);
    }
```
### Recuperar el resultado y reproducir el vídeo
``` java
@Override
protected void onActivityResult(int requestCode, int resultCode, Intent data) {
    if (requestCode == GRABAR_VIDEO && resultCode == RESULT_OK) {
        VideoView videoView = (VideoView) findViewById(R.id.videoView);
        videoView.setVideoURI(data.getData());
        videoView.start();
    }
}
```
Para añadir a la galería, usar la clase File.
```java
private void galleryAddPic() {
    Intent mediaScanIntent = new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE);
    File f = new File(mCurrentPhotoPath);
    Uri contentUri = Uri.fromFile(f);
    mediaScanIntent.setData(contentUri);
    this.sendBroadcast(mediaScanIntent);
}
```
