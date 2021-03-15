# COD

Establece el código con el que se van a dibujar las entidades.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código con el que se digitalizará en la pantalla de dibujo | Si. Si no se especifica este parámetro se digitalizará el elemento con el código activo en el momento de ejecutar la orden |

## Observaciones

Esta orden requiere como entrada, el valor correspondiente al código que se va a utilizar. Un código puede tener un máximo de 6 caracteres.

No se puede dibujar ningún elemento si no hay un código activo. Si se cambia de código mientras se está dibujando una entidad, el programa termina en ese momento la entidad que se estaba dibujando con el código anterior y empieza automáticamente una nueva cuya primer punto sea el último de la entidad terminada.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Inmediato/Más/Añadir códigos activos... |
| Barra de herramientas en la que aparece la orden | Código |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | No tiene variables relacionadas |

