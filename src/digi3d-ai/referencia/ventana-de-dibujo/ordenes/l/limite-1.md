# LIMITE\_1
<!-- id: limite-1 -->

Establece una zona de trabajo delimitada por el contorno geométrico de una línea.

## Parámetros

No admite parámetros.

## Observaciones

La orden solicita que selecciones la línea que actúa como límite. La línea debe existir antes de ejecutar la orden y puede tener cualquier forma \(incluyendo concavidades y convexidades\). Si se selecciona una entidad que no es una línea \(por ejemplo, un polígono\), la orden emite un sonido de error y no la acepta. Para definir la línea con el menor número posible de puntos, utiliza la modalidad "punto a punto" al dibujarla.

Una vez que el límite ha sido establecido, el sistema avisa con una señal acústica cuando el cursor sale de la zona de trabajo y con otra cuando el cursor vuelve a entrar en la zona de trabajo, pero permite que sigas dibujando fuera de los límites establecidos. Para desactivar el límite, ejecuta [LIMITE\_0](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limite-0.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [LIMITE\_0](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/limite-0.md) |
| Nombre interno | {0560D7E3-0C04-44ad-82BD-E3D9B91A34CF} |

