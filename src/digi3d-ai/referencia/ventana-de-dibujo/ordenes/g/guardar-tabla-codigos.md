# GUARDAR\_TABLA\_CODIGOS
<!-- id: guardar-tabla-codigos -->

Guarda en un archivo la tabla de códigos activa.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Archivo en el que se guarda la tabla de códigos. Si la ruta contiene espacios, escríbela entre comillas. | Sí |

## Observaciones

Sin parámetros, la orden muestra un cuadro de diálogo para indicar el archivo y guarda en él la tabla de códigos. La extensión por defecto es `.tab.xml`. Con el archivo como parámetro, guarda la tabla en ese archivo sin mostrar el cuadro. Si la tabla de códigos activa está cifrada, la orden termina sin mostrar el cuadro de diálogo ni guardar nada.

Si se graba una macro, la orden anota como parámetro el archivo elegido en el cuadro. Si cancelas el cuadro, no se anota.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Herramientas/Guardar tabla de códigos... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {C84B6EB9-4E49-47BE-B8B5-190D30AB2679} |
