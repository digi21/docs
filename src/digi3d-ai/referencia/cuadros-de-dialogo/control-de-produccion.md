# Control de producción
<!-- id: cuadro-control-de-produccion -->

Este cuadro de diálogo solicita el usuario que va a trabajar en el equipo. Digi3D.AI lo muestra al arrancar si está activada la opción [Controlar producción](configuracion/control-de-produccion/controlar-produccion.md) del cuadro de diálogo [Configuración](configuracion/README.md) y Digi3D.AI se ejecuta sin argumentos en la línea de órdenes.

## Campos

* **Lista de usuarios**: los usuarios creados en este equipo. Selecciona tu nombre de usuario.
* **Crear...**: abre el cuadro de diálogo **Nuevo usuario (control de producción)**, que solicita el nombre del usuario nuevo. El usuario nuevo se añade a la lista y queda seleccionado. Si ya existe un usuario con ese nombre, no se añade.
* **Aceptar**: inicia Digi3D.AI con el usuario seleccionado. Sin ningún usuario seleccionado, no hace nada.
* **Salir**: cierra Digi3D.AI.

## Observaciones

* Mientras Digi3D.AI está abierto, la barra de producción de la barra de estado muestra la actividad del usuario. Consulta [Tiempo de visualización](configuracion/control-de-produccion/tiempo-de-visualizacion.md).
* Digi3D.AI guarda la actividad cada minuto en un archivo por usuario y día, en **C:\ProgramData\digi21.net**. El nombre del archivo es la fecha seguida del nombre del usuario, por ejemplo **20261004-Juan**. Al volver a abrir Digi3D.AI el mismo día con el mismo usuario, la barra continúa con la actividad guardada.
