# Buscar líneas de raíl
<!-- id: linea-de-comando-buscar-lineas-de-rail -->

[Buscar líneas de raíl](/mdtopx/modulo-mms/ffcc/buscar-lineas-de-rail.md)

La orden **/LINEASRAIL** calcula, a partir de los puntos de una nube de puntos MMS (*Mobile Mapping System*, registro con un vehículo) que ya están clasificados como raíles, las líneas de los raíles, de los otros raíles, del túnel, de los andenes, de los muros y de las traviesas de una línea de ferrocarril (FFCC), junto con el eje y los transversales, y las guarda en un archivo de dibujo. Realiza la misma operación que el botón **Líneas raíles** del panel **FFCC** de la ficha MMS, pero no muestra el cuadro de diálogo: lee las opciones de la sección **\[Railes]** del archivo MDTopX.ini.

Ejecuta antes [/SUELOFFCC](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-ffcc.md) y [/RAILES](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md) sobre la misma nube de puntos. **/LINEASRAIL** selecciona los puntos por su clase LiDAR (claves **TipoRailes**, **TipoOtrosRailes** y las demás de la sección *Clases de los puntos*).

Para ejecutar esta herramienta desde la línea de comando, escribe:

```bash
MDTopX [archivo de entrada] /LINEASRAIL [formato de salida]
```

Escribe el archivo de entrada antes de la orden.

## Archivos

* **Archivo de entrada**: una nube de puntos (por ejemplo, LAS o LAZ) o un proyecto de MDTopX que contiene nubes de puntos.
* **Formato de salida**: opcional. Es una de las palabras **DXF** (AutoCAD), **DGN** (MicroStation) o **SHP** (Shape), sin distinguir mayúsculas de minúsculas. MDTopX no interpreta el argumento como un nombre de archivo. Con cualquier otro valor, o si no escribes ningún argumento, MDTopX guarda los archivos de dibujo en el formato BIN (DIGI). Si escribes varios argumentos después de la orden, MDTopX usa el último.

La orden produce estos archivos:

1. **Archivo de entrada**: MDTopX guarda el archivo de entrada.
2. **Raíles de nube.ext**: archivo de dibujo con las líneas que calcula. El nombre es el texto «Raíles de » seguido del nombre del archivo de entrada sin extensión, con la extensión del formato de salida. MDTopX crea el archivo en la carpeta del archivo de entrada; con un proyecto, en la carpeta del archivo del proyecto y con el título del proyecto en lugar del nombre de la nube. El texto «Raíles de » depende del idioma de MDTopX: en inglés es «Railways of ». La orden [/RAILES](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md) usa el mismo prefijo, por lo que da el mismo nombre de archivo para el mismo archivo de entrada y el mismo formato. Mueve o renombra el archivo que crea **/RAILES** antes de ejecutar **/LINEASRAIL**.
3. **Archivo ASCII de transversales**: si **Transversales** es 1, MDTopX escribe un archivo de texto con los transversales. Su nombre es el valor de **FicheroTransv**. Si **FicheroTransv** no incluye una carpeta, MDTopX lo crea en la carpeta del archivo de entrada. MDTopX escribe este archivo aunque el equipo no tenga la licencia del módulo MMS.
4. **Perfiles de nube.ext**: archivo de dibujo con el perfil longitudinal del eje. MDTopX lo crea solo si **DibujoLongitudinal** es 1 y los transversales están activos. El texto «Perfiles de » en inglés es «Profiles of ».
5. **Transversales de nube.ext**: archivo de dibujo con los perfiles transversales. MDTopX lo crea solo si **DibujoTransversales** es 1 y los transversales están activos. MDTopX indica el nombre sin carpeta, por lo que el sistema operativo crea el archivo en el directorio de trabajo de MDTopX. El texto «Transversales de » en inglés es «Cross sections of ».

Por ejemplo, con la nube `via.las` y el formato **DXF**, MDTopX crea `Raíles de via.dxf`.

## Licencia

MDTopX termina sin ejecutar la orden si no encuentra la licencia de MDTopX. Con esa licencia, MDTopX calcula el resultado. Para guardar los archivos tiene que haber licencias:

* **Licencia del [módulo MMS](/mdtopx/modulo-mms/)**: necesaria para guardar el archivo de entrada, el archivo **Raíles de** y el archivo **Perfiles de**. Sin ella, MDTopX cierra los documentos sin guardar y no crea esos archivos.
* **Licencia de MDTopX**: necesaria para crear el archivo **Transversales de**.

## Configuración en MDTopX.ini

Para configurar el cálculo, MDTopX.ini debe contener la línea **\[Railes]** seguida de las claves siguientes. Si una clave no está en MDTopX.ini o su valor está vacío, MDTopX usa el valor que tiene guardado en la configuración del usuario y, si no hay ninguno guardado, el valor predeterminado que se indica aquí. MDTopX lee como máximo 255 caracteres de cada valor.

### Parámetros generales

* **DistanciaMax**: distancia máxima, en metros, entre puntos. Valor predeterminado: 0.1.
* **DistanciaMaxEnElTunel**: distancia máxima, en metros, entre puntos dentro del túnel, en 3D. A partir de esta distancia, el hueco entre dos puntos puede ser una apertura del túnel. Valor predeterminado: 4.
* **SzTraza**: ruta completa de un archivo opcional que contiene la trayectoria de la vía. Puede ser un archivo de vial o un archivo de dibujo (BIN, DXF, DGN o Shape). Valor predeterminado: vacío.
* **TrazaInputConCota**: 0 o 1. Escribe 1 si la traza de **SzTraza** tiene una cota válida. Valor predeterminado: 0.
* **XPkInicio**, **YPkInicio**: coordenadas X e Y del punto del eje donde empieza la numeración de puntos kilométricos (PK). MDTopX las aplica solo si las dos son distintas de 0. Valor predeterminado: 0.
* **PkInicio**: PK del punto indicado por **XPkInicio** y **YPkInicio**. Valor predeterminado: 0.

### Qué calcular

* **Railes**: 0 o 1. Con 1, MDTopX calcula las líneas de los raíles. Valor predeterminado: 1.
* **OtrosRailes**: 0 o 1. Con 1, MDTopX calcula las líneas de otros raíles por donde no ha pasado el vehículo. Valor predeterminado: 1.
* **Tunel**: 0 o 1. Con 1, MDTopX calcula las líneas del túnel. Valor predeterminado: 1.
* **Andes**: 0 o 1. Con 1, MDTopX calcula las líneas de los andenes. El nombre de la clave que lee MDTopX es **Andes**, no «Andenes». Valor predeterminado: 1.
* **Pared**: 0 o 1. Con 1, MDTopX calcula las líneas de los muros. Valor predeterminado: 1.
* **Traviesas**: 0 o 1. Con 1, MDTopX calcula las traviesas. Valor predeterminado: 1.
* **EjeRailes**: 0 o 1. Con 1, MDTopX calcula el eje de cada raíl. Con una nube de puntos como archivo de entrada, MDTopX sustituye el valor por 0 y calcula el eje a partir de los raíles; con un proyecto como archivo de entrada, MDTopX respeta el valor de la clave. Valor predeterminado: 1.
* **EjeTrazado**: 0 o 1. Con 1, MDTopX calcula el eje del trazado. Valor predeterminado: 1.

### Transversales y perfiles

* **Transversales**: 0 o 1. Con 1, MDTopX calcula los transversales y escribe el archivo ASCII de transversales. Valor predeterminado: 1.
* **DistanciaTransv**: distancia, en metros, entre transversales. Valor predeterminado: 10.
* **FicheroTransv**: nombre del archivo ASCII de transversales. Valor predeterminado: Transversales.asc.
* **SacarTextosTransv**: 0 o 1. Con 1, MDTopX escribe en el dibujo los textos de los transversales. Con un archivo de entrada que no es un proyecto, MDTopX escribe los textos aunque la clave valga 0. Valor predeterminado: 1.
* **CodTextosTransv**: código de los textos de los transversales. Valor predeterminado: TEXTOS.
* **AlturaTextosTransv**: altura de los textos de los transversales. Valor predeterminado: 1.
* **DibujoLongitudinal**: 0 o 1. Con 1, MDTopX crea el archivo con el perfil longitudinal. Valor predeterminado: 0.
* **DibujoTransversales**: 0 o 1. Con 1, MDTopX crea el archivo con los perfiles transversales. Valor predeterminado: 0.

### Clases de los puntos

Cada clave es el número de clase LiDAR, de 0 a 255, de los puntos que MDTopX usa.

* **TipoRailes**: puntos de los raíles. Valor predeterminado: 92.
* **TipoOtrosRailes**: puntos de otros raíles. Valor predeterminado: 93.
* **TipoTunel**: puntos del túnel. Valor predeterminado: 102.
* **TipoPared**: puntos de los muros. Valor predeterminado: 120.
* **TipoAndenes**: puntos de los andenes. Valor predeterminado: 130.
* **TipoTraviesas**: puntos de las traviesas. Valor predeterminado: 90.

### Códigos del archivo de dibujo

Cada clave es el código que MDTopX asigna a las entidades de ese tipo.

* **CodRailes**: líneas de los raíles. Valor predeterminado: RAILES.
* **CodEjeRailes**: eje de los raíles. Valor predeterminado: EJERailes.
* **CodEjeTrazado**: eje del trazado. Valor predeterminado: EjeTrazado.
* **CodLimiteA**: límite A, cabeza de balasto. Valor predeterminado: LIM_A.
* **CodLimiteB**: límite B, pie de balasto. Valor predeterminado: LIM_B.
* **CodLimiteC**: límite C, comienzo del talud. Valor predeterminado: LIM_C.
* **CodSuelo**: líneas que representan el suelo. Valor predeterminado: SUELO.
* **CodTecho**: techo. Valor predeterminado: TECHO.
* **CodAndenes**: andenes. Valor predeterminado: ANDEN.
* **CodPared**: muros. Valor predeterminado: MURO.
* **CodTraviesas**: traviesas. Valor predeterminado: TRAVIESA.

### Claves de perfiles y de geometría

La sección **\[Railes]** contiene las mismas familias de claves con prefijo que la sección **\[LineaBlanca]**: `Perfiles_*`, `Guitarra_*`, `Transversal_*` y `Geometria_*`. Sus nombres, valores predeterminados y significados se describen en la página de [/LINEASVIAL](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-vial.md) y no se repiten aquí. Con **/LINEASRAIL**, MDTopX sustituye estos valores antes de dibujar los perfiles:

* `Perfiles_HayRasante` por 0.
* `Perfiles_CodigoOtros` por el valor de **CodTecho** y `Perfiles_CodigoObjetos` por el valor de **CodRailes**.
* `Guitarra_CotaRasante`, `Guitarra_CotaRojaDesmonte`, `Guitarra_CotaRojaTerraplen`, `Guitarra_Peraltes` y `Guitarra_Perfiles` por 0, y `Guitarra_Galibo` por 1.

```ini
[Railes]
DistanciaMax = 0.1
Railes = 1
OtrosRailes = 1
Tunel = 1
Andes = 1
Pared = 1
Traviesas = 1
EjeTrazado = 1
Transversales = 1
DistanciaTransv = 10
FicheroTransv = Transversales.asc
DibujoLongitudinal = 0
DibujoTransversales = 0
TipoRailes = 92
CodRailes = RAILES
```

Es indiferente que los nombres de las secciones y de las claves estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
* [Buscar raíles](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md)
* [Buscar líneas de vial](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-vial.md)
