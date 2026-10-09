# INSERTAR\_HUECO
<!-- id: insertar-hueco -->

Inserta un hueco en un polígono o en una línea cerrada.

## Parámetros

No admite parámetros.

## Observaciones

1. Selecciona el polígono o la línea cerrada del modelo actual en el que quieres insertar el hueco.
2. Selecciona la línea o el polígono sin huecos que forma el hueco. Todos sus vértices tienen que estar dentro de la entidad seleccionada en el paso 1; si alguno queda fuera, la orden muestra un aviso y no lo acepta.

La orden sustituye la entidad del paso 1 por un polígono con sus mismos códigos y con el hueco añadido. Si la entidad del paso 1 era una línea cerrada, el resultado es un polígono.

En la configuración de las órdenes, la categoría **INSERTAR\_HUECO** tiene dos propiedades:

* **Acción a realizar con la geometría que se inserta en INSERTAR\_HUECO**: no eliminar la geometría que forma el hueco, eliminarla o preguntar.
* **Permitir añadir más de un hueco**: si está activa, la orden admite varios huecos seguidos y termina al pulsar la barra espaciadora.

Si la propiedad de la acción sobre la geometría del hueco indica preguntar, la orden pregunta si se borra el hueco antes de añadir el polígono. Si el control de calidad descarta el polígono nuevo, se conservan la entidad original y la geometría del hueco, y no se borra ninguna.

## Características de la orden

| Tipo de orden | [Orden interactiva](insertar-hueco.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Polígonos/Insertar hueco en polígono |
| Barra de herramientas en la que aparece la orden | Polígonos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BORRAR\_HUECO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borrar-hueco.md) |
| Nombre interno | {0A26B11E-E894-4b05-8034-0E89323F6710} |

