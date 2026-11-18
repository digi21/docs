# Buscar raíles
<!-- id: linea-de-comando-buscar-railes -->

[Buscar raíles](/mdtopx/modulo-mms/ffcc/buscar-railes.md)

La orden **/RAILES** clasifica los puntos de una nube de puntos MMS (*Mobile Mapping System*, registro con un vehículo) que pertenecen a los raíles de una línea de ferrocarril (FFCC) y genera un archivo de dibujo con los límites y el eje de los raíles. Realiza la misma operación que el botón **Raíles** del panel **FFCC** de la ficha MMS, pero no muestra el cuadro de diálogo: lee las opciones de la sección **\[Asfalto]** del archivo MDTopX.ini. Esta sección es la misma que usa [/ASFALTO](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md); **/RAILES** no lee la sección **\[Railes]**.

Ejecuta antes [/SUELOFFCC](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-ffcc.md) sobre la misma nube de puntos.

Para ejecutar esta herramienta desde la línea de comando, escribe:

```bash
MDTopX [archivo de entrada] /RAILES [formato de salida]
```

Escribe el archivo de entrada antes de la orden.

## Archivos

* **Archivo de entrada**: una nube de puntos (por ejemplo, LAS o LAZ). Con un proyecto de MDTopX como archivo de entrada, MDTopX clasifica y guarda cada nube de puntos del proyecto, pero no genera el archivo de dibujo.
* **Formato de salida**: opcional. Es una de las palabras **DXF** (AutoCAD), **DGN** (MicroStation) o **SHP** (Shape), sin distinguir mayúsculas de minúsculas. MDTopX no interpreta el argumento como un nombre de archivo. Con cualquier otro valor, o si no escribes ningún argumento, MDTopX guarda el archivo de dibujo en el formato BIN (DIGI). Si escribes varios argumentos después de la orden, MDTopX usa el último.

La orden produce estos resultados:

1. MDTopX guarda la clasificación de los puntos en el archivo de entrada.
2. MDTopX crea un archivo de dibujo con los límites y el eje de los raíles. El nombre del archivo es el texto «Raíles de » seguido del nombre del archivo de entrada sin extensión, con la extensión del formato de salida (BIN, DXF, DGN o SHP). MDTopX crea el archivo en la carpeta del archivo de entrada. El texto «Raíles de » depende del idioma de MDTopX: en inglés es «Railways of ».

Por ejemplo, con la nube `via.las` y el formato **DXF**, MDTopX crea `Raíles de via.dxf`.

La orden [/LINEASRAIL](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-rail.md) usa el mismo prefijo «Raíles de », por lo que da el mismo nombre de archivo para el mismo archivo de entrada y el mismo formato. Mueve o renombra el archivo que crea **/RAILES** antes de ejecutar **/LINEASRAIL**.

## Licencia

MDTopX termina sin ejecutar la orden si no encuentra la licencia de MDTopX. Con esa licencia, MDTopX calcula la clasificación y los límites, pero solo guarda el archivo de entrada y el archivo de dibujo si el equipo tiene la licencia del [módulo MMS](/mdtopx/modulo-mms/). Sin la licencia del módulo MMS, MDTopX cierra los documentos sin guardar y la orden no modifica ni crea ningún archivo.

## Configuración en MDTopX.ini

Para configurar la búsqueda, MDTopX.ini debe contener la línea **\[Asfalto]**. Si una clave no está en MDTopX.ini o su valor está vacío, MDTopX usa el valor que tiene guardado en la configuración del usuario y, si no hay ninguno guardado, el valor predeterminado que se indica aquí. MDTopX lee como máximo 255 caracteres de cada valor.

**/RAILES** lee estas claves de la sección **\[Asfalto]**:

* **DistanciaMax**, **SzTraza** y **CodEjeTrazado**: se describen en la página de [/ASFALTO](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md).
* **EsAereo**: 0 o 1. Escribe 1 si el registro es de fotogrametría aérea (posiblemente UAV). Valor predeterminado: 0.
* **AnchoVia**: ancho de la vía que se busca, en milímetros. Valor predeterminado: 1668.
* **AltoMaxRailes**: altura máxima, en metros, de la parte superior de los raíles sobre el suelo. Valor predeterminado: 0.4.
* **AnchoRailes**: ancho de cada raíl, en metros. Valor predeterminado: 0.1.
* **IntensidadMax**: intensidad máxima de los puntos de un raíl. Valor predeterminado: 1500.
* **BuscarOtrosRailes**: 0 o 1. Con 1, MDTopX busca otros raíles por donde no ha pasado el vehículo. Valor predeterminado: 1.
* **TipoRailes**: número de clase LiDAR, de 0 a 255, de los puntos de los raíles. Valor predeterminado: 92.
* **TipoOtrosRailes**: número de clase LiDAR de los puntos de los otros raíles. Valor predeterminado: 93.
* **TipoTraviesas**: número de clase LiDAR de los puntos de las traviesas. Valor predeterminado: 90.
* **CodRailes**: código de los límites de los raíles en el archivo de dibujo. Valor predeterminado: RAIL.
* **CodEjeRailes**: código del eje de los raíles en el archivo de dibujo. Valor predeterminado: EJERailes.

```ini
[Asfalto]
DistanciaMax = 0.1
EsAereo = 0
AnchoVia = 1668
AltoMaxRailes = 0.4
AnchoRailes = 0.1
IntensidadMax = 1500
BuscarOtrosRailes = 1
TipoRailes = 92
CodRailes = RAIL
CodEjeRailes = EJERailes
```

Es indiferente que los nombres de las secciones y de las claves estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
* [Clasificar suelo de FFCC](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-ffcc.md)
* [Buscar líneas de raíl](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-rail.md)
