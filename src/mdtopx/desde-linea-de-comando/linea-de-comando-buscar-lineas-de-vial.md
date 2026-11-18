# Buscar líneas de vial
<!-- id: linea-de-comando-buscar-lineas-de-vial -->

[Buscar líneas de vial](/mdtopx/modulo-mms/trazado/buscar-lineas-de-vial/)

La orden **/LINEASVIAL** calcula, a partir de los puntos de una nube de puntos MMS (*Mobile Mapping System*, registro con un vehículo) que ya están clasificados como asfalto, marcas viales y bordillos, los límites del asfalto, las líneas blancas, los ejes, los carriles y los transversales de una carretera, y los guarda en un archivo de dibujo. Realiza la misma operación que el botón **Líneas vial** del panel **Trazado** de la ficha MMS, pero no muestra el cuadro de diálogo: lee las opciones de la sección **\[LineaBlanca]** del archivo MDTopX.ini.

Ejecuta antes [/SUELOVIAL](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-trazado.md) y [/ASFALTO](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md) sobre la misma nube de puntos. **/LINEASVIAL** selecciona los puntos por su clase LiDAR (claves **TipoAsfalto**, **TipoLineaBlanca** y las demás de la sección *Clases de los puntos*).

Para ejecutar esta herramienta desde la línea de comando, escribe:

```bash
MDTopX [archivo de entrada] /LINEASVIAL [formato de salida]
```

Escribe el archivo de entrada antes de la orden.

## Archivos

* **Archivo de entrada**: una nube de puntos (por ejemplo, LAS o LAZ) o un proyecto de MDTopX que contiene nubes de puntos.
* **Formato de salida**: opcional. Es una de las palabras **DXF** (AutoCAD), **DGN** (MicroStation) o **SHP** (Shape), sin distinguir mayúsculas de minúsculas. MDTopX no interpreta el argumento como un nombre de archivo. Con cualquier otro valor, o si no escribes ningún argumento, MDTopX guarda los archivos de dibujo en el formato BIN (DIGI). Si escribes varios argumentos después de la orden, MDTopX usa el último.

La orden produce estos archivos:

1. **Archivo de entrada**: MDTopX guarda el archivo de entrada.
2. **Marcas viales de nube.ext**: archivo de dibujo con los límites, los ejes, los carriles y los demás elementos que calcula. El nombre es el texto «Marcas viales de » seguido del nombre del archivo de entrada sin extensión, con la extensión del formato de salida. MDTopX crea el archivo en la carpeta del archivo de entrada; con un proyecto, en la carpeta del archivo del proyecto y con el título del proyecto en lugar del nombre de la nube. El texto «Marcas viales de » depende del idioma de MDTopX: en inglés es «Road markings of ».
3. **Archivo ASCII de transversales**: si **Transversales** es 1, MDTopX escribe un archivo de texto con los transversales. Su nombre es el valor de **FicheroTransv**. Si **FicheroTransv** no incluye una carpeta, MDTopX lo crea en la carpeta del archivo de entrada. MDTopX escribe este archivo aunque el equipo no tenga la licencia del módulo MMS.
4. **Perfiles de nube.ext**: archivo de dibujo con el perfil longitudinal del eje del asfalto. MDTopX lo crea solo si **DibujoLongitudinal** es 1 y los transversales están activos. El texto «Perfiles de » en inglés es «Profiles of ».
5. **Transversales de nube.ext**: archivo de dibujo con los perfiles transversales. MDTopX lo crea solo si **DibujoTransversales** es 1 y los transversales están activos. MDTopX indica el nombre sin carpeta, por lo que el sistema operativo crea el archivo en el directorio de trabajo de MDTopX. El texto «Transversales de » en inglés es «Cross sections of ».

Por ejemplo, con la nube `carretera.las` y el formato **DXF**, MDTopX crea `Marcas viales de carretera.dxf`.

## Licencia

MDTopX termina sin ejecutar la orden si no encuentra la licencia de MDTopX. Con esa licencia, MDTopX calcula el resultado. Para guardar los archivos tiene que haber licencias:

* **Licencia del [módulo MMS](/mdtopx/modulo-mms/)**: necesaria para guardar el archivo de entrada, el archivo **Marcas viales de** y el archivo **Perfiles de**. Sin ella, MDTopX cierra los documentos sin guardar y no crea esos archivos.
* **Licencia de MDTopX**: necesaria para crear el archivo **Transversales de**.

## Configuración en MDTopX.ini

Para configurar el cálculo, MDTopX.ini debe contener la línea **\[LineaBlanca]** seguida de las claves siguientes. Si una clave no está en MDTopX.ini o su valor está vacío, MDTopX usa el valor que tiene guardado en la configuración del usuario y, si no hay ninguno guardado, el valor predeterminado que se indica aquí. MDTopX lee como máximo 255 caracteres de cada valor.

### Parámetros generales

* **DistanciaMax**: distancia máxima, en metros, entre puntos para calcular el asfalto. Para calcular las líneas blancas, MDTopX usa la mitad de este valor. Valor predeterminado: 0.1.
* **DistanciaMaxLineaBlanca**: distancia máxima, en metros, entre trozos de línea blanca o de eje para unirlos como un carril. Si no se calculan carriles ni ejes, MDTopX no la usa. Valor predeterminado: 20.
* **SzTraza**: ruta completa de un archivo opcional que contiene la trayectoria de la carretera. Puede ser un archivo de vial o un archivo de dibujo (BIN, DXF, DGN o Shape). Valor predeterminado: vacío.
* **TipoTrazaInput**: contenido del archivo de dibujo indicado en **SzTraza**. 0 (el archivo contiene el eje) o 1 (el archivo contiene las dos líneas blancas exteriores, una a cada lado). Valor predeterminado: 0.
* **TrazaInputConCota**: 0 o 1. Escribe 1 si la traza de **SzTraza** tiene una cota válida. Valor predeterminado: 0.
* **XPkInicio**, **YPkInicio**: coordenadas X e Y del punto del eje donde empieza la numeración de puntos kilométricos (PK). MDTopX las aplica solo si las dos son distintas de 0. Valor predeterminado: 0.
* **PkInicio**: PK del punto indicado por **XPkInicio** y **YPkInicio**. Valor predeterminado: 0.
* **AjustarEjeAsfalto**: 0 o 1. Con 1, MDTopX ajusta el eje del asfalto. Valor predeterminado: 1.

### Qué calcular

* **Asfalto**: 0 o 1. Con 1, MDTopX calcula el límite del asfalto. Valor predeterminado: 1.
* **OtroAsfalto**: 0 o 1. Con 1, MDTopX calcula el límite de otro tipo de asfalto, por ejemplo servicios afectados. Valor predeterminado: 0.
* **LineaBlanca**: 0 o 1. Con 1, MDTopX calcula el límite de las líneas blancas. Valor predeterminado: 1.
* **LineaBlancaSup**: 0 o 1. Con 1, MDTopX calcula el límite de las líneas blancas superficiales. Valor predeterminado: 0.
* **Bordillos**: 0 o 1. Con 1, MDTopX calcula los bordillos. Valor predeterminado: 1.
* **EjeAsfalto**: 0 o 1. Con 1, MDTopX calcula el eje del asfalto. Valor predeterminado: 1.
* **EjeLineaBlanca**: 0 o 1. Con 1, MDTopX calcula los ejes de las líneas blancas. Valor predeterminado: 1.
* **Carriles**: 0 o 1. Con 1, MDTopX calcula los carriles. Valor predeterminado: 1.
* **Discontinuas**: 0 o 1. Con 1, MDTopX busca las líneas discontinuas. Valor predeterminado: 1.
* **Transversales**: 0 o 1. Con 1, MDTopX calcula los transversales. Valor predeterminado: 1.

MDTopX corrige las combinaciones incompatibles antes de calcular:

* Si **Asfalto** es 0, MDTopX aplica **EjeAsfalto** = 0.
* Si **LineaBlanca** es 0, MDTopX aplica **EjeLineaBlanca** = 0 y **Carriles** = 0.
* Si **EjeAsfalto** es 0 (por la clave o por la regla anterior), MDTopX aplica **Carriles** = 0 y **Transversales** = 0.
* Si **Carriles** es 1, MDTopX aplica **Transversales** = 1.

### Transversales y perfiles

* **DistanciaTransv**: distancia, en metros, entre transversales. Valor predeterminado: 10.
* **FicheroTransv**: nombre del archivo ASCII de transversales. Valor predeterminado: Transversales.asc.
* **SacarTextosTransv**: 0 o 1. Con 1, MDTopX escribe en el dibujo los textos de los transversales. Con un archivo de entrada que no es un proyecto, MDTopX escribe los textos aunque la clave valga 0. Valor predeterminado: 1.
* **CodTextosTransv**: código de los textos de los transversales. Valor predeterminado: TEXTOS.
* **AlturaTextosTransv**: altura de los textos de los transversales. Valor predeterminado: 1.
* **DibujoLongitudinal**: 0 o 1. Con 1, MDTopX crea el archivo con el perfil longitudinal. Valor predeterminado: 0.
* **DibujoTransversales**: 0 o 1. Con 1, MDTopX crea el archivo con los perfiles transversales. Valor predeterminado: 0.

### Clases de los puntos

Cada clave es el número de clase LiDAR, de 0 a 255, de los puntos que MDTopX usa. Si el valor es 0, MDTopX usa el valor predeterminado de la clave.

* **TipoAsfalto**: puntos de asfalto. Valor predeterminado: 35.
* **TipoOtroAsfalto**: puntos de otro asfalto. Valor predeterminado: 39.
* **TipoLineaBlanca**: puntos de línea blanca. Valor predeterminado: 36.
* **TipoLineaBlancaSup**: puntos de línea blanca superficial. Valor predeterminado: 37.
* **TipoBordillos**: puntos de bordillos. Valor predeterminado: 38.

### Códigos del archivo de dibujo

Cada clave es el código que MDTopX asigna a las entidades de ese tipo.

* **CodAsfalto**: límite del asfalto. Valor predeterminado: ASFALTO.
* **CodOtroAsfalto**: límite de otro asfalto. Valor predeterminado: OTROAS.
* **CodLineaBlanca**: límite de las líneas blancas. Valor predeterminado: LB.
* **CodLineaBlancaSup**: límite de las líneas blancas superficiales. Valor predeterminado: LBSUP.
* **CodEjeAsfalto**: eje del asfalto. Valor predeterminado: EJEASFALTO.
* **CodEjeLineaBlanca**: eje de las líneas blancas. Valor predeterminado: EJELB.
* **CodCarriles**: línea de los carriles. Valor predeterminado: CARRIL.
* **CodCarrilesDis**: línea de los carriles discontinuos. Valor predeterminado: CARDIS.
* **CodSuelo**: suelo en los transversales. Valor predeterminado: SUELO.
* **CodTecho**: techo en los transversales. Valor predeterminado: TECHO.
* **CodBordilloArriba**: línea superior de los bordillos. Valor predeterminado: BOR_AR.
* **CodBordilloAbajo**: línea inferior de los bordillos. Valor predeterminado: BOR_AB.

### Claves de perfiles y de geometría

La sección **\[LineaBlanca]** también contiene tres familias de claves que se escriben con un prefijo. Las órdenes [/LINEASRAIL](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-rail.md) y **/LINEASVIAL** comparten estas familias; la página de **/LINEASRAIL** remite a esta lista.

* **Perfiles\_\***: configuración de los perfiles, con los mismos nombres y significados que las claves de la sección **\[Perfiles]** descritas en [Perfiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md), escritas con el prefijo `Perfiles_`. Son, por ejemplo, `Perfiles_Traza`, `Perfiles_CodigoRasante`, `Perfiles_CodigoTerreno`, `Perfiles_EscalaHorizontal` (valor predeterminado 1000), `Perfiles_EscalaVertical` (valor predeterminado 500), `Perfiles_HayGuitarra` y `Perfiles_HayLongitudinal`. MDTopX lee `Perfiles_HayRasante`, pero la sustituye por 0 antes de calcular.
* **Guitarra\_\***: configuración de la guitarra de los perfiles, con los mismos nombres y significados que las claves `Guitarra_*` de la página [Perfiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md). Se escriben sin el prefijo `Perfiles_`; por ejemplo, `Guitarra_Altura`. Al dibujar los perfiles, MDTopX sustituye `Guitarra_CotaRasante`, `Guitarra_CotaRojaDesmonte` y `Guitarra_CotaRojaTerraplen` por 0.
* **Transversal\_\***: configuración de los perfiles transversales, con los mismos nombres y significados que las claves `Transversal_*` de la página [Perfiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md). Se escriben sin el prefijo `Perfiles_`; por ejemplo, `Transversal_AnchoIzq`. Cuando **DibujoTransversales** es 1, `Transversal_HayAlzado` (valor predeterminado 1) y `Transversal_FicAlzado` (valor predeterminado `Transver.asc`) determinan si MDTopX escribe el archivo ASCII de alzado y con qué nombre; MDTopX lo escribe solo con la licencia del módulo MMS y, si el nombre no incluye una carpeta, en la carpeta del archivo de entrada.
* **Geometria\_\***: configuración del cálculo de la geometría del eje (alineaciones y curvas). Claves: `Geometria_TolGeneralizacion` (valor predeterminado 0.05), `Geometria_TolAjuste` (valor predeterminado 0.30), `Geometria_RadioMin` (radio mínimo, en metros, para evitar puntos muy próximos; valor predeterminado 50), `Geometria_RadioMax` (radio máximo, en metros, para considerar que los puntos forman una recta; valor predeterminado 5000), `Geometria_SzFile` (valor predeterminado `salida.txt`) y `Geometria_BFile` (valor predeterminado 1).

```ini
[LineaBlanca]
DistanciaMax = 0.1
SzTraza = C:\Trabajo\eje.bin
TipoTrazaInput = 0
Asfalto = 1
LineaBlanca = 1
EjeAsfalto = 1
Carriles = 1
Transversales = 1
DistanciaTransv = 10
FicheroTransv = Transversales.asc
DibujoLongitudinal = 0
DibujoTransversales = 0
TipoAsfalto = 35
TipoLineaBlanca = 36
Perfiles_EscalaHorizontal = 1000
Perfiles_EscalaVertical = 500
```

Es indiferente que los nombres de las secciones y de las claves estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
* [Clasificar líneas de vial](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md)
* [Perfiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md)
