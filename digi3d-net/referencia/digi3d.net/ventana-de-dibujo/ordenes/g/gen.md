# GEN

Filtra o elimina puntos de una entidad seleccionada por el usuario.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | [TOL](TOL.html) | Número real | Si |
| 2 | [TOL\_ANG](TOL_ANG.html) | Número real | Si |

## Observaciones

El modo de actuar depende del factor de generalización que se encuentre activo en el momento de ejecutar esta orden. Este factor está condicionado por las variables de tolerancia, cuyo valores se asignan mediante las órdenes [TOL](TOL.html) y [TOL\_ANG](TOL_ANG.html).

Si tecleamos `GEN=<código>`, se generalizarán todas las entidades con ese código que existan en el fichero de dibujo.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Generalizar |
| Barra de herramientas en la que aparece la orden | Editar polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](REPITE.html), [TOL](TOL.html), [TOL\_ANG](TOL_ANG.html) |

