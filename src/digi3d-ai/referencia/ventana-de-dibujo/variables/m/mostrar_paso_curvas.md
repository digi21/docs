# MOSTRAR\_PASO\_CURVAS

Activa o desactiva la visualización, mediante animaciones, de las zonas por donde deben cruzar las curvas de nivel en función de la _Z activa_.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Tolerancia | Número real | Si |
| 2 | Códigos a considerar \(se puede indicar más de uno\) | Lista de códigos | Si |

## Observaciones

Únicamente se mostrarán las zonas de paso si están activas a la vez esta orden y [FIJA\_Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md), ya que las zonas se calculan en función de la _Z activa_.

Esta variable está desactivada de forma predeterminada.

## Características de la orden

| Tipo de variable | [Booleana](/digi3d-ai/referencia/ventana-de-dibujo/variables/variables-booleanas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [FIJA\_Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) |
| Nombre interno | {9D6A4AC4-08FF-43AB-97BF-60E9D6DC7BB2} |
