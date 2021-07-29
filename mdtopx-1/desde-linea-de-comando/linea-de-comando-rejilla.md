---
description: Rejilla desde línea de comando
---

# Rejilla

[ Rejilla](../como.../como-rejilla.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```text
MDTop [archivo de entrada] /REJ [archivo de salida]
```

El archivo de entrada deberá ser un archivo de modelo digital, en el cual se proyectará la rejilla.

El archivo de salida será el nombre con el que se salve la rejilla. El programa salvará en el formato que indique la extensión: BIN \(DIGI\), DXF \(AutoCad\), DGN \(MicroStation\) o Shape \(ARC-GIS\).

Además de esta secuencia y para configurar el modo de generación de la rejilla, en el archivo MDTop.INI debería haber una línea obligatoria con el texto \[Rejilla\] y a continuación los campos siguientes:

* **IncrementoX** : Espaciado en metros de la rejilla en el eje de abscisas
* **IncrementoY** : Espaciado en metros de la rejilla en el eje de ordenadas
* **SoloPuntos** : 0 \(puntos\) o 1 \(líneas\)
* **Codigo** : Código de los puntos o líneas
* **ConfLineas\_HayDatum** : 0 \(sin datum\) o 1 \(son datum\)
* **ConfLineas\_HayHorizontales** : 0 \(sin líneas horizontales\) o 1 \(con líneas horizontales\)
* **ConfLineas\_HayVerticales** : 0 \(sin líneas verticales\) o 1 \(con líneas verticales\)
* **ConfLineas\_HaySuaviza** : 0 \(sin suavizar las líneas\) o 1 \(con suavizado\)
* **ConfLineas\_Datum** : cota en metros del datum
* **ConfLineas\_Escala** : denominador de la escala de la rejilla
* **ConfLineas\_Orientacion** : acimut en grados de las líneas horizontales
* **ConfLineas\_Exageracion** : grado de exageración en cota

```text
[Rejilla]
IncrementoX = 1.5
IncrementoY = 1.5
SoloPuntos = 1
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

{% hint style="info" %}
Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.
{% endhint %}

Vea también:

* [Introducción a la línea de comandos](./)

