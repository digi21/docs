# LIMPIA

Corta las entidades que atraviesan el contorno de textos o de líneas límite y borra o recodifica los tramos que quedan dentro.

## Parámetros

Si se ejecuta sin parámetros, la orden muestra un cuadro de diálogo con estas mismas opciones. Si se especifican parámetros, hay que especificar los cinco.

| Número de parámetro | Parámetro | Descripción |
| :--- | :--- | :--- |
| 1 | Tipo de corte | `0`: limpiar textos \(el límite es el contorno de cada texto\). `1`: limpiar líneas cerradas. `2`: limpiar líneas abiertas o cerradas \(las abiertas se cierran para usarlas como límite\) |
| 2 | Tabla de códigos de límites | Fichero de texto con los códigos de los textos o líneas que hacen de límite, uno por línea \(LIMPIA\_1.TAB\) |
| 3 | Tabla de códigos de líneas a cortar | Fichero de texto con los códigos de las entidades que se cortan con los límites, uno por línea \(LIMPIA\_2.TAB\) |
| 4 | Borrar los tramos dentro de los límites | `1`: borra los tramos que quedan dentro de los límites. `0`: los conserva |
| 5 | Código para los tramos dentro de los límites | Código que se compone con el código de cada tramo interior cuando el parámetro 4 vale `0`. Si está vacío, los tramos conservan su código |

## Observaciones

Solo se usan como límite las entidades visibles, no borradas y dentro de la zona de interés.

## Características de la orden

| Tipo de orden | [Orden inmediata](limpia.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción del menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {417FAB22-3EA8-4629-A51C-0EF65F253206} |

