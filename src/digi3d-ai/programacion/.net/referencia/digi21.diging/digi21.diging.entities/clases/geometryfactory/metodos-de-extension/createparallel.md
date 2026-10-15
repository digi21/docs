# CreateParallel
<!-- id: createparallel -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve una [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/) nueva paralela a una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). Es un método de extensión de [GeometryFactory](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/geometryfactory/).

```csharp
public static Line CreateParallel(this ReadOnlyLine line, double distance)
public static Line CreateParallel(this ReadOnlyLine line, double distanceXY, double distanceZ)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `line` | Línea original. No se modifica. |
| `distance`, `distanceXY` | Distancia en el plano XY entre la línea original y la paralela. Con un valor positivo la paralela queda a la derecha del sentido de avance de `line` (del primer vértice al último); con un valor negativo, a la izquierda. |
| `distanceZ` | Valor que se suma a la Z de cada vértice de la paralela. |

## Valor devuelto

Una `Line` nueva con `Owner` a `null` (`ReadOnly` es `false`), con los códigos, colores y atributos de `line` y el mismo número de vértices. La Z de cada vértice es la del vértice original (más `distanceZ` en la segunda sobrecarga).

## Cálculo

Cada vértice se desplaza en la dirección de la bisectriz de los dos segmentos que llegan a él:

- La distancia se divide entre el coseno de la mitad del ángulo que giran los dos segmentos, para que cada lado de la paralela quede a `distance` del lado original. El coseno se limita a un mínimo de 0,3: en un giro de más de unos 145° el vértice se desplaza 3,33 veces `distance` como máximo y esos dos lados de la paralela quedan a menos de `distance` del original.
- El primer y el último vértice de una línea abierta se desplazan en perpendicular a su segmento.
- Si la línea está cerrada en X, Y y Z (el primer vértice es igual al último), el primer y el último vértice se calculan con el segmento anterior y el siguiente, como el resto.

Después del desplazamiento se eliminan los lazos que forma la paralela al cortarse consigo misma (la línea necesita al menos 4 vértices para esta comprobación) y se recalculan las coordenadas mínimas y máximas.

La línea original debe tener al menos dos vértices: el método no lo comprueba.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `NullReferenceException` | `line` es `null`. |

## Ejemplo

El [ejemplo de GeometryFactory](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/geometryfactory/#ejemplo) usa las dos sobrecargas.
