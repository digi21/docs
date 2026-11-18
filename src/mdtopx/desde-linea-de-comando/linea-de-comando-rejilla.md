# Rejilla
<!-- id: linea-de-comando-rejilla -->

[Rejilla](../como/como-rejilla.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /REJ [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, en el cual se proyectará la rejilla. La rejilla abarca toda la extensión del modelo digital.

El archivo de salida será el nombre con el que se salve la rejilla. El programa salvará en el formato que indique la extensión: BIN (DIGI), DXF (AutoCad), DGN (MicroStation) o Shape (ARC-GIS).

Además de esta secuencia y para configurar el modo de generación de la rejilla, en el archivo MDTopX.ini debería haber una línea obligatoria con el texto **\[Rejilla]** y a continuación los campos siguientes:

* **IncrementoX** : Espaciado en metros de la rejilla en el eje de abscisas. Valor predeterminado: 1.
* **IncrementoY** : Espaciado en metros de la rejilla en el eje de ordenadas. Valor predeterminado: 1.
* **TipoGrid** : 0 (solo puntos) o 1 (líneas). Valor predeterminado: 0.
* **PuntosEnLineas** : 0 (los puntos de la rejilla se almacenan en un conjunto de puntos) o 1 (los puntos se almacenan en líneas que unen los puntos de cada columna y de cada fila). Solo se utiliza si **TipoGrid** vale 0. Valor predeterminado: 0.
* **Codigo** : Código de los puntos o líneas. Valor predeterminado: PUNTOS.
* **ConfLineas\_HayDatum** : 0 (sin datum) o 1 (con datum). Valor predeterminado: 1.
* **ConfLineas\_HayHorizontales** : 0 (sin líneas horizontales) o 1 (con líneas horizontales). Valor predeterminado: 1.
* **ConfLineas\_HayVerticales** : 0 (sin líneas verticales) o 1 (con líneas verticales). Valor predeterminado: 1.
* **ConfLineas\_HaySuaviza** : 0 (sin suavizar las líneas) o 1 (con suavizado). Valor predeterminado: 1.
* **ConfLineas\_Datum** : cota en metros del datum. Valor predeterminado: 1.
* **ConfLineas\_Escala** : denominador de la escala de la rejilla. Valor predeterminado: 1000.
* **ConfLineas\_Orientacion** : acimut en grados de las líneas horizontales. Valor predeterminado: 0.
* **ConfLineas\_Exageracion** : Factor de exageración de la cota, sin unidades. Valor predeterminado: 1.

Los campos con prefijo **ConfLineas\_** solo se utilizan si **TipoGrid** vale 1.

Si el archivo no incluye un campo, MDTopX utiliza el valor que tiene guardado en sus preferencias. En una instalación sin preferencias guardadas, ese valor es el predeterminado indicado en cada campo.

```ini
[Rejilla]
IncrementoX = 1.5
IncrementoY = 1.5
TipoGrid = 1
Codigo = N1
ConfLineas_HayDatum = 1
ConfLineas_HayHorizontales = 1
ConfLineas_HayVerticales = 1
ConfLineas_HaySuaviza = 1
ConfLineas_Datum = 900
ConfLineas_Escala = 1000
ConfLineas_Orientacion = 0
ConfLineas_Exageracion = 3
```

Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
