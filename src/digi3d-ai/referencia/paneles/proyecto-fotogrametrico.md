# Proyecto fotogramétrico
<!-- id: proyecto-fotogrametrico -->

![Panel Proyecto fotogramétrico con una pasada y dos modelos](../../../images/panel-proyecto-fotogrametrico.png)

Permite crear archivos de proyecto fotogramétrico, así como cargar archivos de proyectos fotogramétricos creados por otros programas.

Una vez cargado un proyecto fotogramétrico, el contenido principal muestra un árbol con tantas ramas como pasadas se enumeren en el archivo de proyecto fotogramétrico y con tantas hojas como modelos existan en el proyecto.

Al pulsar sobre un modelo, el programa abre una ventana fotogramétrica con ese modelo. Si ya hay una ventana fotogramétrica abierta, el programa muestra el modelo seleccionado en esa ventana.

Si el proyecto es de fotos y no de modelos, el panel muestra dos listas con las mismas fotos: la izquierda y la derecha. Al seleccionar una foto en cada lista se carga el modelo formado por las dos fotos.

Un proyecto `.d3dprj` puede contener pares del sensor Satélite RPC (estereoscópico) (RPC: coeficientes polinómicos racionales) en lugar de modelos de cámara cónica. Consulta [Proyectos con varios pares](../ventana-fotogrametrica/sensores/rpc/README.md#proyectos-con-varios-pares) para saber cómo crear un proyecto `.d3dprj` con varios pares y cómo elige par el cambio automático de modelo.

El panel guarda la ruta del último proyecto cargado con los botones **Nuevo** o **Cargar**, o con la función Python [open_project](../../programacion/python/referencia/digi3d/functions.md#open_project). Digi3D.AI no carga ningún proyecto al iniciarse, salvo que la línea de comandos incluya el subcomando `proyecto` o que Digi3D.AI abra al iniciarse un archivo de dibujo con un proyecto asociado.

## Proyecto asociado al archivo de dibujo

Con la opción [Almacenar el proyecto fotogramétrico o el modelo fotogramétrico como archivo de referencia](../cuadros-de-dialogo/configuracion/archivos-de-referencia/almacenar-el-proyecto-o-el-modelo-fotogrametrico.md) del cuadro de diálogo **Configuración** activada, al cargar un proyecto con los botones **Nuevo** o **Cargar**, o con la función `open_project`, si hay alguna ventana de dibujo abierta, Digi3D.AI asocia el proyecto al archivo de dibujo de la última ventana de dibujo que ha tenido el foco: guarda la ruta del proyecto en el [archivo de archivos de referencia](../archivos/archivo-de-archivos-de-referencia.md#proyecto-o-modelo-fotogramétrico) de ese archivo de dibujo, salvo si el archivo de dibujo es de solo lectura. Cuando la ventana fotogramétrica activa carga un modelo del proyecto, Digi3D.AI guarda también el nombre del modelo y su punto de vista. La opción está desactivada por defecto.

Con la opción **Almacenar el proyecto fotogramétrico o el modelo fotogramétrico como archivo de referencia** activada, al abrir un archivo de dibujo con un proyecto fotogramétrico asociado, Digi3D.AI carga el proyecto asociado si el panel no tiene ningún proyecto cargado. Si el panel tiene cargado otro proyecto, Digi3D.AI pregunta si quieres sustituir el proyecto del panel por el proyecto asociado al archivo de dibujo. Si el archivo de archivos de referencia indica un modelo del proyecto asociado, la carga de ese modelo depende de las condiciones que describe la misma sección. La sección [Proyecto o modelo fotogramétrico](../archivos/archivo-de-archivos-de-referencia.md#proyecto-o-modelo-fotogramétrico) del archivo de archivos de referencia enumera los casos en los que Digi3D.AI no carga el proyecto asociado. Si cada zona de trabajo tiene su archivo de dibujo y su proyecto, asocia una vez el proyecto de cada zona a su archivo de dibujo: activa la opción **Almacenar el proyecto fotogramétrico o el modelo fotogramétrico como archivo de referencia**, activa la ventana de ese archivo de dibujo, que no debe ser de solo lectura, y carga el proyecto.

Con la opción **Almacenar el proyecto fotogramétrico o el modelo fotogramétrico como archivo de referencia** activada, el cuadro de abrir archivo del botón **Cargar** propone el proyecto asociado al archivo de dibujo de la última ventana de dibujo que ha tenido el foco, si ese archivo de dibujo tiene un proyecto asociado. El cuadro de abrir archivo propone el último proyecto cargado si la opción **Almacenar el proyecto fotogramétrico o el modelo fotogramétrico como archivo de referencia** está desactivada, si no hay ninguna ventana de dibujo abierta o si el archivo de dibujo de la última ventana de dibujo que ha tenido el foco no tiene un proyecto asociado.

## Modelos que no se pueden cargar

Por defecto, el árbol solo muestra los modelos que se pueden cargar. Cada modelo que no se puede cargar añade al panel [Tareas](tareas.md) un error «Archivo de modelo: *modelo* no localizado.». Si no se puede cargar ningún modelo del proyecto, aparece el mensaje «No se ha podido cargar ningún modelo del archivo de proyecto. Posiblemente la ruta a las imágenes en el archivo de proyecto no es válida».

Si se desactiva la opción [Mostrar solo modelos cargados](../cuadros-de-dialogo/configuracion/proyecto-fotogrametrico/mostrar-solo-modelos-cargados.md) de la configuración, el árbol muestra también los modelos que no se pueden cargar, deshabilitados, y cada uno sigue añadiendo su error al panel Tareas.

## Sistema de referencia de coordenadas del proyecto

Si el proyecto no tiene asociado un sistema de referencia de coordenadas, al cargarlo aparece el cuadro «No hemos localizado el Sistema de Referencia de Coordenadas de este proyecto» con tres opciones:

* Indicar el sistema de referencia de coordenadas: muestra el cuadro de selección de sistema de referencia de coordenadas y, al aceptar, crea un archivo `.prj` junto al proyecto.
* Indicar que se desconoce: crea un archivo `.prj` con un sistema desconocido.
* Preguntar la próxima vez: asigna temporalmente un sistema desconocido y no crea ningún archivo `.prj`.

### Sistema vertical

Solo los proyectos de Inpho y de PhotoScan muestran este cuadro. Si el sistema del proyecto solo tiene componente horizontal y la opción [Solicitar sistema vertical para sensores](../cuadros-de-dialogo/configuracion/sistema-de-referencia-de-coordenadas/solicitar-sistema-vertical-para-sensores.md) de la configuración está en **Sí**, al cargar el proyecto aparece el cuadro **Sistema de referencia de coordenadas vertical desconocido**, el mismo que al cargar un [modelo sin sistema vertical](../ventana-fotogrametrica/sensores/camara-conica/sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-vertical). Tiene dos opciones:

* **Conozco el Sistema de Referencia de Coordenadas Vertical de este modelo y quiero indicar cuál es.**: muestra el cuadro de selección de sistema de referencia de coordenadas vertical. El proyecto usa el sistema horizontal del archivo con el vertical seleccionado. Si se cancela el cuadro de selección, actúa como la opción siguiente.
* **Desconozco el Sistema de Referencia de Coordenadas de este modelo.**: el proyecto usa el sistema horizontal del archivo con un sistema vertical desconocido. Digi3D.AI no transforma la coordenada Z.

Aunque el texto de las opciones dice que se modificará el archivo, Digi3D.AI no escribe nada en el archivo de proyecto: la elección no se guarda y el cuadro vuelve a aparecer cada vez que se carga el proyecto.

Un proyecto de Inpho puede declarar en `$COORDINATE_SYSTEM` un sistema de Esri con un `VERTCS` a continuación del `PROJCS`, por ejemplo `PROJCS["ETRS_1989_UTM_Zone_30N",…],VERTCS["EGM2008_Geoid",…]`. Si Digi3D.AI reconoce los dos como sistemas de EPSG, el proyecto usa el sistema compuesto equivalente (en el ejemplo, ETRS89 / UTM zone 30N + EGM2008 height) y el cuadro no aparece.

## Mensajes de error al cargar un proyecto

* «No hemos localizado ninguna extensión que permita abrir el archivo seleccionado.»: ningún sensor instalado reconoce el archivo.
* «El archivo de proyecto no proporciona ningún punto de vista, así que no se puede cargar ningún modelo de él.»
* «No se puede cargar un proyecto mientras se está cargando un modelo en segundo plano. Espera a que termine.»

## Barra de herramientas

Dispone de una barra de herramientas que permite interactuar con el contenido del panel.

### Botones

* **Nuevo**: crea un nuevo archivo de proyecto fotogramétrico.
* **Cargar**: carga un archivo de proyecto fotogramétrico existente. Sin licencia de fotogrametría, el botón no carga nada.
* **Descargar**: descarga el proyecto fotogramétrico cargado.

**Cargar** y **Descargar** están deshabilitados mientras se carga un modelo en segundo plano.
* **Cambio automático de modelo**: activa o desactiva el cambio automático de modelo.
* **Punto de vista**: desplegable que permite seleccionar el punto de vista en caso de que el archivo de proyecto fotogramétrico cargado proporcione distintos puntos de vista desde una misma estación.
* **Abrir en ventana nueva**: si está activado, al pulsar sobre un modelo se abre en una ventana fotogramétrica nueva en lugar de cambiar el modelo de la ventana fotogramétrica activa.
* **Ir al modelo anterior** e **Ir al siguiente modelo** (flechas izquierda y derecha): cargan en la ventana fotogramétrica activa el modelo anterior o el siguiente de la misma pasada.
* **Ir al modelo de la pasada anterior** e **Ir al modelo de la pasada siguiente** (flechas arriba y abajo): cargan en la ventana fotogramétrica activa, de entre los modelos de la pasada anterior o de la siguiente, el más adecuado para la posición del cursor.

Los botones de las flechas solo están habilitados cuando hay un proyecto fotogramétrico cargado y una ventana fotogramétrica abierta.

## Mostrar el panel

Se puede mostrar el panel de las siguientes formas:

* Pulsa el botón correspondiente en la [barra de herramientas Paneles](../barras-de-herramientas/paneles.md).
* Selecciona la opción del menú **Ventana/Proyecto fotogramétrico**.
