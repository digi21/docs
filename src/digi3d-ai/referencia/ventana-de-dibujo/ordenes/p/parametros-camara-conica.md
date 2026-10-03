# PARAMETROS\_CAMARA\_CONICA

Asigna parámetros de la cámara cónica.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Campo de visión vertical (Fov), en grados sexagesimales. Valor por defecto: 45 | Si |
| 2 | Distancia del plano de recorte cercano. Valor por defecto: 0,3 | Si |
| 3 | Distancia del plano de recorte lejano. Valor por defecto: 500 | Si |

## Observaciones

Si indicas los tres parámetros, la orden guarda los valores en el registro de Windows. Si indicas menos de tres, la orden muestra un cuadro de diálogo para introducirlos.

Si la cámara de la ventana de dibujo es cónica, la orden aplica los valores guardados y regenera la vista. Si la cámara no es cónica, la orden [CAMARA\_CONICA](../c/camara-conica.md) aplica los valores guardados.

## Características de la orden

| Tipo de orden | [Orden inmediata](parametros-camara-conica.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CAMARA\_CONICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camara-conica.md)<br>[CAMARA\_ORTOFONAL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camara-ortofonal.md) |
| Nombre interno | {4E593400-6A19-45CE-9A70-75D311A0C09D} |
