# TOL\_ANG
<!-- id: tol-ang-2 -->

Establece el _factor de tolerancia angular_ en el proceso de [generalización](tol-ang.md).

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico. Si no se indica, la barra de estado muestra un cuadro de texto para escribir el valor. | Número real o **?** | Si |

### Ejemplos

`TOL_ANG=45`

Asigna como tolerancia angular 45 grados.

`TOL_ANG=?`

Muestra el valor actual de la tolerancia angular

## Observaciones

El valor se introduce en **grados sexagesimales**. Al iniciar Digi3D.AI vale 4,58, y el valor que asignes no se conserva al cerrar el programa.

La tolerancia angular solo interviene en un tramo en el que ningún vértice supera la [tolerancia lineal](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md). En ese caso, las órdenes [GEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen.md) y [GEN\_2D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/gen-2d.md) calculan para cada vértice intermedio el ángulo α con el que se separa de la recta que une los extremos del tramo, visto desde el extremo **más lejano** al vértice. Si el mayor de esos ángulos supera **TOL\_ANG**, el vértice se conserva para mantener la forma de la entidad, y el tramo se divide en dos por él.

![Un tramo A-B con tres vértices: P1 fuera de la tolerancia TOL se conserva, P2 dentro de TOL pero con un ángulo mayor que TOL_ANG se conserva, y P3 se elimina](../../../../../images/generalizacion-tol-tol-ang.svg)

Con **TOL\_ANG** igual a 0 no se elimina ningún vértice que no esté exactamente alineado con los extremos de su tramo: cualquier ángulo mayor que 0 lo conserva.

## Características de la orden

| Tipo de orden | [Variable real](tol-ang.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md) |
| Nombre interno | {CAF1F0F2-7F03-4a0f-804C-B9E411772E09} |

