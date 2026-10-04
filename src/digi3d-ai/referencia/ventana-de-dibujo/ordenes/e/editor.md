# EDITOR
<!-- id: editor -->

Permite editar las coordenadas de la geometría que se seleccione.

## Parámetros

No admite parámetros.

## Observaciones

La orden solo admite líneas del modelo actual; si seleccionas otro tipo de geometría, emite un sonido de error y sigue esperando la selección.

La orden muestra un cuadro de diálogo con un editor de texto que contiene una fila por vértice con las coordenadas X, Y, Z. Al aceptar el cuadro de diálogo, la orden lee los números de tres en tres y sustituye la línea por otra con esos vértices. Si el texto no contiene ninguna coordenada completa, la orden borra la línea.

## Características de la orden

| Tipo de orden | [Orden interactiva](editor.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Editar las coordenadas de una geometría... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [EDITAR\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-xyz.md) |
| Nombre interno | {B826AC47-F6A5-4D4B-8FE5-1DCDE8DA0FB1} |
