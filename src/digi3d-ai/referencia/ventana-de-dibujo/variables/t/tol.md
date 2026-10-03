# TOL

Establece el _factor de tolerancia_ en el proceso de [generalización](tol.md).

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico. Si no se indica, la barra de estado muestra un cuadro de texto para escribir el valor; también puedes digitalizar dos puntos y la orden asigna la distancia entre ellos. | Número real o **?** | Si |

### Ejemplos

`TOL=10`

Asigna como factor de tolerancia el valor 10 m.

`TOL=?`

Muestra el valor actual del factor de tolerancia

## Observaciones

El valor del _factor de tolerancia_ se introduce en las unidades de las coordenadas del archivo de dibujo \(metros en un sistema de referencia proyectado\). Su valor inicial es la tolerancia de generalización de la configuración del archivo de dibujo, y se vuelve a asignar cada vez que se abre un archivo de dibujo.

Las órdenes [GEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md) y [GEN\_2D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen-2d.md) generalizan con el algoritmo de Douglas-Peucker. Para cada tramo de la entidad, calculan la distancia de cada vértice intermedio a la **recta que une los extremos del tramo**, no al segmento formado por el vértice anterior y el siguiente:

* Si algún vértice está a más de **TOL**, el más alejado se conserva y el tramo se divide en dos por ese vértice.
* Si ninguno lo está, decide la tolerancia angular [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md).

`GEN` mide la distancia en el espacio, con la Z; `GEN_2D`, solo en el plano XY.

![Un tramo A-B con tres vértices: P1 fuera de la tolerancia TOL se conserva, P2 dentro de TOL pero con un ángulo mayor que TOL_ANG se conserva, y P3 se elimina](../../../../../images/generalizacion-tol-tol-ang.svg)

## Características de la orden

| Tipo de orden | [Variable real](tol.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) |
| Nombre interno | {57647E08-06CB-448b-BD9A-639C5008A176} |

