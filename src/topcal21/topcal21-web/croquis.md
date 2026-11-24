# Croquis
<!-- id: topcal21-web-croquis -->

Un croquis (`.crq`) contiene las entidades de dibujo de un proyecto (líneas, arcos, símbolos, textos y hojas) y las rutas de los archivos de puntos con los que está relacionado. Topcal21 web abre, dibuja, edita, guarda y exporta croquis con las reglas de [Topcal21 para Windows](../estructura-de-archivos/fichero-de-croquis.md).

## Abrir y crear un croquis

* Un croquis del proyecto se abre al pulsar su icono en el [panel del proyecto](espacio-de-trabajo.md).
* **Archivo › Abrir...** (botón **AbreArch**) abre el selector de «Mis archivos» con los archivos `.pts`, `.obs` y `.crq` de la carpeta actual. El croquis se añade al grupo «Otros archivos».
* El botón **Abrir en Topcal21** de un archivo `.crq` en [Mis archivos](mis-archivos.md) abre el croquis en el espacio de trabajo.
* **Archivo › Nuevo...** abre el cuadro «Fichero nuevo». El tipo **Croquis** solo está en la lista cuando hay un proyecto abierto. Escribe el nombre del croquis, sin la extensión `.crq`, y pulsa **Aceptar**. La web añade el croquis, sin elementos, al proyecto abierto y a su carpeta; el croquis queda con cambios sin guardar hasta que se ejecuta **Guardar** o **Guardar proyecto**. A continuación la web abre el cuadro «Relacionar ficheros de puntos».

El nombre del croquis no puede estar vacío ni contener los caracteres `\ / : * ? " < > |`, y no puede coincidir con el nombre de otro archivo del proyecto ni con un archivo que ya existe en la carpeta del proyecto en «Mis archivos».

Los asistentes de cálculo también crean o amplían croquis. Ver [Incluir en croquis](calculos.md#incluir-en-croquis).

## La vista de dibujo

Con un croquis activo, el área central del [espacio de trabajo](espacio-de-trabajo.md) muestra el croquis en una vista de dibujo del navegador. La barra inferior de cálculo se sustituye por las barras **Dibujo** y **Paleta**, y el menú Dibujo y las órdenes de edición del croquis quedan habilitados. La barra de estado muestra las instrucciones de la herramienta activa.

Las barras tienen una posición fija: no se pueden acoplar ni mover.

### Barra Dibujo

La barra [Dibujo](../barras-de-herramientas/barra-de-herramientas-dibujo.md) tiene los botones **Línea**, **Círculo**, **Cuadro**, **Rectang**, **Símbolo**, **ZoomE**, **ZoomXY**, **Regen**, **Códigos**, **Croquis**, **LibSimb** y **Hoja**. Cada botón ejecuta la misma orden que su entrada del menú Dibujo o del menú Editar.

### Barra Paleta

La barra [Paleta](../barras-de-herramientas/barra-de-herramientas-paleta.md) tiene los botones **Puntero**, **Info**, **Zoom**, **Centrar**, **Zoom V**, **Mover V**, **Borrar** y **Rotar**. Un botón de la paleta queda marcado mientras su herramienta está activa. El botón **Rotar** está siempre deshabilitado, igual que en Topcal21 para Windows.

Con la herramienta **Puntero**, el botón derecho del ratón abre un menú con **Ver preferencias...**, **Insertar hoja...**, **Propiedades del objeto...** y **Copiar** (esta última entrada permanece deshabilitada con un croquis).

### Zoom y desplazamiento

| Acción | Efecto |
|---|---|
| **Dibujo › Zoom extensión** (botón **ZoomE**) | Ajusta la vista para mostrar todo el croquis. |
| **Dibujo › Regenera vista** (botón **Regen**, tecla **F5**) | Vuelve a dibujar el croquis. |
| **Dibujo › Zoom centrado...** (botón **ZoomXY**) | Pide un punto o unas coordenadas y centra la vista en ese punto sin cambiar la escala. |
| **Dibujo › Aumentar Zoom** (tecla **Av Pág**) y **Reducir Zoom** (tecla **Re Pág**) | Cambian el zoom en el centro de la ventana. |
| **Dibujo › Mover ventana** (botón **Mover V**) | Mueve la vista con el botón izquierdo pulsado. Mantén pulsada la barra espaciadora para usar esta herramienta temporalmente. |
| Herramienta **Zoom** (botón **Zoom**) | El botón izquierdo acerca la vista y el botón derecho la aleja. Mantén pulsada la tecla **Ctrl** para usar esta herramienta temporalmente. |
| Herramienta **Centrar** | Centra la vista en el punto pulsado con el botón izquierdo. |
| Herramienta **Zoom V** | La primera pulsación izquierda fija una esquina de la ventana, la segunda fija la esquina opuesta y el botón derecho cancela. |
| Rueda del ratón | Cada paso de la rueda acerca o aleja la vista en el centro de la ventana. |
| Flechas | Las flechas izquierda y derecha desplazan la vista un 75 % del ancho de la ventana; las flechas arriba y abajo, un 75 % de su altura. |

## Editar el croquis

Las órdenes del menú Dibujo y de las barras funcionan como en Topcal21 para Windows; ver [Menú Dibujo](../menus-de-la-aplicacion/menu-dibujo.md). Las herramientas gráficas eligen puntos de los archivos de puntos relacionados con el croquis.

| Orden | Explicación en Topcal21 para Windows |
|---|---|
| Insertar línea (herramienta gráfica y **Insertar por teclado › Línea...**) | [Dibujar entidad](../dibujo/dibuja-entidad.md) |
| Insertar cuadrado (herramienta gráfica y **Insertar por teclado › Cuadrado...**) | [Insertar cuadrado](../dibujo/insertar-cuadrado.md) |
| Insertar rectángulo (herramienta gráfica y **Insertar por teclado › Rectángulo...**) | [Insertar rectángulo](../dibujo/insertar-rectangulo.md) |
| Insertar círculo... | [Insertar círculo](../dibujo/insertar-circulo.md) |
| Insertar símbolo... | [Insertar símbolo](../dibujo/insertar-simbolo.md) |
| Insertar hoja... | [Insertar hoja](../dibujo/insertar-hoja.md) |
| Cortar línea... y Juntar líneas... | [Menú Dibujo](../menus-de-la-aplicacion/menu-dibujo.md) |
| Información de elemento (herramienta **Info**) | [Información del punto](../dibujo/informacion-del-punto.md), [precisión planimétrica](../dibujo/informacion-de-la-precision-planimetrica.md) y [precisión altimétrica](../dibujo/informacion-de-la-precision-altimetrica.md) |
| Borrar entidades (herramienta **Borrar**) | [Menú Dibujo](../menus-de-la-aplicacion/menu-dibujo.md) |
| Releer códigos de croquización | [Menú Dibujo](../menus-de-la-aplicacion/menu-dibujo.md) |

En las herramientas gráficas:

* El botón izquierdo del ratón elige el punto que está bajo el cursor. Una pulsación sin punto bajo el cursor no hace nada.
* En la herramienta **Línea**, **Mayúsculas** + botón izquierdo elige un punto de arco.
* La tecla **Retroceso** borra el último punto elegido.
* El botón derecho termina la entidad y abre el cuadro donde se elige la capa.
* En la herramienta **Borrar**, el botón izquierdo selecciona una entidad o, al arrastrar, todas las entidades de una ventana. Una pulsación posterior del botón izquierdo borra la selección.

Si el croquis no tiene ningún archivo de puntos relacionado, las órdenes de inserción muestran un mensaje de error.

La orden **Insertar paralela...** no está disponible en la web.

Las ediciones del croquis son pasos del historial de **Deshacer** y **Rehacer**. Con la cuenta suspendida, la web deshabilita las órdenes que modifican el croquis.

## Relacionar archivos de puntos y croquizar por códigos

**Editar › Relacionar ficheros de puntos...** abre un cuadro con los archivos de puntos del proyecto que no están relacionados con el croquis y los que sí lo están. Los botones **<<** y **>>** pasan los archivos seleccionados de una lista a la otra, y los campos de separadores indican cómo se leen los códigos de los puntos. Al aceptar, la web ofrece añadir a la librería de códigos de croquización los códigos de los puntos que no figuran en ella y croquiza de nuevo los puntos. Esta orden no es un paso del historial: el croquis queda con cambios sin guardar que **Deshacer** no revierte. Ver [Menú Editar](../menus-de-la-aplicacion/menu-editar.md).

**Dibujo › Releer códigos de croquización** vuelve a leer el campo **Código** de los archivos de puntos relacionados y crea de nuevo las líneas automáticas.

## Preferencias del croquis

| Cuadro | Dónde se guarda | Explicación en Topcal21 para Windows |
|---|---|---|
| **Editar › Preferencias de croquis...** | `Preferencias.json` | [Preferencias de croquis](../opciones-de-visualizacion/preferencias-de-croquis.md) |
| **Editar › Lista de códigos de dibujo...** (botón **Códigos**) | `Preferencias.json` | [Listado de códigos de dibujo](../opciones-de-visualizacion/preferencias-de-dibujo/listado-de-codigos-de-dibujo.md) |
| **Editar › Lista de códigos de croquización...** (botón **Croquis**) | `Libreria de Codigos.ini` | [Lista de códigos de croquización](../opciones-de-visualizacion/preferencias-de-croquizacion/lista-de-codigos-de-croquizacion.md) |
| **Editar › Librería de símbolos...** (botón **LibSimb**) | `Simbolos.dat` | [Librería de símbolos](../opciones-de-visualizacion/preferencias-de-simbolizacion/libreria-de-simbolos.md) |

Los archivos están en la carpeta `.topcal21` del [espacio de archivos](preferencias-instrumentos-y-sistemas-de-referencia.md). Cada cuadro guarda los cambios al pulsar **Aceptar**. Si otro proceso modificó el archivo desde que se abrió el cuadro, la web lo indica y no guarda. Con la cuenta suspendida, la web no guarda los cambios de estos cuadros.

Estos botones están deshabilitados en la web:

* **Carga Digi.Tab** y **Carga Xml** del cuadro «Lista de códigos».
* **Carga desde DGN...** del cuadro «Librería de símbolos».

Los botones **Cargar...** de las listas y librerías de códigos leen un archivo del ordenador del usuario. Los botones **Salvar...** de la lista de códigos de dibujo y de la librería de códigos de croquización descargan al ordenador los archivos `Codigos_dibujo.txt` y `Codigos.txt`.

## Exportar un croquis

**Archivo › Exportar...** está habilitada cuando el documento activo es un croquis; la web no exporta archivos de puntos ni de visuales. El cuadro «Exportar archivo» pide:

* El **Tipo** de archivo: DIGI (`.bin`), DXF (`.dxf`), DXF 2000 (`.dxf`), ASCII de DIGI (`.asc`) o KML (`.kml`). El tipo DGN aparece deshabilitado.
* El nombre del archivo, que la web escribe en la carpeta del croquis de «Mis archivos». Si ya existe un archivo con ese nombre, la web pide confirmación antes de sustituirlo.
* El **Denominador de la escala**, que la web usa para calcular el tamaño de los textos y de los símbolos en coordenadas del terreno. El valor inicial es la escala del croquis y debe ser un entero mayor que 0.
* Las casillas **Exportar símbolos como puntos** y, con los tipos DXF y DXF 2000, **Exportar entidades en 2 dimensiones**. La web recuerda el estado de las dos casillas.

La exportación se cancela si dura más de 60 segundos o si el archivo resultante supera el tamaño máximo de archivo de la cuenta.

## Propiedades del croquis

**Ver › Propiedades del objeto...** con un croquis activo abre el cuadro de propiedades del croquis (nombre, escala, exageraciones y archivos de puntos relacionados). Ver [Propiedades del archivo de croquis](../opciones-de-visualizacion/propiedades-de-los-objetos/propiedades-del-archivo-de-croquis.md) y [Proyectos](proyectos.md#propiedades-del-objeto).
