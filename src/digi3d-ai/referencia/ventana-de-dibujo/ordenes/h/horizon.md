# HORIZON

Se utiliza para hacer líneas de señalización horizontal, mediante la inserción de símbolos \(compuestos por segmentos horizontales y verticales\) y de espacios en blanco.

![CAMB_SEN, CAMB_SEN_SUBE, CAMB_SEN_BAJA, DIVIDIR y HORIZON](../../../../../images/sentido-dividir-horizon.svg)

## Parámetros

No admite parámetros.

## Observaciones

La orden muestra un cuadro de diálogo con estos campos:

* Código de las líneas de señalización horizontal: código de las entidades lineales que se van a transformar a líneas de señalización horizontal. Se pueden utilizar los caracteres comodín \*, ?.
* Largo: largo de cada trazo.
* Ancho: ancho de cada trazo. Con 0, cada trazo es una línea abierta; con otro valor, es una línea cerrada que se extiende ese ancho a la derecha del sentido de digitalización.
* Espacio en blanco entre líneas: separación entre trazos.

Las tres medidas están en las unidades del sistema de referencia de coordenadas de la ventana de dibujo.

La orden procesa todas las líneas abiertas y visibles del código y las sustituye por los trazos. Las líneas cerradas no cambian. Si una línea termina a mitad de un trazo, ese último trazo no se añade.

## Características de la orden

| Tipo de orden | [Orden interactiva](horizon.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {340C33D2-7D89-4772-AFF1-D274F8735395} |

