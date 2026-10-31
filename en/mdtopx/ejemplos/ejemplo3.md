# Example 3: Earthwork calculation
<!-- id: ejemplo3 -->
<!-- origen: cc5f4cb0ae264ef545a6c3a6a79e4de368f03d23 -->

[Examples](/mdtopx/ejemplos/)

## Objective

Calculate volumes for an area from mapping at different dates.

## Input files

* TERRENO1.DXF: AutoCad DXF mapping from the earlier date.
* TERRENO2.DXF: AutoCad DXF mapping from the later date.
* LIMITE.DXF: AutoCad DXF boundary of the volume calculation area.
* PERFILES.DXF: AutoCad DXF lines defining profiles for the volume calculation.

## Procedure

* Load TERRENO2.DXF using [Open](../operaciones-con-archivos/abrir-archivo.md) from the [MDTopX button](../introduccion/boton-de-mdtopx.md), selecting DXF files.
* Run [Triangulate](../como/como-triangulacion.md) on the [DTM tools](/mdtopx/herramientas-mdt/) tab to generate a digital terrain model from the mapping. Select which lines are breaklines and which lines to use to calculate the model.

![Triangulation dialog](../../images/pantalla1-ejemplo3.jpg)

* Save the file using Save from the [MDTopX button](../introduccion/boton-de-mdtopx.md). For example, use the proposed name TRIANGULACION DE TERRENO2.
* Load TERRENO1.DXF in the same way.
* Run [Triangulate](../como/como-triangulacion.md) on the [DTM tools](/mdtopx/herramientas-mdt/) tab to generate a digital terrain model from the mapping. Select which lines are breaklines and which lines to use to calculate the model.
* Run [Volumes](../como/como-cubicacion.md) on the [DTM tools](../fichas-de-herramientas/ficha-de-herramientas-mdt/) tab, using the previously saved digital model (TRIANGULACION DE TERRENO2) and boundary file (LIMITE.DXF) as inputs.

![Volume calculation dialog](../../images/pantalla5-ejemplo3.jpg)

* Configure volume profiles using PERFILES.DXF as the input profile file.

![Volume profiles dialog](../../images/pantalla4-ejemplo3.jpg)

* Two files are generated: the volume calculation and its profiles.

## Output files

* TRIANGULACION DE TERRENO1: earlier digital terrain model in MDTop's native format. Not included to save space.

![Earlier terrain triangulation file](../../images/pantalla2-ejemplo3.jpg)

* TRIANGULACION DE TERRENO2: later digital terrain model in MDTop's native format. Not included to save space.

![Later terrain triangulation file](../../images/pantalla3-ejemplo3.jpg)

* PERFILES DE PERFILES: volume profile drawing. Save it for editing as DIGI BIN, AutoCad DXF or MicroStation DGN.

![Profile file](../../images/pantalla6-ejemplo3.jpg)

* PLANTA DE PERFILES DE PERFILES: plan drawing of volume profiles. Save it for editing as DIGI BIN, AutoCad DXF or MicroStation DGN.

![Profile plan file](../../images/pantalla8-ejemplo3.jpg)

* CUBICACION DE TRIANGULACION DE TERRENO1 Y TRIANGULACION DE TERRENO2: volume calculation in MDTop's native format.

![Volume calculation file](../../images/pantalla7-ejemplo3.jpg)

* INFORME.ASC: ASCII volume calculation report.

```text
Resultados de cálculo de cubicación
Primer modelo digital : Triangulación de Terreno1.MDT
Segundo modelo digital : Triangulación de Terreno2.MDT
Fichero con límite : Limite.dxf
Calculado en la fecha : 17/07/2007 19:30
Espesor de capa de desbroce vegetal : 0.20 metros
Tolerancia de proyección : 0.00 metros
Calculado con intersección de triángulos

Cálculo de prismas
Alturas relativas en metros
Superficies en metros cuadrados
Volúmenes en metros cúbicos

Superf. Altura Volumen Sup.Terrap Vol.Terrap Sup.Desmon Vol.Desmon
70.009 -0.019 -1.322 29.549 2.265 40.460 2.729
3.356 -0.090 -0.302 29.549 2.265 43.816 3.031
6.076 -0.110 -0.668 29.549 2.265 49.892 3.700
0.559 -0.123 -0.069 29.549 2.265 50.451 3.769
3.232 -0.123 -0.399 29.549 2.265 53.682 4.167
1.746 -0.123 -0.215 29.549 2.265 55.428 4.382
4.824 -0.120 -0.579 29.549 2.265 60.253 4.961

Datos totales de la cubicación
Volumen en terraplén = 7587.856 metros cúbicos
Volumen en desmonte = 24003.691 metros cúbicos
Superficie en terraplén = 9788.892 metros cuadrados
Superficie en desmonte = 18863.894 metros cuadrados
Altura máxima en terraplén = 5.367 metros
Altura máxima en desmonte = -3.277 metros
Altura relativa media = -0.301 metros
Prismas medidos = 52905 prismas

Datos de los perfiles proyectados (en metros cuadrados):
Nombre del perfil Desmonte Terraplén
Perfil 1 193.761 46.666
Perfil 2 94.410 35.862
Perfil 3 16.365 0.000
Perfil 4 148.313 17.697
Perfil 5 98.222 5.483
Perfil 6 58.949 6.012
Perfil 7 60.212 11.115
Perfil 8 68.686 3.734
Perfil 9 54.136 4.884
Perfil 10 18.588 4.686
```
