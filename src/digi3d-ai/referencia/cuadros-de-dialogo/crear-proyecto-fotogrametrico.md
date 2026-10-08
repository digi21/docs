# Crear proyecto fotogramétrico
<!-- id: crear-proyecto-fotogrametrico -->

![Cuadro de diálogo Proyecto fotogramétrico](../../../images/crear-proyecto-fotogrametrico.png)

Este cuadro de diálogo crea o modifica un archivo de proyecto fotogramétrico (`.d3dprj`). El archivo enumera las pasadas del proyecto y los modelos (archivos `.d3d`) de cada pasada, y lo carga el panel [Proyecto fotogramétrico](../paneles/proyecto-fotogrametrico.md) para cambiar de modelo rápidamente.

## Abrir el cuadro de diálogo

Pulsa el botón de nuevo proyecto de la barra de herramientas del panel [Proyecto fotogramétrico](../paneles/proyecto-fotogrametrico.md).

El cuadro de diálogo requiere el módulo de fotogrametría en la licencia. Si la llave de protección no lo incluye, Digi3D.AI muestra un mensaje y no abre el cuadro de diálogo.

## Campos

* **Archivo a crear**: la ruta del archivo de proyecto. El botón **...** permite seleccionarla. Mientras este campo está vacío, **Sensor**, los botones de las pasadas y de los modelos y **Aceptar** están deshabilitados.

  Si el archivo ya existe, el cuadro de diálogo carga sus pasadas y sus modelos para modificarlos. Si el archivo no es un XML válido, muestra el mensaje «Error en la línea: *n*, columna: *n*» con el motivo del error, y los controles siguen deshabilitados.
* **Sensor**: el sensor de los modelos que se crean con **Crear** y **Crear Varios**. Solo lista los sensores que pueden crear proyectos. Al abrir el cuadro de diálogo selecciona el sensor que estaba elegido la última vez que se pulsó **Aceptar**.
* **Pasadas**: las pasadas del proyecto.
  * **Crear**: abre el cuadro de diálogo [Propiedades de la pasada](#propiedades-de-la-pasada) y añade una pasada.
  * **Propiedades**: cambia el nombre de la pasada seleccionada. También se abre con doble clic sobre la pasada.
  * **^** y **v**: suben o bajan la pasada seleccionada.
  * **Eliminar**: elimina la pasada seleccionada.
* **Modelos**: los modelos de la pasada seleccionada. Los botones de esta lista, los de la pasada y **Aceptar** solo están habilitados si hay una pasada seleccionada.
  * **Crear**: crea un modelo nuevo con el cuadro de diálogo [Crear modelo](crear-modelo.md).
  * **Crear Varios**: crea varios modelos a partir de los números de foto con el cuadro de diálogo [Crear múltiples modelos](crear-multiples-modelos.md). Solo está habilitado si el sensor lo permite. Los modelos que ya están en la lista no se añaden otra vez.
  * **Cargar**: añade un archivo de modelo (`.d3d`) existente.
  * **^** y **v**: suben o bajan el modelo seleccionado.
  * **Eliminar**: quita el modelo seleccionado de la pasada. No borra el archivo del modelo.
* **Aceptar**: guarda el archivo de proyecto. Si no hay ninguna pasada, muestra el aviso «No hay datos que almacenar. Cree alguna pasada y añada modelos a la pasada.» y no guarda.
* **Cancelar**: cierra el cuadro de diálogo sin guardar.

## Propiedades de la pasada

![Cuadro de diálogo Propiedades de la pasada](../../../images/propiedades-de-la-pasada.png)

* **Nombre**: el nombre de la pasada. Al crear una pasada se propone **Pasada:** seguido del número de la pasada.

## Observaciones

Si la opción [Sustituir rutas por sustituidores](configuracion/rutas/sustituir-rutas-por-sustituidores.md) está activada, las rutas de los modelos se guardan con la variable `$(DirectorioTrabajo)` cuando están en la carpeta del archivo de proyecto.
