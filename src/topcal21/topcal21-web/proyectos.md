# Proyectos
<!-- id: topcal21-web-proyectos -->

Un proyecto de Topcal21 web es un archivo `.prt` que enumera los archivos de puntos (`.pts`), de visuales (`.obs`) y de croquis (`.crq`) del trabajo, igual que en [Topcal21 para Windows](../estructura-de-archivos/fichero-de-proyecto.md). Los archivos del proyecto están en una carpeta de [Mis archivos](mis-archivos.md). Los asistentes del menú Herramientas y de la barra inferior, excepto «Cierre de triángulos», necesitan un proyecto abierto cuyo grupo esté activo en el panel del proyecto. «Cierre de triángulos» necesita un archivo de visuales como documento activo.

Los archivos que se abren sin proyecto (con **Abrir...**) aparecen en el grupo **Otros archivos** del panel del proyecto.

## Crear un proyecto

**Archivo › Nuevo...** (botón **Nuevo**) abre el cuadro «Proyecto nuevo». La web crea siempre un proyecto; no crea archivos de puntos ni de visuales sueltos.

1. Escribe el **Nombre del proyecto**. El nombre no puede contener los caracteres `\ / : * ? " < > |` ni terminar en punto o en espacio.
2. Pulsa **Elegir carpeta…** y elige la carpeta de «Mis archivos» donde se crea el proyecto (**Ubicación**). El valor inicial es el «Directorio por defecto de datos» de las [preferencias](preferencias-instrumentos-y-sistemas-de-referencia.md).
3. Arrastra a la zona de archivos, o elige con el selector del navegador, los archivos de tu ordenador que formarán el proyecto. La lista indica, para cada archivo, si «Se añadirá al proyecto» (archivos `.pts`, `.obs` y `.crq`) o «Solo se sube a la carpeta» (cualquier otro tipo). Un archivo puede medir hasta 20 MiB y los archivos de la lista pueden sumar hasta 100 MiB. El botón de la fila quita un archivo de la lista.
4. Pulsa **Crear**.

La web crea la carpeta `Ubicación/Nombre del proyecto/` con el archivo `.prt` y los archivos de la lista, y abre el proyecto. Si la carpeta ya existe, la web no crea el proyecto. La lista de archivos puede estar vacía; los archivos se añaden después con **Insertar archivos...**.

## Abrir un proyecto

* **Archivo › Abrir proyecto...** (botón **AbreProy**) abre el selector de «Mis archivos» con los archivos `.prt` de la carpeta actual. Elige un archivo.
* **Archivo › Proyectos recientes** lista los últimos 5 proyectos abiertos. Un proyecto que ya no existe en «Mis archivos» se quita de la lista al intentar abrirlo.
* El botón **Abrir en Topcal21** de un archivo `.prt` en «Mis archivos» abre el proyecto al cargar el espacio de trabajo.
* Con la preferencia **Cargar automáticamente el último proyecto** marcada, el espacio de trabajo abre el proyecto más reciente al entrar sin elegir un archivo.

Un proyecto abierto sustituye al proyecto anterior. Si el proyecto anterior tiene cambios sin guardar, la web pide confirmación y, si se acepta, descarta esos cambios.

Si un archivo que enumera el proyecto no está en «Mis archivos», el panel del proyecto muestra su icono como «no encontrado». Si el archivo no es un archivo de Topcal21 válido, el panel lo marca como no válido y la rejilla muestra el motivo.

## Abrir un archivo suelto

**Archivo › Abrir...** (botón **AbreArch**) abre el selector de «Mis archivos» con los archivos `.pts` y `.obs` de la carpeta actual. El archivo se añade al grupo «Otros archivos». **Archivo › Cerrar** cierra el documento activo del grupo «Otros archivos»; con cambios sin guardar, la web pide confirmación. Para quitar un archivo de un proyecto se usa **Eliminar archivos...**.

## Propiedades del proyecto

**Ver › Propiedades del proyecto...**, **Archivo › Insertar archivos...** y **Archivo › Eliminar archivos...** (y sus botones **Inserta** y **Elimina**) abren el cuadro «Propiedades de proyecto». Con la cuenta suspendida, el cuadro solo muestra los datos y no permite cambiarlos.

El cuadro contiene:

* **Nombre del trabajo**, editable. **Nombre del archivo** y **Path del proyecto** (la carpeta del proyecto en «Mis archivos») no se pueden editar.
* **Cantidad de ficheros** y **Cantidad de elementos**: número de archivos de puntos, visuales y croquis y número de puntos y de visuales del proyecto.
* **Número de decimales de los datos**: número de decimales de los datos angulares y de los datos lineales, de 0 a 10, ambos extremos incluidos.
* **Archivos del proyecto**: tabla con el archivo, el tipo, el estado («No encontrado», «No válido», «Con cambios sin guardar», «En el proyecto», «Se sube al aceptar» o «Se añade al aceptar») y una casilla de selección.

Para insertar archivos, usa uno de estos procedimientos y pulsa **Aceptar**:

* Pulsa **Elegir del contenedor…** y elige un archivo `.pts`, `.obs` o `.crq` que ya está en «Mis archivos».
* Arrastra archivos de tu ordenador a la zona de archivos. La web sube esos archivos a la carpeta del proyecto al pulsar **Aceptar**.

Para quitar archivos, marca las casillas de los archivos y pulsa **Quitar del proyecto**. La web quita los archivos de la lista del proyecto. Si se marca la casilla **Borrar también del contenedor los archivos quitados del proyecto**, la web borra esos archivos de «Mis archivos» al guardar el proyecto; esa operación no se puede deshacer. Si un archivo quitado tiene cambios sin guardar, la web avisa de que se perderán esos cambios.

**Aceptar** aplica los cambios al proyecto abierto, pero no guarda el archivo `.prt`: el proyecto queda con cambios sin guardar hasta que se ejecuta **Guardar proyecto**. **Cancelar** no cambia nada.

## Guardar y cerrar

* **Guardar proyecto** (botón **SalvaProy**) guarda el archivo `.prt`. Solo está habilitado si el proyecto tiene cambios.
* **Guardar todo** guarda el proyecto y todos los archivos modificados.
* **Guardar** (botón **Salva**) guarda el documento activo. **Guardar como...** lo guarda con otro nombre en la misma carpeta.
* **Cerrar proyecto** cierra el proyecto y los archivos de «Otros archivos». Si hay cambios sin guardar, la web pide confirmación y los descarta si se acepta.

Los archivos nuevos de puntos o de visuales creados por los [cálculos](calculos.md) quedan con cambios sin guardar. Para conservar los archivos nuevos, guárdalos con **Guardar** o **Guardar todo**.
