---
description: Triangulación desde línea de comando
---

# Triangulación

[Triangulación](../como.../untitled-326.md)

 Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```text
MDTop [archivo de entrada] /TRI [archivo de salida]
```

El archivo de entrada deberá ser un archivo con información topográfica o cartográfica, a partir del cual se calculará el modelo digital. Este archivo podrá ser un archivo de puntos de TopCal, de dibujo de DIGI, de dibujo de AutoCad DXF, de dibujo de MicroStation o un archivo ASCII con coordenadas X, Y, Z.

El archivo de salida será el nombre con el que se salve la triangulación, por lo que debería llevar extensión MDT.

Además de esta secuencia y para configurar el modo de triangular, en el archivo MDTop.INI debería haber una línea obligatoria con el texto \[Triangulacion\] y a continuación los campos siguientes:

* **CodTri** : Indica el código en el que se almacenarán los triángulos
* **CotaMaxima** : Indica la cota máxima en metros que podrán tener las entidades para formar parte del modelo digital
* **CotaMinima** : Indica la cota mínima en metros que podrán tener las entidades para formar parte del modelo digital
* **HayRupturas** : Indica si habrá rupturas \(valor 1\) o no habrá rupturas \(valor 0\).
* **Codigo\[n\]** : Secuencia de los códigos que formarán parte del modelo digital, siendo n un número correlativo empezando por 1.
* **Ruptura\[m\]** : Secuencia de los códigos que serán líneas de ruptura, siendo m un número correlativo empezando por 1.
* **ExcluirCodigo\[p\]**: Secuencia de los códigos que no se desea que formen parte del modelo digital, siendo un número correlativo empezando por 1.
* **ExcluirRuptura\[q\]**: Secuencia de los códigos que no se desea que sean líneas de ruptura, siendo un número correlativo empezando por 1.
* **NoUnirCurvas** : Indica si se desea no unir curvas de nivel en la triangulación \(valor 1\) o no hacer nada \(valor 0\)
* **Equidistancia** : Indica la equidistancia del curvado original en metros, utilizado si se activa no unir curvas de nivel

```text
[Triangulacion]
CodTri = TRIANGUL
CotaMaxima = 950.5
CotaMinima = 0.01
HayRupturas = 1
Codigo1 = 020123
Codigo2 = 020124
Codigo3 = 060140
Ruptura1 = 020124
Ruptura2 = 060140
NoUnirCurvas = 0
Equidistancia = 1
```

{% hint style="info" %}
Es indiferente que los nombres de los campos estén en mayúsculas o en minúsculas.
{% endhint %}

Vea también:

* [Introducción a la línea de comandos](./)

