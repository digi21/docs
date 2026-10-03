# MOSTRAR\_PASO\_CURVAS

Activa o desactiva la visualización, mediante animaciones, de las zonas por donde deben cruzar las curvas de nivel en función de la _Z activa_.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.| Si |

## Observaciones

Esta orden no admite el valor **?**. Si el parámetro no es un número, la orden lo interpreta como 0 y desactiva la variable.

La tolerancia y los códigos de las curvas de nivel que se analizan se establecen con la orden [CONFIGURAR\_MOSTRAR\_PASO\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/configurar-mostrar-paso-curvas.md).

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
