# TOL
<!-- id: tol -->

Establece el _factor de tolerancia_ en el proceso de [generalización](tol.md).

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor de la tolerancia, o `?` para mostrar el valor actual | Número real | Si |

Sin parámetros, la orden solicita el valor en la barra de mensajes. También se pueden digitalizar dos puntos; en ese caso la orden asigna la distancia entre ellos.

### Ejemplos

`TOL=10`

Asigna como factor de tolerancia el valor 10 m.

`TOL=?`

Muestra el valor actual del factor de tolerancia

## Observaciones

El valor del _factor de tolerancia_ se introduce en metros. Su valor inicial es la tolerancia de generalización de la configuración del archivo de dibujo.

Las órdenes [GEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md) y [GEN\_2D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen-2d.md) generalizan con el algoritmo de Douglas-Peucker. Para cada tramo de la entidad, calculan la distancia de cada vértice intermedio a la **recta que une los extremos del tramo**, no al segmento formado por el vértice anterior y el siguiente:

* Si algún vértice está a más de **TOL**, el más alejado se conserva y el tramo se divide en dos por ese vértice.
* Si ninguno lo está, decide la tolerancia angular [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md).

`GEN` mide la distancia en el espacio, con la Z; `GEN_2D`, solo en el plano XY.

## Características de la orden

| Tipo de orden | [Variable real](tol.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) — tolerancia angular de generalización |
| Órdenes relacionadas | [GEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md)<br>[GEN\_2D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen-2d.md)<br>[TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tol-ang.md) |
| Nombre interno | {57647E08-06CB-448b-BD9A-639C5008A176} |

