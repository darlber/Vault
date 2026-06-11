#flashcards/repositorios23

# Flashcards - Tema 23: Repositorios, Control de Versiones, Metodologías y Pruebas

## Metodologías de Desarrollo

Modelo en cascada (Waterfall)::Lineal: Requisitos → Diseño → Implementación → Verificación → Mantenimiento

Modelo en espiral::Combina iteración del prototipado con control del modelo en cascada; centrado en riesgos

Modelo en V::Fases de verificación y validación correspondientes a cada fase de desarrollo

Product Owner gestiona::El Product Backlog en Scrum

Sprint Planning::Reunión para definir objetivo y trabajo del próximo sprint

Kanban frente a Scrum::Kanban limita el trabajo en curso (WIP), sin iteraciones fijas

Programación en Pareja (XP)::Dos programadores trabajan juntos en el mismo código

Historias de usuario::Describen funcionalidad desde la perspectiva del usuario final

DevOps::Automatización y colaboración entre desarrollo y operaciones

## Pruebas de Software

Pruebas unitarias::Verifican un módulo individual de forma aislada

Pruebas de integración::Verifican la interacción correcta entre módulos

Pruebas de aceptación::Validan que el sistema cumple requisitos de negocio

Pruebas de regresión::Verifican que cambios no introdujeron nuevos defectos

Pruebas de humo (Smoke Testing)::Determinan si una build es estable para pruebas más profundas

Pruebas de caja blanca::Verifican el código internamente (bifurcaciones, bucles, condiciones)

Stub en pruebas::Componente que simula un módulo dependiente para aislar la unidad bajo prueba

Ciclo TDD::Escribir prueba → Escribir código que pase → Refactorizar

## Control de Versiones

SCV distribuido::Git, Mercurial, Darcs

SCV centralizado::Subversion (SVN), CVS, TFVC

Git es::SCV distribuido

SVN es::SCV centralizado

Blob en git::Objeto que almacena el contenido de cada archivo

git fetch::Descarga cambios del remoto sin integrarlos en local

git pull::Descarga cambios y los fusiona directamente (fetch + merge)

git merge::Integra cambios de una rama en la rama actual

git rebase::Mueve commits a una nueva base (historial lineal)

git cherry-pick::Aplica cambios de un commit específico de otra rama

git diff --cached::Diferencias entre staging area y último commit

Tag en git::Marca puntos específicos como releases de versiones

Rama 'develop' en Git Flow::Rama de integración para funcionalidades en desarrollo

## Herramientas CI/CD

Jenkins::Herramienta de integración y entrega continua (CI/CD)

GitHub Actions::Automatiza flujos CI/CD desde el repositorio de GitHub
