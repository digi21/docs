# CAMB\_Z
<!-- id: camb-z -->

Sustituye la altitud asignada a un elemento gráfico, por un nuevo valor.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 … N | Códigos de las entidades a modificar. Cada código puede ser `#etiqueta` para indicar todos los códigos con esa etiqueta | Código | Si |

## Observaciones

Sin parámetros, la orden solicita el valor de Z en la barra de estado (el valor inicial es 0) y después solicita que selecciones las entidades. Admite selección múltiple. Tras cada selección, la orden sigue activa y aplica el mismo valor a las siguientes entidades que selecciones.

Con parámetros, la orden asigna sin pedir datos el valor de la variable [Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) a todas las entidades visibles, no borradas y dentro de la zona de interés que tengan alguno de los códigos indicados.

En caso de tratarse de una entidad que tiene diferentes valores de Z, todos estos se sustituirán por un único valor.

Si el control de calidad descarta la entidad modificada, la entidad original se conserva sin cambios. Con varias entidades, cada una se trata de forma independiente: solo se conserva el original de cada entidad descartada y las demás se modifican.

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-z.md) sin parámetros; [orden inmediata](camb-z.md) con parámetros |
| :--- | :--- |
| Repite automáticamente | Si, cuando se ejecuta sin parámetros |
| Opción del menú donde aparece la orden | Editar/Asignar coordenada Z a las entidades seleccionadas |
| Barra de herramientas en la que aparece la orden | Mover |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) — valor de la coordenada Z activa<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [CAMB\_Z\_ACTIVA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-z-activa.md)<br>[MOVER\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z.md)<br>[ZFIJA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zfija.md) |
| Nombre interno | {58347183-0AF3-4671-9CEF-EEC236A8DCE3} |

