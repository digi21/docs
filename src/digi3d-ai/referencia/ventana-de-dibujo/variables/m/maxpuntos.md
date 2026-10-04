# MAXPUNTOS
<!-- id: maxpuntos -->

Establece el número máximo de puntos que tendrá un tipo de entidad.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico. Si no se indica, se muestra un cuadro de diálogo para introducir el valor. | Número entero o **?** | Si |

### Ejemplos

MAXPUNTOS=2

Establece como número máximo de puntos 2

MAXPUNTOS=?

Muestra el valor actual del número máximo de puntos

## Observaciones

Cuando la línea que se digitaliza con la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) alcanza el número máximo de puntos fijado por _MAXPUNTOS_, la línea se termina automáticamente, y se cierra si está activada la variable [C](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/c.md).

El valor 0 desactiva la restricción. Al iniciar Digi3D.AI vale 0. La orden no cambia de valor al cambiar de código, salvo que la tabla de códigos incluya `MAXPUNTOS=0` entre las órdenes que se ejecutan al seleccionar el código. Se puede cambiar el número de puntos máximo mediante la orden [CAMB\_MAXPUNTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-maxpuntos.md).

## Características de la orden

| Tipo de orden | [Variable numérica](../variables-numericas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Restricciones de polilíneas/Establecer el número máximo de puntos de una línea |
| Barra de herramientas en la que aparece la orden | Restricciones de polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {89DE5C40-863D-4654-85F1-211FB9DC3AF3} |

