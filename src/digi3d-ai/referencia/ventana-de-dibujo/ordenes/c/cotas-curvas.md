# COTAS\_CURVAS

Asigna cota a las curvas de nivel de manera global.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1...n | Códigos de las curvas de nivel. Un parámetro que empieza por `#` se sustituye por todos los códigos que tienen esa etiqueta en la tabla de códigos. | Si. Si no se especifica ningún parámetro, la orden muestra un cuadro de diálogo para seleccionar los códigos |

## Observaciones

1. Digitaliza el primer punto con la Z de la primera curva que vas a cortar.
2. Digitaliza el segundo punto. El segmento entre los dos puntos debe cortar las curvas de nivel.

La orden calcula el número de curvas esperado como la diferencia de Z entre los dos puntos dividida por la [equidistancia](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md), más uno. Si el número de líneas con esos códigos que corta el segmento no coincide, la orden muestra un globo de error y no modifica nada.

Si coincide, la orden ordena las curvas por distancia al primer punto y asigna a todos los vértices de cada una la Z del primer punto más la equidistancia multiplicada por su posición \(0 para la más cercana\). La Z siempre aumenta a partir del primer punto.

La orden no termina tras asignar las cotas: puedes digitalizar otro par de puntos. Pulsa **Esc** para terminar.

## Características de la orden

| Tipo de orden | [Orden interactiva](cotas-curvas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) — equidistancia de curvas de nivel |
| Nombre interno | {B43899C2-51BB-4f8c-AD99-A04A5591BC2C} |

