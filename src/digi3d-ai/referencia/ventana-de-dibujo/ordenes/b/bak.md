# BAK

Realiza una copia de seguridad del fichero de dibujo activo.

## Parámetros

No admite parámetros.

## Observaciones

La orden copia el archivo de dibujo activo sin pedir datos. Al terminar suena un pitido.

La ruta y el nombre de la copia se toman de la opción **Herramientas/Configuración/Copia de seguridad/Destino de copias de seguridad**, que admite sustituidores. El valor por defecto es `$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)`: la copia se guarda en la carpeta del archivo de dibujo, con la misma extensión, y el nombre incluye la fecha y la hora.

DigiNG puede hacer la copia de seguridad automáticamente cada cierto tiempo. Esta función se activa desde la opción de menú **Herramientas/Configuración/Copia de seguridad/Generar copia de seguridad cada \(minutos\)**, donde se especifica el intervalo en minutos; el valor 0 la desactiva. La copia automática se hace al añadir una entidad, si ha pasado el intervalo desde la copia anterior.

## Características de la orden

| Tipo de orden | [Orden inmediata](bak.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Herramientas/Guardar una copia de seguridad |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | _No tiene variables relacionadas_ |
| Nombre interno | {B826AC47-F6A5-4d4b-8FE5-1DCDE8DA0FB0} |

