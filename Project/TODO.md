---

kanban-plugin: board

---

## TODO

- [ ] Timer no funciona en otro movil. api 27 si
- [ ] Notificacion cuenta atras se queda en 1 en vez de borrarse, also barra notificaciones descendiendo, cual es el num max?
- [ ] descargar automaticamente si no hay ninguna cacheada (como cuando iniciamos por primera vez una app o tras borrar la database). ademas se me descarga la version española teniendo el dispositivo en ingles
- [ ] Crear Workouts personalizados
- [ ] Mejores estadísticas y Graph
- [ ] Localizaciones
- [ ] Optimizaciones
- [ ] añadir setting para descargar voluntariamente todas las imagenes de github y que funcione offline
- [ ] probablemente haya probelmas si exercises_es esta en version 1.4 y switcheamos el idioma a ingles en veresion 1.0


## Completed

- [x] Descargar todos los paquetes de idiomas para cambio en tiempo de ejecucion?
- [x] Verificar el idioma del dispositivo par usar un json u otro
- [x] si se borra database, la lista no aparece, por el cacheado de los items del json. teniendo que reinstalar


***

## Archive

- [x] No poder clicar Finish dos veces por sesión
- [x] Timer en notificaciones y vibraciones
- [x] exerciseCard en Session, la X debe hacer algo supongo
- [x] al clicar finish, mostrar pantalla principal y graph
- [x] Espaciado a la dcha en ExercisePickerCard
- [x] Colores Filtros
- [x] Stats
- [x] Small Pill e instrucciones en en la pestaña de informacion en ExercisePicker
- [x] Filtros
- [x] En vez de base de datos o json inside, pasarlo a un github desde donde se puede colaborar o updatear
- [x] AlinearFiltros
- [x] ExercisePicker

%% kanban:settings
```
{"kanban-plugin":"board","list-collapse":[false,false],"show-checkboxes":true}
```
%%