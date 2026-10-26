# BLOQUEA_Z
<!-- id: bloquea-z -->

La orden BLOQUEA_Z bloquea la coordenada _Z_ de la ventana fotogramétrica en el valor exacto que tiene al ejecutar la orden, de modo que la coordenada no cambie mientras te desplazas.

A diferencia de la orden [FIJAZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) de la ventana de dibujo —que bloquea la _Z_ en el múltiplo de la equidistancia de curvas de nivel más cercano—, **BLOQUEA_Z** mantiene la coordenada _Z_ exacta en la que te encuentres, ya que la ventana fotogramétrica no maneja curvas de nivel ni equidistancias.

La orden actúa como un conmutador: si ejecutas la orden con la coordenada _Z_ bloqueada, la coordenada _Z_ se desbloquea y puede volver a cambiar.

## Parámetros

Esta orden no admite parámetros.

## Características de la orden

| Tipo de orden | Conmutador |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ventana fotogramétrica/Bloquear Z |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
