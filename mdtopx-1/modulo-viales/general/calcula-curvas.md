---
description: Cuadro de diálogo Calcula curvas
---

# Calcula curvas

[Viales General](../../fichas-de-herramientas/ficha-de-herramientas-viales/viales-general.md)

Con esta herramienta el usuario podrá calcular elementos curvos a partir de dos parámetros que los definen. En función de estos parámetros el programa calculará el resto de elementos que podrán resultar de interés para su definición.

La herramienta podrá ser llamada sin tener ningún archivo abierto o desde el [cuadro de diálogo de definición de curvas ](../trazado/insertar-elemento-curvo.md).

Los elementos curvos que se pueden definir son de dos tipos:

![](../../../.gitbook/assets/clotoideycirculo.gif)

* **Circular**: Si se elige este tipo de curva, los parámetros que lo pueden definir son:
  * Radio: Valor del radio en metros.
  * Longitud: Distancia en el arco entre el punto C y el punto F.
  * Ángulo: Ángulo w medido en grados centesimales formado entre el radio del punto C y el del punto F. Si la herramienta es llamada desde el cuadro de diálogo de Inserción de elementos curvos, este parámetro será fijo.
  * Cuerda: Distancia lineal medida en metros entre el punto C y el punto F.
  * Tangente: Distancia entre el punto V y el punto F o el C, medida en metros.
  * Flecha: Máxima distancia entre el arco y la cuerda, medida en metros.
  * Distancia al vértice: Distancia entre el punto O y el punto V, medida en metros.

{% hint style="info" %}
No todas las combinaciones tienen solución, como por ejemplo si se eligen como parámetros Longitud y Cuerda
{% endhint %}

![](../../../.gitbook/assets/circulo.gif)

* **Con clotoide**: Si se elige este tipo de curva, los parámetros que lo pueden definir son:
  * Radio: Radio del cálculo central, medido en metros.
  * Longitud: Distancia entre el punto C y el F, medida en la curva y en metros.
  * Ángulo Tao: Ángulo formado por la perpendicular a la tangente desde el centro del cálculo y el radio al punto de tangencia F, medido en grados centesimales.
  * Parámetro A: Constante adimensional de la curva.

Además de estos parámetros de definición, se muestran los siguientes:

* Tangente corta: Distancia desde el punto de tangencia F hasta la recta tangente, medida en la recta tangente al cálculo en dicho punto y en metros.
* Tangente larga: Distancia medida en la recta tangente desde el punto C al punto de corte con la tangente al cálculo en el punto F. Medida en metros.
* Incremento del radio: Diferencia entre el radio de cálculo central y la ordenada del centro del cálculo.
* Coordenadas del punto F: Coordenadas del punto de tangencia F, medidas a partir de la recta tangente.
* Coordenadas del centro: Coordenadas del centro de cálculo, medidas a partir de la recta tangente.

Si el cuadro de diálogo es llamado desde el cuadro de diálogo de Inserción de Curvas, se actualizarán automáticamente los campos en ese cuadro de diálogo.

