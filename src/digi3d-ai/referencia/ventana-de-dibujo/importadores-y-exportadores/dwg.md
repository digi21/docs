# Archivos AutoCAD DWG
<!-- id: dwg -->

Importador y exportador de **Archivos AutoCAD DWG**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.dwg <Version> <RutaArchivoPlantilla> <ImportarBloques> <RutaImportacionBloques> <ImportarBloquesComoPuntualDigi> <ImportarPaleta> <UtilizarColoresArchivoDibujo>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Versión de AutoCAD | Sí |
| 2 | Ruta del archivo plantilla | Sí |
| 3 | Importar bloques (0/1) | Sí |
| 4 | Ruta de importación de bloques | Sí |
| 5 | Importar bloques como puntual de Digi (0/1) | Sí |
| 6 | Importar la paleta (0/1) | Sí |
| 7 | Utilizar los colores del archivo de dibujo (0/1) | Sí |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Archivo de plantilla | Archivo `.dwg`. Opcional. | Archivo que se usa como base al crear un archivo nuevo. Sin plantilla, el archivo nuevo se crea con las capas y los bloques de la tabla de códigos. |
| Versión | AutoCAD 11/12, 13, 14, 2000, 2004, 2007, 2010 o 2013. Por defecto, AutoCAD 2000. | Versión con la que se escribe el archivo. |
| Importar bloques como | Punto o elemento complejo puntual. Por defecto, Punto. | Con **Punto**, cada referencia de bloque se lee como un punto con su posición, su giro y su escala. Con **Elemento complejo puntual**, cada referencia de bloque se lee como un elemento complejo puntual que contiene las entidades del bloque. Las tablas y las referencias múltiples (MINSERT) no se leen como elemento complejo. |
| Importar bloques | Sí o No. Por defecto, No. | Al abrir un archivo existente, crea un archivo `.bin` por cada bloque en la carpeta de **Ruta de importación**. |
| Ruta de importación | Carpeta. | Carpeta donde se crean los archivos `.bin` de los bloques. |
| Importar paleta | Sí o No. Por defecto, No. | Al abrir un archivo existente, sustituye la paleta de la tabla de códigos por la paleta estándar de 256 colores de AutoCAD. No lee la paleta del archivo. |
| Utilizar colores archivo dibujo | Sí o No. Por defecto, No. | Con **Sí**, las entidades con color propio en el archivo conservan ese color. Con **No**, toman el color de su capa. |

Los archivos `.dxf` muestran las mismas propiedades y una más:

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Tipo de archivo | Ascii o Binario. Por defecto, Ascii. | Formato con el que se escribe el archivo `.dxf`. |

Las propiedades de los archivos `.dxf` se guardan aparte de las de `.dwg`. Si una propiedad nunca se ha guardado para `.dxf`, su valor inicial es el de `.dwg`.

Los archivos `.dxf` se pueden importar y exportar, pero no se pueden abrir en una ventana de dibujo.

### Parámetros de línea de comandos de los archivos DXF

La orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md) con la extensión `.dxf` recibe parámetros distintos de los de `.dwg`:

```
PARAMETROS_IMPORTACION=.dxf <Version> <Binario> <ImportarBloquesComoPuntualDigi> <UtilizarColoresArchivoDibujo>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Versión de AutoCAD (0 = AutoCAD 11/12 … 7 = AutoCAD 2013) | No |
| 2 | Tipo de archivo (0 = Ascii, 1 = Binario) | No |
| 3 | Importar bloques como punto (0/1) | No |
| 4 | Utilizar los colores del archivo de dibujo (0/1) | No |

En los parámetros de `.dwg`, la versión es también el índice de la lista (0 = AutoCAD 11/12 … 7 = AutoCAD 2013). Un parámetro de `.dwg` que se omite toma el valor 0 o vacío, no el valor guardado.

### Sistema de referencia de coordenadas

El sistema de referencia se guarda en un archivo `.prj` con el mismo nombre que el archivo de dibujo. Si ese archivo no existe (por ejemplo, al crear un archivo nuevo), Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo** y crea el `.prj` con el sistema elegido. Si el archivo se abre en solo lectura o se importa, no se crea el `.prj` y el sistema elegido solo se usa durante la sesión. Consulta [Ubicación del sistema de referencia de coordenadas](../../../sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/archivos-de-dibujo/ubicacion-src-archivos-dibujo.md).

### Polígonos y sombreados

Cada polígono se escribe como un sombreado (HATCH) de relleno sólido (`SOLID`) sin asociar, en la capa que da la traducción del código y con el color de la capa:

- Cada anillo exterior es un bucle del sombreado y cada hueco, otro bucle.
- Un elemento complejo formado solo por polígonos se escribe como un único sombreado con los bucles de todos sus polígonos, en la capa del código del elemento complejo. Los polígonos del complejo pierden su código propio: al leerlos, todos tienen el código de esa capa. Un elemento complejo con otras entidades no se escribe.
- El sombreado es plano: todos los vértices del polígono y de sus huecos toman la Z del primer vértice.
- No se escribe, y se informa del error, un polígono cuyo anillo exterior o alguno de sus huecos tiene menos de tres vértices.
- No se escribe, y se informa del error, una geometría que al leerla daría otros polígonos: polígonos de un complejo que se solapan, un polígono dentro de otro sin estar en uno de sus huecos, una isla igual a un hueco, o un hueco fuera de su polígono o igual a él.
- En AutoCAD 11/12 no existe el sombreado: el archivo guarda un bloque de triángulos rellenos (SOLID) con los datos del sombreado, y Digi3D.AI lo vuelve a leer como polígono. Otros programas pueden ver solo el bloque. Los códigos secundarios de la entidad no se conservan en esta versión.

Al leer un sombreado, Digi3D.AI convierte cada bucle cerrado en un anillo. Los arcos, las elipses y las curvas spline de los bordes se convierten en vértices con las opciones [Mínimo de puntos](../../cuadros-de-dialogo/configuracion/arcos-y-circunferencias/minimo-de-puntos.md) y [Máximo de puntos](../../cuadros-de-dialogo/configuracion/arcos-y-circunferencias/maximo-de-puntos.md) de la configuración: un arco recibe la parte de **Máximo de puntos** que corresponde a su ángulo, nunca menos que **Mínimo de puntos**. Los bucles se clasifican por inclusión geométrica según el estilo del sombreado:

| Estilo del sombreado | Bucles que son exterior | Bucles que son hueco |
| :--- | :--- | :--- |
| Normal | Los que están dentro de un número par de bucles (0, 2…) | Los que están dentro de un número impar de bucles |
| Exterior | Los que no están dentro de ningún bucle | Los que están dentro de un único bucle; los más interiores se descartan |
| Ignorar | Los que no están dentro de ningún bucle | Ninguno; los interiores se descartan |

Con un único bucle exterior se crea un polígono con sus huecos. Con varios, un elemento complejo con un polígono por cada exterior. Un sombreado sin bucles cerrados se lee como antes: como un elemento complejo con las entidades en las que se descompone. El patrón, la escala y el ángulo del sombreado no se leen, y al volver a guardar el polígono se escribe con relleno sólido.

### Códigos que no se exportan

Si en la tabla de códigos la traducción DWG de un código tiene **Traducir este código** = Falso (atributo `export="0"`), las entidades con ese código no se escriben en el archivo. Al almacenar una de esas entidades en una ventana de dibujo DWG, Digi3D.AI la descarta y muestra un globo: «El código *código* no se exporta a DWG (export="0" en la tabla de códigos); la entidad no se ha almacenado.». El globo aparece una vez por código mientras Digi3D.AI está abierto.

### Opciones de la configuración

El cuadro de diálogo Configuración tiene más opciones de este formato en [Importador/exportador de archivos DWG](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-dwg/README.md).

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.dwg` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
