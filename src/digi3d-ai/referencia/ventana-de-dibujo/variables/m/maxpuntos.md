# MAXPUNTOS
<!-- id: maxpuntos -->

Establece el número máximo de vértices de la línea que se digitaliza con [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) o [POL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pol.md).

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Número máximo de vértices. 0 desactiva la restricción | Número entero, o **?** para consultar el valor actual en un globo | Si |

Si se ejecuta sin parámetros, la orden muestra el cuadro de diálogo **Introduce valor**. El cuadro se cierra y acepta el valor al pulsar **Intro** o **Escape**, o al confirmar el cambio en el campo.

### Ejemplos

`MAXPUNTOS=2`

Las líneas finalizan al registrar el segundo vértice.

`MAXPUNTOS=?`

Muestra el valor actual en un globo.

## Observaciones

Cuando la línea que se digitaliza con [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) o [POL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pol.md) alcanza el número máximo de vértices, la línea finaliza automáticamente. Al finalizar se aplican las variables [C](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/c.md) (cerrar), [S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) (suavizar) y [G](/digi3d-ai/referencia/ventana-de-dibujo/variables/g/g.md) (generalizar), igual que al finalizar la línea a mano.

El valor 0 desactiva la restricción. El valor vale 0 al iniciar Digi3D.AI y no se guarda entre sesiones. Cambiar de código no cambia el valor.

El botón de la barra de herramientas y la opción de menú alternan: si el valor es 0, muestran el cuadro de diálogo para introducir el valor; si no, ejecutan `MAXPUNTOS=0`.

La orden [CAMB\_MAXPUNTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-maxpuntos.md) no cambia esta variable: usa su valor para dividir las entidades ya digitalizadas.

## Características de la orden

| Tipo de orden | [Variable numérica](../variables-numericas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Restricciones de polilíneas/Establecer el número máximo de puntos de una línea |
| Barra de herramientas en la que aparece la orden | Restricciones de polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [C](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/c.md)<br>[G](/digi3d-ai/referencia/ventana-de-dibujo/variables/g/g.md)<br>[S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) |
| Nombre interno | {89DE5C40-863D-4654-85F1-211FB9DC3AF3} |

