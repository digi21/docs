# LIMITE\_1

Establece una zona de trabajo, cuyos límites se corresponderán con el contorno geométrico de una entidad de dibujo.

## Parámetros

No admite parámetros.

## Observaciones

La entidad que actúa como límite, tendrá que existir antes de llamar a la orden, y puede tener cualquier forama \(incluyendo concavidades y convexidades\). Es recomendable que esté definida por el menor número posible de puntos, por lo que debe utilizarse la modalidad "punto a punto" cuando se dibuje.

Una vez que el límite ha sido establecido, el sistema avisa con una señal acústica si el cursor sale fuera de los bordes de la zona de trabajo, pero no impide que éste siga dibujando fuera de los límites establecidos.

## Características de la orden

| Tipo de orden | [Orden inmediata](limite-1.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [LIMITE\_0](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/l/LIMITE_0.html) |

