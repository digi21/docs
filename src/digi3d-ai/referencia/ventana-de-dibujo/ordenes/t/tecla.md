# TECLA

Asigna órdenes de Digi3D.AI a pulsaciones de teclas en el teclado virtual activo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Archivo de texto con las órdenes a asignar, una por línea | Ruta de archivo | Si |

## Observaciones

Esta orden permite crear o modificar las asignaciones del teclado virtual activo (archivo `.keyboard.xml`) sin editar el archivo. Si no hay ningún teclado virtual cargado, la orden pregunta si se quiere crear uno y pide el nombre del archivo.

1. Pulsa la tecla o la combinación de teclas a asignar, por ejemplo _Ctrl+a_ o _Mayús+F3_. Las teclas _Mayús_, _Ctrl_, _Alt_, _Pausa_ y _Bloq Mayús_ no se pueden asignar solas.
2. Escribe en el cuadro de diálogo de asignación las órdenes, una por línea, y la descripción. El cuadro muestra las órdenes que ya tiene asignadas la tecla.
3. Pulsa _Aceptar_ para guardar la asignación. La orden vuelve a esperar otra tecla.
4. Pulsa _Esc_ para terminar la orden.

Si se indica el parámetro, el cuadro de diálogo de asignación muestra las órdenes leídas del archivo y la orden termina después de la primera asignación aceptada.

## Características de la orden

| Tipo de orden | [Orden inmediata](tecla.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Teclados virtuales/Asignar una orden al teclado virtual activo... |
| Barra de herramientas en la que aparece la orden | Teclados |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CAMBIA\_TECLAS\_MNU](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-teclas-mnu.md) |
| Nombre interno | {EB6809CA-AA03-4dfb-9D7A-D639EFDBC051} |

## Nota

Tienes que tener en cuenta que Digi3D.AI no puede importar tus archivos de tecla antiguos, tenemos un [programa de consola](/digi3d-ai/primeros-pasos/primeros-pasos-usuarios-versiones-anteriores/archivos-configuracion-teclas.md) que te puede ayudar a importarlos.

