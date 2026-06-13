# RELLENAR

Activa o desactiva el rellenado de entidades lineales cerradas.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| No |


## Observaciones

El color de rellenado se define en el [archivo de definición de códigos](rellenar.md), con extensión .TAB. En cada línea de este tipo de archivos se define un código, y en el segundo campo se define el tipo de entidad. Si éste es negativo \(menor de 0\), indica que se trata de una entidad lineal cerrada con rellenado.

El valor absoluto del campo define un número de color dentro del archivo DIGI.PAL, color con el que se rellenará la entidad lineal cerrada digitalizada con este código en caso de que esté esta propiedad activada.

## Características de la orden

| Tipo de orden | [Variable booleana](rellenar.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Ver/Parámetros de visualización/Rellenar polígonos |
| Barra de herramientas en la que aparece la orden | Parámetros de visualización |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) |
| Nombre interno | {0F8FA533-635B-4b58-B386-EE9FA424B5BC} |

