# Clasificar suelo de FFCC
<!-- id: linea-de-comando-clasificar-suelo-de-ffcc -->

[Clasificar suelo de FFCC](/mdtopx/modulo-mms/ffcc/clasificar-suelo-de-ffcc.md)

La orden **/SUELOFFCC** clasifica en suelo y en no suelo los puntos de una nube de puntos registrada con un sistema MMS (*Mobile Mapping System*, registro con un vehículo) en una línea de ferrocarril (FFCC). Realiza la misma operación que el botón **Suelo** del panel **FFCC** de la ficha MMS, pero no muestra el cuadro de diálogo: lee las opciones de la sección **\[TrazaMMS]** del archivo MDTopX.ini y procesa todos los orígenes de puntos (identificadores de registro) del archivo.

Para ejecutar esta herramienta desde la línea de comando, escribe:

```bash
MDTopX [archivo de entrada] /SUELOFFCC
```

Escribe el archivo de entrada antes de la orden.

## Archivos

* **Archivo de entrada**: una nube de puntos (por ejemplo, LAS o LAZ) o un proyecto de MDTopX que contiene nubes de puntos.
* **Archivo de salida**: esta orden no tiene archivo de salida, y MDTopX ignora cualquier argumento que se escriba después de **/SUELOFFCC**. MDTopX guarda la clasificación en el propio archivo de entrada. Si el archivo de entrada es un proyecto, MDTopX guarda cada nube de puntos del proyecto después de clasificarla.

## Diferencias con /SUELOVIAL

**/SUELOFFCC** y [/SUELOVIAL](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-trazado.md) leen la misma sección **\[TrazaMMS]**, con las mismas claves, valores predeterminados, licencias y archivos. Consulta esa página para ver la lista de claves. Las diferencias son estas:

* **/SUELOFFCC** sustituye el valor de la clave **EsFFCC** por 1 antes de calcular. La clave **EsFFCC** de MDTopX.ini no tiene efecto sobre esta orden.
* MDTopX filtra la nube con una rejilla cuyo paso es el valor de **DistanciaMaxima**, para que la rejilla conserve suficientes puntos del terreno estrecho que queda bajo un viaducto. En **/SUELOVIAL** el paso de esa rejilla es 1 metro.

Es indiferente que los nombres de las secciones y de las claves estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
* [Buscar raíles](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md)
