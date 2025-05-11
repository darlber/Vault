### 6.1 Localización Geográfica
- Los dispositivos móviles pueden obtener su ubicación (latitud y longitud).
- Es preferible mostrar la ubicación en un mapa o convertir coordenadas a direcciones (reverse geocoding).
- Se puede rastrear movimiento o usar geofencing.
- Tecnologías disponibles: GPS, red móvil, WiFi.
- Android ha innovado recientemente en las APIs de localización.
### 6.2 Localización en Android desde sus inicios
- Desde API level 1 se usa el paquete `android.location`.
- Clases clave:
  - `LocationManager`: acceso a servicios de localización.
  - `LocationProvider`: representa la tecnología de localización (GPS, red, WiFi).
#### Ejemplo para obtener `LocationManager`:
```java
LocationManager locationManager;
locationManager = (LocationManager)getSystemService(Context.LOCATION_SERVICE);
```
#### 6.2.1 Permisos necesarios en el AndroidManifest.xml
```xml
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
```
- `ACCESS_FINE_LOCATION`: alta precisión (ej. GPS).
- `ACCESS_COARSE_LOCATION`: baja precisión (red móvil).
#### 6.2.2 Proveedores de Localización
- Tipos:
  - `GPS_PROVIDER`
  - `NETWORK_PROVIDER`
#### Selección de proveedor
1. **Automática**: dejar que Android elija (usando `Criteria`).
2. **Manual**: elegir según necesidades de la app.
##### 6.2.2.1 Dejar que Android elija el mejor proveedor
- Definir requisitos con `Criteria`:
```java
Criteria criteria = new Criteria();
criteria.setAccuracy(Criteria.ACCURACY_FINE);
criteria.setAltitudeRequired(true);
criteria.setBearingRequired(false);
criteria.setHorizontalAccuracy(Criteria.ACCURACY_LOW);
criteria.setVerticalAccuracy(Criteria.ACCURACY_HIGH);
criteria.setSpeedRequired(false);
criteria.setPowerRequirement(Criteria.POWER_MEDIUM);
criteria.setCostAllowed(true);
```
- Obtener proveedor:
```java
String bestProvider = locationManager.getBestProvider(criteria, true);
```
##### 6.2.2.2 Obtener lista de proveedores
```java
List<String> all = locationManager.getAllProviders();
List<String> enabled = locationManager.getProviders(true);
List<String> filtered = locationManager.getProviders(criteria, true);
```
#### 6.2.3 Recepción de la última ubicación
- Método `getLastKnownLocation(provider)` devuelve la última ubicación sin solicitar actualización.
- Puede ser `null` o desactualizada.
- Devuelve un objeto `Location` con métodos `getLatitude()`, `getLongitude()`, etc.
###### Ejemplo de uso:
```java
LocationManager locationManager =
    (LocationManager)getSystemService(Context.LOCATION_SERVICE);
String proveedor = LocationManager.GPS_PROVIDER;
Location location = locationManager.getLastKnownLocation(proveedor);
actualizarLocalizacion(location);
```
```java
private void actualizarLocalizacion(Location location) {
    TextView t = findViewById(R.id.ultimaUbicacionText);
    if (location != null) {
        double lat = location.getLatitude();
        double lng = location.getLongitude();
        t.setText("Latitud: " + lat + "\nLongitud: " + lng);
    } else {
        t.setText("No encuentro tu ubicación, ¿dónde estás?");
    }
}
```
- En emulador (Genymotion) hay que activar GPS y simular coordenadas manualmente.
#### 6.2.4 Recepción de actualizaciones de ubicación
- Para seguir cambios en tiempo real se usa `requestLocationUpdates()`.
- Dos opciones:
  1. Implementar `LocationListener`.
  2. Enviar `Intent` por broadcast.
##### Métodos de `LocationListener`:
```java
void onLocationChanged(Location location);
void onProviderDisabled(String provider);
void onProviderEnabled(String provider);
void onStatusChanged(String provider, int status, Bundle extras);
```
##### `requestLocationUpdates`:
```java
locationManager.requestLocationUpdates(
    provider,    // ej. GPS_PROVIDER o el elegido
    3000,        // minTime en ms
    5,           // minDistance en metros
    locationListener
);
```
- Para parar actualizaciones: `locationManager.removeUpdates(locationListener);`
##### Ejemplo completo:
```java
Criteria criteria = new Criteria();
criteria.setAccuracy(Criteria.ACCURACY_FINE);
criteria.setPowerRequirement(Criteria.POWER_LOW);
criteria.setAltitudeRequired(false);
criteria.setBearingRequired(false);
criteria.setSpeedRequired(false);
criteria.setCostAllowed(true);

String proveedor = locationManager.getBestProvider(criteria, true);
locationManager.requestLocationUpdates(proveedor, 3000, 5, locationListener);

private final LocationListener locationListener = new LocationListener() {
    @Override public void onLocationChanged(Location location) {
        actualizarLocalizacion(location);
    }
    @Override public void onStatusChanged(String p, int status, Bundle e) {}
    @Override public void onProviderEnabled(String p) {
        Toast.makeText(ctx, "Proveedor habilitado", Toast.LENGTH_SHORT).show();
    }
    @Override public void onProviderDisabled(String p) {
        Toast.makeText(ctx, "Proveedor deshabilitado", Toast.LENGTH_SHORT).show();
    }
};
```
- Actividades recomendadas: botones para iniciar/detener updates y mostrar ubicación en `TextView`, con `Toast` al habilitar/deshabilitar.
### 6.3 Las nuevas APIs de los Servicios de Localización
- Se recomienda usar Google Play Services en lugar de `android.location`.
- Ofrecen:
  - **Fused Location Provider**: unifica GPS, red y WiFi.
  - Mejor gestión de consumo de batería.
  - Funciones avanzadas: detección de actividad, geofences, direcciones.
##### Requisitos para pruebas:
- Dispositivo Android ≥ 2.3 con Google Play Store.
- Emulador con Google Apps y Android ≥ 4.2.2.
#### 6.3.1 Google Play Services
- Comprobar e instalar en SDK Manager (Extras):
  - Google Play Services
  - Google Repository
##### 6.3.1.1 Cómo añadir Google Play Services a tu proyecto
1. **Dependencia en `build.gradle` (módulo app)**  
   ```gradle
   dependencies {
       compile 'com.android.support:appcompat-v7:21.0.3'
       compile 'com.google.android.gms:play-services:6.5.87'
   }
   ```  
   - Actualiza la versión (`6.5.87`) al lanzar nuevas versiones de Play Services.
2. **Sincronizar proyecto**  
   - Botón **Sync Project with Gradle Files**.
3. **Meta-data en `AndroidManifest.xml`**  
   ```xml
   <application>
       …
       <meta-data
           android:name="com.google.android.gms.version"
           android:value="@integer/google_play_services_version" />
   </application>
   ```
##### 6.3.1.2 Comprobar compatibilidad de Google Play Services
- En `onResume()` o en `OnConnectionFailedListener.onConnectionFailed()`, usar:
  ```java
  int status = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this);
  ```
  - `SUCCESS`: todo ok.  
  - `SERVICE_MISSING`, `SERVICE_VERSION_UPDATE_REQUIRED`, `SERVICE_DISABLED`: informar al usuario y sugerir actualización.
##### 6.3.1.3 Test en Genymotion
- Instala **Google Apps (gapps)** compatibles con la versión Android del VM (p.ej. `gapps-jb-20130813-signed.zip` para 4.3).
- Arrastra ZIP al emulador, reinicia VM.
- Añade cuenta Google y abre Google Play para completar instalación de Play Services.
#### 6.3.2 Obtención de la última ubicación (Google Play Services)
1. **Permisos en manifest** (igual que sección 6.2.1).
2. **Crear `GoogleApiClient`**:
   ```java
   googleApiClient = new GoogleApiClient.Builder(this)
       .addConnectionCallbacks(this)
       .addOnConnectionFailedListener(this)
       .addApi(LocationServices.API)
       .build();
   ```
3. **Conectar/desconectar en ciclo de vida**:
   ```java
   @Override protected void onStart() {
       super.onStart();
       googleApiClient.connect();
   }
   @Override protected void onStop() {
       super.onStop();
       if (googleApiClient.isConnected())
           googleApiClient.disconnect();
   }
   ```
4. **Obtener última ubicación en `onConnected()`**:
   ```java
   Location location = LocationServices.FusedLocationApi.getLastLocation(googleApiClient);
   if (location != null) {
       double lat = location.getLatitude();
       double lng = location.getLongitude();
       textView.setText("Latitud: " + lat + "\nLongitud: " + lng);
   }
   ```
#### 6.3.3 Recepción de actualizaciones (Google Play Services)
1. **Crear `LocationRequest`**:
   ```java
   locationRequest = new LocationRequest();
   locationRequest.setInterval(8000);
   locationRequest.setFastestInterval(4000);
   locationRequest.setPriority(LocationRequest.PRIORITY_HIGH_ACCURACY);
   ```
2. **Iniciar actualizaciones en `onConnected()`**:
   ```java
   LocationServices.FusedLocationApi.requestLocationUpdates(
       googleApiClient, locationRequest, this);
   ```
3. **Implementar `onLocationChanged(Location)`** para mostrar coordenadas.
4. **Detener/retomar en ciclo de vida**:
   ```java
   @Override protected void onPause() {
       super.onPause();
       LocationServices.FusedLocationApi.removeLocationUpdates(googleApiClient, this);
   }
   @Override public void onResume() {
       super.onResume();
       LocationServices.FusedLocationApi.requestLocationUpdates(
           googleApiClient, locationRequest, this);
   }
   ```
#### 6.3.4 Visualización de la dirección (Reverse Geocoding)
1. **Declarar `IntentService` en `AndroidManifest.xml`**:
   ```xml
   <service android:name=".AveriguarDireccionIntentService"
            android:exported="false"/>
   ```
2. **Clase `AveriguarDireccionIntentService extends IntentService`**:  
   - En `onHandleIntent(Intent)`:
     ```java
     Geocoder geocoder = new Geocoder(this, Locale.getDefault());
     List<Address> addresses = geocoder.getFromLocation(lat, lng, 1);
     ```
   - Capturar `IOException` e `IllegalArgumentException`.
   - Si resultados, extraer campos:
     ```java
     Address a = addresses.get(0);
     String calle = a.getThoroughfare();
     String cp    = a.getPostalCode();
     …
     ```
   - Enviar resultado con `ResultReceiver`.
3. **Actividad llamante `ObteniendoDireccion`**:
   - Configura `GoogleApiClient`, conecta en `onStart()`, desconecta en `onStop()`.
   - Habilita botón al comprobar `Geocoder.isPresent()`.
   - Al pulsar, lanza `Intent` con extras: receiver y `Location`.
   - Implementa `ResultReceiver.onReceiveResult()` para mostrar dirección o error.
### 6.4 Introducción a Sensores
- Los smartphones llevan múltiples sensores: acelerómetro, giroscopio, luz, proximidad, magnetómetro, barómetro, termómetro, etc.
- Permiten nuevas formas de interacción y casos de uso (ej. detección de accidentes con acelerómetro + GPS).
#### 6.4.1 Sistema de Coordenadas
- Ejes fijos relativos al dispositivo:
  - **X**: positivo hacia la derecha.
  - **Y**: positivo hacia arriba.
  - **Z**: positivo saliendo de la pantalla.
- No cambia con la orientación de la pantalla; basado en la orientación “natural” del dispositivo.
#### 6.4.2 Clasificación de Sensores
| Categoría        | Descripción                                            | Valores |
| ---------------- | ------------------------------------------------------ | ------- |
| Medioambientales | Miden presión, temperatura, luz, humedad, etc.         | 1       |
| Movimiento       | Fuerza (acelerómetro) o rotación (giroscopio) en X/Y/Z | 3       |
| Posición         | Orientación, campo magnético, gravedad, etc.           | 3–4     |
##### Tipos de sensores que Android soporta:
| #  | Sensor                       | Tipo                   | Descripción                     | Usos habituales                                 |
|----|------------------------------|------------------------|---------------------------------|-------------------------------------------------|
| 1  | TYPE_ACCELEROMETER           | Hardware               | 1. Fuerza aceleración 3 ejes    | Detección de movimiento (agitación, inclinación)|
| 2  | TYPE_AMBIENT_TEMPERATURE     | Hardware               | 2. Temperatura ambiente °C      | Supervisión de la temperatura del aire          |
| 3  | TYPE_GRAVITY                 | Software o hardware    | 3. Fuerza gravedad 3 ejes       | Detección de movimiento (agitación, inclinación)|
| 4  | TYPE_GYROSCOPE               | Hardware               | 4. Velocidad rotación rad/s     | Detección de rotación (giro, agitación)         |
| 5  | TYPE_LIGHT                   | Hardware               | 5. Nivel luz ambiental          | Control del brillo de la pantalla               |
| 6  | TYPE_LINEAR_ACCELERATION     | Software o hardware    | 6. Aceleración sin gravedad     | Supervisión de aceleración un eje               |
| 7  | TYPE_MAGNETIC_FIELD          | Hardware               | 7. Campo magnético 3 ejes       | Creación de una brújula                         |
| 8  | TYPE_ORIENTATION             | Software               | 8. Grados rotación 3 ejes       | Determinación de posición del dispositivo       |
| 9  | TYPE_PRESSURE                | Hardware               | 9. Presión aire ambiente        | Supervisión de cambios presión atmosférica      |
| 10 | TYPE_PROXIMITY               | Hardware               | 10. Proximidad objeto cm        | Detección de llamada (proximidad al oído)       |
| 11 | TYPE_RELATIVE_HUMIDITY       | Hardware               | 11. Humedad relativa %          | Supervisión de humedad ambiental                |
| 12 | TYPE_ROTATION_VECTOR         | Software o hardware    | 12. Vector rotación 3 ejes      | Detección de movimiento y rotación              |
| 13 | TYPE_TEMPERATURE             | Hardware               | 13. Temperatura dispositivo °C  | Supervisión de temperatura del dispositivo      |

- Los sensores de 3 ejes devuelven `float[] values`:
  - `values[0]`→X, `values[1]`→Y, `values[2]`→Z.
#### 6.4.3 Clases `Sensor` y `SensorManager`
- **`Sensor`**: representa un sensor individual.
- **`SensorManager`**: gestiona sensores, listados y registro de eventos.
##### Obtener referencia a `SensorManager`:
```java
SensorManager sensorManager =
    (SensorManager)getSystemService(Context.SENSOR_SERVICE);
```
##### 6.4.3.1 Listar sensores disponibles
```java
List<Sensor> sensores = sensorManager.getSensorList(Sensor.TYPE_ALL);
for (Sensor s : sensores) {
    Log.i("Sensor", s.getName());
}
```
- También se puede filtrar por tipo:
  ```java
  List<Sensor> acel = sensorManager.getSensorList(Sensor.TYPE_ACCELEROMETER);
  Sensor gyro = sensorManager.getDefaultSensor(Sensor.TYPE_GYROSCOPE);
  ```
#### 6.4.4 Monitorizando sensores
- Implementar `SensorEventListener` con:
  ```java
  void onSensorChanged(SensorEvent event);
  void onAccuracyChanged(Sensor sensor, int accuracy);
  ```
- Registrar/desregistrar en ciclo de vida:
  ```java
  @Override protected void onResume() {
      super.onResume();
      sensorManager.registerListener(
          this, acelerometro, SensorManager.SENSOR_DELAY_NORMAL);
  }
  @Override protected void onPause() {
      super.onPause();
      sensorManager.unregisterListener(this);
  }
  ```
- Ejemplo acelerómetro:
  ```java
  @Override
  public void onSensorChanged(SensorEvent event) {
      float x = event.values[0], y = event.values[1], z = event.values[2];
      textView.setText("X: " + x + " | Y: " + y + " | Z: " + z);
  }
  ```