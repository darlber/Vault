>[!Note]
> Un **endpoint** es una URL expuesta por el servidor que recibe solicitudes HTTP y ejecuta lógica concreta (por ejemplo, registrar un usuario o iniciar una ronda).
## Main
- **MusichaosApplication.java**: Punto de entrada de la aplicación Spring Boot.

## Config
- **SecurityConfig.java**: Configuración de seguridad (JWT, roles, acceso a endpoints).
- **WebSocketConfig.java**: Configuración de WebSocket para comunicación en tiempo real (lobbies, rondas).

## Controller
- **AuthController.java**: Endpoints de autenticación (registro, login).
- **HealthController.java**: Endpoint para verificar que el servidor está vivo.
- **LobbyController.java**: Endpoints para gestionar lobbies (crear, unirse, salir).
- **ShopController.java**: Endpoints para interactuar con la tienda (comprar items).
- **UserController.java**: Endpoints relacionados con el usuario (perfil, actualización de datos).

## DTO
- **UserProfile.java**: DTO para representar la información de perfil de usuario.

## Game
- **Round.java**: Entidad que representa una ronda del juego.
- **RoundController.java**: Endpoints para gestionar rondas (crear, iniciar, finalizar).
- **RoundRepository.java**: Repositorio JPA para acceder a datos de rondas.
- **RoundService.java**: Lógica de negocio de las rondas.
- **RoundStatus.java**: Enum con los estados posibles de una ronda (WAITING, ACTIVE, FINISHED).

## Model
- **Character.java**: Entidad que representa un personaje en el juego.
- **Inventory.java**: Entidad que representa el inventario de un usuario.
- **Item.java**: Entidad que representa un item que puede comprarse o usarse.
- **Lobby.java**: Entidad que representa un lobby de juego.
- **User.java**: Entidad que representa un usuario del juego.

## Repository
- **CharacterRepository.java**: Repositorio JPA de personajes.
- **InventoryRepository.java**: Repositorio JPA de inventarios.
- **ItemRepository.java**: Repositorio JPA de items.
- **LobbyRepository.java**: Repositorio JPA de lobbies.
- **UserRepository.java**: Repositorio JPA de usuarios.

## Security
- **JwtAuthFilter.java**: Filtro de autenticación JWT.
- **JwtService.java**: Servicio para generar y validar tokens JWT.

## Service
- **LobbyService.java**: Lógica de negocio para gestionar lobbies.
- **ShopService.java**: Lógica de negocio para la tienda y items.
- **UserService.java**: Lógica de negocio relacionada con usuarios.

## WebSocket
- **LobbySocketController.java**: Controlador para manejar mensajes en tiempo real en los lobbies (WebSocket).

## Test

- **AuthIntegrationTest.java**: Test de integración para registro, login y perfil de usuario.
- **MusichaosApplicationTests.java**: Test básico de contexto Spring Boot.
- **RoundIntegrationTest.java**: Test de integración para crear, iniciar y finalizar rondas vía API, validando que los estados de la ronda cambian correctamente (`WAITING` → `ACTIVE` → `FINISHED`).
- **RoundLobbyIntegrationTest.java**: Test de integración del servicio, verifica que una ronda se puede crear en un lobby, enviar respuesta y finalizar correctamente.
- **RoundAnswerIntegrationTest.java**: Test de integración vía HTTP, valida el endpoint de envío de respuestas y que la ronda se actualiza correctamente.
