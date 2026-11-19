# El espacio de trabajo
<!-- id: topcal21-web-espacio-de-trabajo -->

El espacio de trabajo reproduce la ventana principal de [Topcal21 para Windows](../introduccion/interfaz-de-usuario.md): barra de menús, barra de botones, panel del proyecto, rejilla del documento activo y barra de estado.

## Abrir el espacio de trabajo

La web abre el espacio de trabajo de dos maneras:

* Con el botón **Abrir en Topcal21** de un archivo `.prt`, `.pts` u `.obs` en [Mis archivos](mis-archivos.md). La web abre ese archivo.
* Al entrar en `https://topcal21.ai` con la sesión iniciada y la cuenta activa o suspendida. La web abre el último proyecto usado si la preferencia **Cargar automáticamente el último proyecto** está marcada (lo está por defecto). Si el proyecto ya no existe en «Mis archivos», la web lo quita de «Proyectos recientes» y lo avisa en la barra de estado.

Cada pestaña del navegador mantiene su propia sesión de trabajo con sus archivos abiertos.

## Elementos de la ventana

### Barra de menús

Los menús son Archivo, Editar, Ver, Herramientas, Cálculos, Dibujo y Ayuda, con las entradas de [Topcal21 para Windows](../menus-de-la-aplicacion/README.md), excepto Imprimir, Presentación preliminar, Configurar impresora, Abrir carpeta contenedora, Actualizar y Calculadora, que la web no incluye. Una entrada que la web todavía no ejecuta aparece deshabilitada, y su información sobre herramientas muestra «No disponible en la web». Las [diferencias con Windows](diferencias-con-el-escritorio.md) enumeran esas entradas.

### Barra de botones superior

Los botones, de izquierda a derecha, son: **Panel**, **Nuevo**, **AbreArch**, **AbreProy**, **SalvaProy**, **Salva**, **Inserta**, **Elimina**, **Agrega**, **Deshacer**, **Rehacer**, **Borra**, **Recupera**, **SistRef** e **Instrum**. Cada botón ejecuta la misma orden que su entrada de menú. **Agrega** (Agregar archivo) todavía no está disponible.

### Panel del proyecto

El panel de la izquierda contiene un botón por grupo: **Otros archivos** y, si hay un proyecto abierto, el proyecto. Al pulsar un botón, el panel muestra los iconos de los archivos del grupo. Un clic en un icono activa el documento y muestra su rejilla. Un asterisco (`*`) tras el nombre indica que el archivo o el proyecto tienen cambios sin guardar. Un icono distinto marca un archivo del proyecto que no está en «Mis archivos» o que no es un archivo de Topcal21 válido.

El botón **Panel** de la barra superior muestra u oculta el panel. En ventanas de 768 píxeles de ancho o más, el panel está visible al abrir el espacio de trabajo. En ventanas de menos de 768 píxeles, el panel está oculto y el botón **Panel** lo muestra encima de la rejilla.

### Documento activo

El área central muestra la [rejilla](rejillas-de-puntos-y-de-visuales.md) del documento activo, que puede ser un archivo de puntos o de visuales. Sin documentos abiertos, el área muestra el texto «Abre un proyecto (.prt) o un archivo de puntos (.pts) o de visuales (.obs) con «AbreProy» o «AbreArch», o desde «Mis archivos».». Un archivo `.crq` del proyecto aparece en el panel, pero la web todavía no lo abre.

### Barra de botones inferior

Los botones de la barra inferior abren los [asistentes de cálculo](calculos.md): **Orienta**, **Cierre**, **Replanteo**, **Transfor.** y **Libreta**, y después **Radiación**, **Directas**, **Inversas**, **Hansen**, **B.Mixta**, **Altimetría**, **Poligonal** y **Comp3D**. **Transfor.** y **Comp3D** todavía no están disponibles.

### Barra de estado

De izquierda a derecha, la barra de estado muestra el último aviso («Preparado» si no hay ninguno), «Solo lectura» con la cuenta suspendida, el espacio usado y el espacio máximo de la cuenta, el nombre y el número de registros del documento activo, y «Cambios sin guardar» cuando hay algún documento modificado.

## Idioma, tema y cuenta

En la esquina superior derecha hay tres controles:

* El selector de idioma (**ES** o **EN**) carga la página en el otro idioma. Si hay cambios sin guardar, el navegador pide confirmación antes de salir de la página.
* El botón de tema alterna entre el tema claro y el tema oscuro. La web guarda la elección en una cookie durante un año.
* El menú de la cuenta contiene **Mis archivos**, **Alta en Topcal21** (solo si la cuenta no está activa ni suspendida) y **Cerrar sesión**.

## Qué órdenes están habilitadas

Las órdenes siguen las mismas reglas de habilitación que en Windows. Por ejemplo, las herramientas de cálculo necesitan un proyecto abierto, «Importar...» necesita un documento de puntos o de visuales activo y «Guardar» solo está habilitada si el documento activo tiene cambios. Con la cuenta suspendida, la web deshabilita las órdenes que modifican documentos o escriben en «Mis archivos».

## Guardar los cambios

La web mantiene las ediciones en la sesión hasta que se ejecuta **Guardar**, **Guardar proyecto** o **Guardar todo**. Cerrar un documento o un proyecto con cambios sin guardar pide confirmación. Cerrar o recargar la pestaña con cambios sin guardar hace que el navegador pida confirmación.

**Guardar como...** pide un nombre y guarda el documento en la misma carpeta y con la misma extensión.

Si el archivo cambió en «Mis archivos» desde que se abrió, por ejemplo porque se subió otra versión, **Guardar** muestra el cuadro «El archivo ha cambiado» con estas opciones:

* **Recargar**: descarta los cambios hechos en la sesión y abre la versión de «Mis archivos».
* **Guardar como**: guarda los cambios con otro nombre en la misma carpeta.
* **Sobrescribir**: sustituye la versión de «Mis archivos» por la versión de la sesión.
* **Cancelar**: no guarda.

Si el archivo se borró de «Mis archivos» desde que se abrió, el cuadro «El archivo se ha eliminado» ofrece **Guardar** (crea el archivo de nuevo con los cambios) y **Guardar como**.

## Menú Ayuda

* **Temas de ayuda** abre esta ayuda en una pestaña nueva, en el idioma de la página.
* **Crear ticket de soporte técnico** abre en una pestaña nueva el formulario de soporte de www.digi21.net. Ver [Soporte técnico](soporte-tecnico.md).
* **Acerca de TopCal 21...** muestra un cuadro con enlaces a www.digi21.net, a la página de Topcal21 y al soporte técnico.
