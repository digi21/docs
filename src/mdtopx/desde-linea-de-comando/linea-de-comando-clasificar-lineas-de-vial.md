# Clasificar líneas de vial
<!-- id: linea-de-comando-clasificar-lineas-de-vial -->

[Clasificar líneas de vial](/mdtopx/modulo-mms/trazado/clasificar-lineas-de-vial.md)

La orden **/ASFALTO** clasifica los puntos de una nube de puntos MMS (*Mobile Mapping System*, registro con un vehículo) que pertenecen al asfalto, a las marcas viales, a los bordillos y a las aceras de una carretera, y genera un archivo de dibujo con los límites del asfalto y de las marcas viales. Realiza la misma operación que el botón **Asfalto** del panel **Trazado** de la ficha MMS, pero no muestra el cuadro de diálogo: lee las opciones de la sección **\[Asfalto]** del archivo MDTopX.ini y procesa todos los orígenes de puntos (identificadores de registro) del archivo.

Ejecuta antes [/SUELOVIAL](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-trazado.md) sobre la misma nube de puntos.

Para ejecutar esta herramienta desde la línea de comando, escribe:

```bash
MDTopX [archivo de entrada] /ASFALTO [formato de salida]
```

Escribe el archivo de entrada antes de la orden.

## Archivos

* **Archivo de entrada**: una nube de puntos (por ejemplo, LAS o LAZ) o un proyecto de MDTopX que contiene nubes de puntos.
* **Formato de salida**: opcional. Es una de las palabras **DXF** (AutoCAD), **DGN** (MicroStation) o **SHP** (Shape), sin distinguir mayúsculas de minúsculas. MDTopX no interpreta el argumento como un nombre de archivo. Con cualquier otro valor, o si no escribes ningún argumento, MDTopX guarda el archivo de dibujo en el formato BIN (DIGI). Si escribes varios argumentos después de la orden, MDTopX usa el último.

La orden produce estos resultados:

1. MDTopX guarda la clasificación de los puntos en el archivo de entrada. Si el archivo de entrada es un proyecto, MDTopX guarda cada nube de puntos del proyecto después de clasificarla.
2. MDTopX crea un archivo de dibujo con los límites del asfalto (la plataforma) y las marcas viales que calcula. El nombre del archivo es el texto «Asfalto de » seguido del nombre del archivo de entrada sin extensión, con la extensión del formato de salida (BIN, DXF, DGN o SHP). MDTopX crea el archivo en la carpeta del archivo de entrada; con un proyecto, en la carpeta del archivo del proyecto. El texto «Asfalto de » depende del idioma de MDTopX: en inglés es «Asphalt of ».

Por ejemplo, con la nube `carretera.las` y el formato **DXF**, MDTopX crea `Asfalto de carretera.dxf`.

## Licencia

MDTopX termina sin ejecutar la orden si no encuentra la licencia de MDTopX. Con esa licencia, MDTopX calcula la clasificación y los límites, pero solo guarda el archivo de entrada y el archivo de dibujo si el equipo tiene la licencia del [módulo MMS](/mdtopx/modulo-mms/). Sin la licencia del módulo MMS, MDTopX cierra los documentos sin guardar y la orden no modifica ni crea ningún archivo.

## Configuración en MDTopX.ini

Para configurar la clasificación, MDTopX.ini debe contener la línea **\[Asfalto]** seguida de las claves siguientes. Si una clave no está en MDTopX.ini o su valor está vacío, MDTopX usa el valor que tiene guardado en la configuración del usuario y, si no hay ninguno guardado, el valor predeterminado que se indica aquí. MDTopX lee como máximo 255 caracteres de cada valor.

La orden [/RAILES](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md) lee la misma sección **\[Asfalto]**. Las claves propias de los raíles se describen en la página de **/RAILES** y no se repiten aquí: **AltoMaxRailes**, **AnchoRailes**, **AnchoVia**, **BuscarOtrosRailes**, **CodEjeRailes**, **CodRailes**, **EsAereo**, **IntensidadMax**, **TipoOtrosRailes**, **TipoRailes** y **TipoTraviesas**.

### Parámetros generales

* **DistanciaMax**: distancia máxima, en metros, entre dos puntos para considerarlos vecinos en el espacio. Valor predeterminado: 0.1.
* **SzTraza**: ruta completa del archivo que contiene el eje por el que pasó el vehículo. Puede ser un archivo de dibujo (BIN, DXF, DGN o Shape) o un archivo de vial. Con un archivo de dibujo, MDTopX usa la primera línea que tiene al menos 2 puntos. Valor predeterminado: vacío; en ese caso, MDTopX calcula una posible trayectoria a partir de la nube de puntos.
* **TipoCarretera**: tipo de vía. 0 (desconocida), 1 (urbana), 2 (autopista o autovía), 3 (carretera con arcén) o 4 (carretera sin arcén). Valor predeterminado: 0.
* **UmbralMinObjetosBajos**: umbral mínimo, en metros, para los objetos bajos. El comentario del código indica 0.02 con perfilómetros (Leica) y 0.04 o más con sensores Velodyne. Valor predeterminado: 0.02.
* **AjustarSensores**: 0 o 1. Con 1, MDTopX ajusta los sensores al buscar las marcas viales. Valor predeterminado: 0.
* **AnchoMax**: ancho máximo del asfalto, en metros. Si vale 0 o menos, MDTopX no lo usa. Valor predeterminado: 0.
* **AnchoMin**: ancho mínimo del asfalto, en metros. Si vale 0 o menos, MDTopX no lo usa. Valor predeterminado: 2.
* **AlturaMinBordillo**: altura mínima de un bordillo, en metros. Valor predeterminado: 0.02.

### Qué buscar

* **BuscarAsfalto**: 0 o 1. Con 1, MDTopX busca el asfalto. Valor predeterminado: 1.
* **BuscarOtroAsfalto**: 0 o 1. Con 1, MDTopX busca otro asfalto: sobreanchos e intersecciones con otras vías. Valor predeterminado: 1.
* **BuscarLineaBlanca**: 0 o 1. Con 1, MDTopX busca la señalización horizontal. Valor predeterminado: 1.
* **BuscarBordillos**: 0 o 1. Con 1, MDTopX busca los bordillos. Valor predeterminado: 1.
* **BuscarAceras**: 0 o 1. Con 1, MDTopX busca las aceras. Valor predeterminado: 1.

### Línea blanca

* **HayLBCentral**: 0 o 1. Escribe 1 si hay línea blanca en el centro de la vía. Valor predeterminado: 1.
* **HayLBLateral**: 0 o 1. Escribe 1 si hay línea blanca en los laterales de la vía. Valor predeterminado: 1.
* **ClasificarLineaBlanca**: 0 o 1. Con 1, MDTopX clasifica los puntos de la línea blanca. Valor predeterminado: 1.
* **IntensidadAbsoluta**: 0 o 1. Escribe 1 si el valor de intensidad es absoluto y 0 si es relativo. Valor predeterminado: 1.
* **IntensidadMin**: valor mínimo de intensidad que debe tener un punto para pertenecer a una marca vial. Valor predeterminado: 50000.
* **AjustarLineaBlanca**: 0 o 1. Con 1, MDTopX ajusta la línea blanca. Valor predeterminado: 0.
* **UsarColor**: 0 o 1. Con 1, MDTopX usa el color de los puntos para identificar la línea blanca. Valor predeterminado: 0.

### Clases de los puntos

Cada clave es el número de clase LiDAR, de 0 a 255, que MDTopX asigna a los puntos clasificados.

* **TipoAsfalto**: puntos de asfalto. Valor predeterminado: 35.
* **TipoOtroAsfalto**: puntos de otro asfalto. Valor predeterminado: 39.
* **TipoLineaBlanca**: puntos de línea blanca. Valor predeterminado: 36.
* **TipoLineaBlancaSup**: puntos de línea blanca superficial (otra pintura horizontal). Valor predeterminado: 37.
* **TipoBordillos**: puntos de bordillos. Valor predeterminado: 38.
* **TipoAceras**: puntos de aceras. Valor predeterminado: 40.

### Códigos del archivo de dibujo

Cada clave es el código que MDTopX asigna a las entidades de ese tipo en el archivo de dibujo.

* **CodEjeTrazado**: eje. Valor predeterminado: EJE.
* **CodPlataforma**: límite del asfalto. Valor predeterminado: PLAT.
* **CodOtroAsfalto**: límite de otro asfalto. Valor predeterminado: OTRO.
* **CodLineaBlancaLineal**: tramos de línea blanca. Valor predeterminado: LB_L.
* **CodLineaBlancaSup**: otra pintura horizontal. Valor predeterminado: LB_S.
* **CodBordillos**: límites de bordillos. Valor predeterminado: BORDI.
* **CodAceras**: límites de aceras. Valor predeterminado: ACERA.

### Claves de la edición gráfica

MDTopX también lee las claves **SuperficieMin** (valor predeterminado 1), **ToleranciaCota** (0.02), **PuntosNoClasificados** (0), **PuntosObjeto** (0) y **PuntosRuido** (0). El código las documenta como parámetros de la edición gráfica del límite de asfalto, por lo que no se describen aquí.

```ini
[Asfalto]
DistanciaMax = 0.1
SzTraza = C:\Trabajo\eje.bin
TipoCarretera = 3
BuscarAsfalto = 1
BuscarLineaBlanca = 1
HayLBCentral = 1
HayLBLateral = 1
IntensidadAbsoluta = 1
IntensidadMin = 50000
TipoAsfalto = 35
TipoLineaBlanca = 36
CodPlataforma = PLAT
CodEjeTrazado = EJE
```

Es indiferente que los nombres de las secciones y de las claves estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
* [Clasificar suelo de trazado](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-trazado.md)
* [Buscar líneas de vial](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-vial.md)
