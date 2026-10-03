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

Si coincide, la orden ordena las curvas por distancia al primer punto y asigna a todos los vértices de cada una la Z del primer punto más la equidistancia multiplicada por su posición \(0 para la más cercana\). Si el segundo punto tiene una Z menor que el primero, la orden resta la equidistancia en vez de sumarla: las cotas disminuyen a partir del primer punto.

La orden no termina tras asignar las cotas: puedes digitalizar otro par de puntos. Pulsa **Esc** para terminar.

### Marcar las curvas ya acotadas

Si el código activo contiene los comodines `*` o `?`, la orden cambia también el código de las curvas a las que asigna cota. Así se distinguen de las que faltan por acotar. Cada código de la curva que coincide con los de la orden se combina con el código activo: los caracteres del código activo sustituyen a los de la curva, `?` conserva el carácter de la curva y `*` conserva el resto del código de la curva, con las mismas reglas que en [RENOMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md). Los demás códigos de la curva no cambian. Los atributos de base de datos se tratan como en [RENOMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md).

Por ejemplo, si las curvas tienen los códigos `020123` y `020124`:

```
COD=0211*
COTAS_CURVAS=02*
```

Las curvas acotadas pasan a tener los códigos `021123` y `021124`. Al terminar, se recuperan los códigos originales con [RENOMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md).

Si el código activo no tiene comodines, la orden solo cambia la Z y las curvas conservan sus códigos.

## Características de la orden

| Tipo de orden | [Orden interactiva](cotas-curvas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) — equidistancia de curvas de nivel |
| Órdenes relacionadas | [COD\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-curvas.md)<br>[ROTULA\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-curvas.md) |
| Nombre interno | {B43899C2-51BB-4f8c-AD99-A04A5591BC2C} |

