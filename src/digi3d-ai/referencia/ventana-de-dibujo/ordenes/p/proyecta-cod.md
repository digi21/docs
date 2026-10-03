# PROYECTA\_COD

Proyecta entidades sobre el MDT cargado en le momento de ejecutarla.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Pares de código y [tipo de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) de las entidades a proyectar | Si |

## Observaciones

La orden asigna a cada vértice de las entidades seleccionadas la Z del primer MDT cargado que contiene el vértice. Los vértices que no caen en ningún MDT conservan su Z. La orden solo trata las entidades visibles y dentro de la zona de interés.

Si no hay ningún archivo de dibujo cargado capaz de proyectar \(MDT\), la orden muestra un aviso y termina.

Si no indicas parámetros, la orden muestra un cuadro de diálogo para seleccionar los códigos y proyecta todas las entidades con esos códigos.

La llamada a la orden desde la línea de comandos será:

proyecta\_cod=\[código\] \[tipo\] \[código\] \[tipo\] …

El tipo es obligatorio en cada par. En esta orden, `P` solo incluye los puntos, no los complejos puntuales, y `B` no tiene efecto. Si el código empieza por `#`, la orden utiliza todos los códigos de la tabla de códigos que tienen esa etiqueta.

### Ejemplo:

`proyecta_cod=020400 p`

## Características de la orden

| Tipo de orden | [Orden interactiva](proyecta-cod.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | MDT/Proyectar entidades contra los MDT cargados por código... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesMDT.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {ABB1C326-336A-45cc-896F-33DDE9BDBFA7} |

