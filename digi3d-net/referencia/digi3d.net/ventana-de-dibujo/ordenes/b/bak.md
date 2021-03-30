# BAK

Realiza una copia de seguridad del fichero de dibujo activo.

## Parámetros

No admite parámetros.

## Observaciones

La copia generada tendrá el mismo nombre que el fichero original, variando el nombre del fichero a **Copia de seguridad de &lt;archivo&gt;.bind con fecha &lt;fecha&gt; a las &lt;hora&gt;.bind**. El nuevo fichero se almacena en el directorio de trabajo activo.

DigiNG puede llamar automáticamente a esta orden cada cierto tiempo. Esta función se activa desde la opción de menú **Herramientas/Configuración/Copia de seguridad/Generar copia de seguridad cada \(mintuos\)**, donde se especifica el intervalo de tiempo entre copias de seguridad.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Herramientas/Guardar una copia de seguridad |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | _No tiene variables relacionadas_ |

