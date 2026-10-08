# MOSTRAR\_PASO\_CURVAS
<!-- id: mostrar-paso-curvas -->

Activa o desactiva la visualización del paso de curvas de nivel: marca con una línea discontinua animada las partes de las líneas configuradas cuya Z está cerca de la _Z activa_.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor de la variable |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |

## Observaciones

Cualquier número distinto de 0 activa la variable. Si el parámetro no es un número ni **?**, la orden lo interpreta como 0 y desactiva la variable.

La tolerancia y los códigos de las líneas que se analizan se establecen con la orden [CONFIGURAR\_MOSTRAR\_PASO\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/configurar-mostrar-paso-curvas.md). Mientras no se configuren, la variable activa no marca nada y no muestra ningún aviso.

Los tramos solo se marcan si la Z está bloqueada en la ventana fotogramétrica, por ejemplo con [FIJAZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) o [Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md). Sin ventana fotogramétrica abierta no se marca nada.

Al activar o desactivar la variable se recalculan los tramos y se regenera la vista. Al desactivarla se borran los tramos marcados.

Los tramos se dibujan con una línea discontinua animada roja y blanca y con una marca en cada vértice, en la ventana de dibujo y en las ventanas fotogramétricas. No forman parte de ningún archivo de dibujo ni de la selección.

Esta variable se desactiva cada vez que se inicia Digi3D.AI.

## Características de la orden

| Tipo de variable | [Booleana](/digi3d-ai/referencia/ventana-de-dibujo/variables/variables-booleanas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Tentativos/Mostrar paso de curvas |
| Barra de herramientas en la que aparece la orden | Tentativo |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [FIJAZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) |
| Órdenes relacionadas | [CONFIGURAR\_MOSTRAR\_PASO\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/configurar-mostrar-paso-curvas.md) |
| Nombre interno | {9D6A4AC4-08FF-43AB-97BF-60E9D6DC7BB2} |
