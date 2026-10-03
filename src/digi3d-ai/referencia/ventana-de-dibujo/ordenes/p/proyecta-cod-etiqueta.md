# PROYECTA\_COD\_ETIQUETA

Proyecta todas la entidades con un determinado código sobre los MDTs cargados que tengan asignada la etiqueta indicada.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Etiqueta | No |
| 2 … N | Pares de código y [tipo de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), con el mismo formato que en [PROYECTA\_COD](proyecta-cod.md) | Si |

## Observaciones

La orden solo utiliza los archivos de dibujo cargados capaces de proyectar \(MDT\) que tienen asignada la etiqueta indicada. Si no indicas la etiqueta, o ningún MDT la tiene, la orden muestra un aviso y termina.

Si solo indicas la etiqueta, la orden muestra un cuadro de diálogo para seleccionar los códigos y proyecta todas las entidades con esos códigos, igual que [PROYECTA\_COD](proyecta-cod.md) sin parámetros.

## Características de la orden

| Tipo de orden | [Orden inmediata](proyecta-cod-etiqueta.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesMDT.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {B61F5C8A-D1D8-4C30-B2A1-0C46B5FC12F1} |
