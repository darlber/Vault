---
tags:
  - Android
  - Proyecto
  - wiki
---
# https://github.com/yuhonas/free-exercise-db/tree/main
# https://material-foundation.github.io/material-theme-builder/
# Anotaciones comunes en Room (Kotlin)

## @Entity
Define una clase como una tabla en la base de datos.
```kotlin
Ejemplo:  
@Entity(tableName = "users")  
data class User(  
  @PrimaryKey val id: Int,  
  val name: String  
)
```
## @PrimaryKey
Marca la columna que es clave primaria (identificador único).
```kotlin
@PrimaryKey(autoGenerate = true)  
val id: Int
```
## @ColumnInfo
Personaliza el nombre, índice y otras propiedades de la columna. 
```kotlin
@ColumnInfo(name = "user_name", index = true)  
val username: String
```
## @Embedded
Incluye los campos de otra clase dentro de esta tabla, “aplanando” sus atributos.
```kotlin
data class Address(val street: String, val city: String)
@Entity  
data class User(  
  @PrimaryKey val id: Int,  
  @Embedded val address: Address  
)
```
## @Relation
Representa relaciones entre tablas y carga datos relacionados.
```kotlin
data class UserWithBooks(  
  @Embedded val user: User,  
  @Relation(  
    parentColumn = "id",  
    entityColumn = "userId"  
  )  
  val books: List<Book>  
)
```
## @Dao
Interfaz o clase que define métodos para acceder a la base de datos.
```kotlin
@Dao  
interface UserDao {  
  @Query("SELECT * FROM users")  
  fun getAll(): List<User>  
}
```
## @Insert, @Update, @Delete
Anotan métodos para insertar, actualizar o eliminar datos.
```kotlin
@Insert  
suspend fun insertUser(user: User)

@Update  
suspend fun updateUser(user: User)

@Delete  
suspend fun deleteUser(user: User)
```
## @Query
Define consultas SQL personalizadas.
```kotlin
@Query("SELECT * FROM users WHERE id = :id")  
fun getUserById(id: Int): User
```
## @Ignore

Ignora propiedades que no deben guardarse en la base de datos.
```kotlin
@Ignore  
val tempData: String? = null
```
## @TypeConverters
Indica clases que convierten tipos complejos para que Room pueda guardarlos.
```kotlin
@TypeConverters(DateConverter::class)  
abstract class AppDatabase : RoomDatabase() { ... }
```

# UI Elements en Jetpack Compose

## Scaffold
Estructura base de Material Design que organiza componentes comunes como TopAppBar, FAB y contenido. Proporciona slots predefinidos y maneja padding automático.

## TopAppBar
Barra superior de la aplicación. Muestra título, acciones y puede contener menús. Versiones: Small, Medium, Large.

## FloatingActionButton (FAB)
Botón circular prominente para acciones primarias. Tipos: Regular (56dp), Small (40dp), Extended (con texto).

## Box
Contenedor que permite apilar elementos y alinearlos libremente. Útil para superposiciones y layouts personalizados.

## Row/Column
Disposiciones horizontales (Row) y verticales (Column) para organizar elementos. Controlan el arreglo con Arrangement y Alignment.

## Modifiers
Modifican apariencia/comportamiento de componentes. Comunes: 
- `padding()`, `size()`, `fillMaxSize()`
- `clickable()`, `background()`, `border()`

## MaterialTheme
Sistema de diseño que provee colores, tipografía y formas consistentes. Se accede via `MaterialTheme.colorScheme.primary` etc.

## Preview
`@Preview` muestra el componente en Android Studio sin ejecutar la app. Configurable con parámetros como `showBackground`.

# Flatmap
`flatMap` es útil cuando tienes una lista cuyos elementos a su vez contienen listas y quieres convertirlo todo en una lista "plana" única.
Por ejemplo:
- Si tienes una lista de _targets_ y cada _target_ se traduce a varios músculos.
- Si quieres combinar `primaryMuscles` y `secondaryMuscles` en una lista única de músculos.