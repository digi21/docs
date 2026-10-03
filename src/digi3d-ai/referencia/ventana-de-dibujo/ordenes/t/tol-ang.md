# TOL\_ANG

Establece el _factor de tolerancia angular_ en el proceso de [generalización](tol-ang.md).

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor de la tolerancia angular, o `?` para mostrar el valor actual | Número real | Si |

Sin parámetros, la orden solicita el valor en la barra de mensajes. Solo acepta el valor tecleado: si se digitaliza un punto, la orden emite un sonido de error y sigue esperando el valor.

### Ejemplos

`TOL_ANG=45`

Asigna como tolerancia angular 45 grados.

`TOL_ANG=?`

Muestra el valor actual de la tolerancia angular

## Observaciones

El valor se introduce en **grados sexagesimales**. Al iniciar Digi3D.AI vale 4,58.

La tolerancia angular solo interviene en un tramo en el que ningún vértice supera la [tolerancia lineal](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md). En ese caso, las órdenes [GEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md) y [GEN\_2D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen-2d.md) conservan el vértice intermedio con mayor desviación angular respecto a la recta que une los extremos del tramo, si esa desviación supera **TOL\_ANG**, y dividen el tramo en dos por él.

## Características de la orden

| Tipo de orden | [Variable real](tol-ang.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md) — tolerancia lineal de generalización |
| Órdenes relacionadas | [GEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md)<br>[GEN\_2D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen-2d.md)<br>[TOL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tol.md) |
| Nombre interno | {CAF1F0F2-7F03-4a0f-804C-B9E411772E09} |

