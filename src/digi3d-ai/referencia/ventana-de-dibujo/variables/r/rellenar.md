# RELLENAR
<!-- id: rellenar -->

Activa o desactiva el rellenado de entidades lineales cerradas.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |


## Observaciones

El relleno de cada entidad se define en la representación de su código en la [tabla de códigos](/digi3d-ai/referencia/editor-de-tablas-de-codigos/). Solo se rellenan las entidades cuyo código tiene un tipo de relleno con color.

La variable es propia de cada ventana de dibujo. Al cambiar su valor, la ventana se regenera.

## Características de la orden

| Tipo de orden | [Variable booleana](rellenar.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ver/Parámetros de visualización/Rellenar polígonos |
| Barra de herramientas en la que aparece la orden | Parámetros de visualización |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {0F8FA533-635B-4b58-B386-EE9FA424B5BC} |

