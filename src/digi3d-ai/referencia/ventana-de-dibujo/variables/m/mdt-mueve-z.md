# MDT\_MUEVE\_Z
<!-- id: mdt-mueve-z -->

Activa o desactiva la actualización de la coordenada Z en Digi3D.AI, cuando el cursor pase por encima de los Modelos Digitales del Terreno.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |


## Observaciones

Para poder editar puntos de la correlación se necesita tener desactivada la propiedad de MDT\_MUEVE\_Z.

La variable se desactiva cada vez que se abre un archivo de dibujo.

## Características de la orden

| Tipo de orden | [Variable booleana](../variables-booleanas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | MDT/Proyectar la coordenada Z al moverse sobre un MDT cargado |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesMDT.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {ED25771C-ED54-4357-A7AD-05C976348ABD} |

