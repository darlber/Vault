---
tags:
  - Android
  - Proyecto
  - wiki
---
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
