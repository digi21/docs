# CONFIGURAR\_MOSTRAR\_PASO\_CURVAS
<!-- id: configurar-mostrar-paso-curvas -->

Configura la tolerancia y los códigos que usa la visualización del paso de curvas de nivel \(variable [MOSTRAR\_PASO\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/mostrar_paso_curvas.md)\).

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Tolerancia en Z, en las unidades del sistema de referencia | Si |
| 2...n | Códigos de las líneas a considerar. Un parámetro que empieza por `#` se sustituye por todos los códigos que tienen esa etiqueta en la tabla de códigos. | Si |

Los parámetros solo se tienen en cuenta si se indican al menos dos \(la tolerancia y un código\).

## Observaciones

1. Si no se indican parámetros y todavía no hay códigos configurados, la orden muestra un cuadro de diálogo para seleccionar los códigos y la tolerancia. Si ya hay códigos configurados, la orden no muestra el cuadro de diálogo y conserva la configuración anterior.
2. Cada vez que cambia la Z bloqueada, si la variable [MOSTRAR\_PASO\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/mostrar_paso_curvas.md) está activa, el programa selecciona los tramos de las líneas no borradas con esos códigos cuya Z está entre la Z activa menos la tolerancia y la Z activa más la tolerancia.

## Características de la orden

| Tipo de orden | [Orden inmediata](configurar-mostrar-paso-curvas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [MOSTRAR\_PASO\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/mostrar_paso_curvas.md) — activa o desactiva la visualización del paso de curvas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {FEB6782B-86C0-43C4-A5B4-2AE8B5D13F26} |

