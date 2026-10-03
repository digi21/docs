# BLOQUE

Almacena en un nuevo fichero una entidad o conjunto de entidades, que podrán ser insertadas posteriormente en cualquier dibujo.

## Parámetros

No admite parámetros.

## Observaciones

La ventana para generar el bloque es una línea que ya existe en el dibujo. Para crear el bloque:

1. Indica en el cuadro de diálogo el nombre y el formato del archivo que se va a crear. En la categoría **Bloque** del cuadro elige la **Condición de inclusión** (**0. Interior**, **1. Corte** o **2. Solape**; por defecto **1. Corte**).
2. Digitaliza el punto de origen. Las coordenadas de las entidades se guardan relativas a este punto.
3. Selecciona la línea que actúa como ventana.

La orden busca las entidades de todos los archivos de dibujo cargados que estén visibles, no borradas y dentro de la zona de interés, y guarda en el archivo las que cumplen la condición de inclusión. Con **1. Corte** guarda los trozos de las líneas que quedan dentro de la ventana. La línea ventana no se guarda. Las entidades del dibujo no se modifican.

Si se cancela el cuadro de diálogo, la orden termina sin crear el archivo.

## Características de la orden

| Tipo de orden | [Orden interactiva](bloque.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Bloques/Crear un bloque... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {6631BD75-5A59-423f-9196-B432B6DBF6D5} |

