---
description: Cuadro de diálogo Diferencias
---

# Diferencias

[Calcular](../fichas-de-herramientas/ficha-de-herramientas-imagen/imagen-calcular.md)

Herramienta para calcular las diferencias existentes entre los píxeles de dos imágenes que ocupan el mismo espacio geográfico. Evidentemente, estas imágenes deberán estar georreferenciadas.

El resultado es otra imagen georreferenciada donde habrá píxeles en color negro donde no ha encontrado diferencias y píxeles con el valor RGB 0,0,255 donde ha encontrado diferencias. Posteriormente, se podrán calcular los límites vectoriales de estas zonas con la herramienta [Vectorizar](vectorizar.md).

El cuadro de diálogo precisa de los siguientes campos:

* **Fichero a comparar**: Se deberá indicar la ubicación de la imagen que se comparará con el documento actual.
* **Modo de cálculo**: Existen tres maneras diferentes de comparar las imágenes:
* **Utilizar sólo H \(Tono\)**: Se transformarán todos los píxeles RGB a la terna HSV, pero sólo se utilizará el primero \(Tono\) para realizar la comparación.
* **Utilizar diferencia RGB**: Se compararán directamente los píxeles almacenados como RGB.
* **Utilizar diferencias HSV**: Se transformarán todos los píxeles RGB a la terna HSV y se compararán sus tres componentes.
* **Utilizar umbral**: El usuario podrá indicar un valor umbral para indicar que existe diferencia entre las imágenes. Existen diferentes niveles:
  * Todos los índices superiores al umbral: Para considerar que hay diferencia, las tres componentes deberán ser superiores al umbral.
  * Dos índices superiores al umbral: Para considerar que hay diferencia, al menos dos de las tres componentes deberán ser superiores al umbral.
  * Al menos un índice superior al umbral: Para considerar que hay diferencia, al menos una de las tres componentes deberá ser superior al umbral.
  * Suma de los índices superior al umbral: Para considerar que hay diferencia, la suma de las tres componentes deberá ser superior al umbral.

