# TENTATIVO\_INSERTA
<!-- id: tentativo-inserta -->

Inserta un nodo en las entidades lineales sobre las que hacemos tentativo, al registrar líneas.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo Activado a Desactivado y de Desactivado a Activado.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |


## Observaciones

Puedes activar o desactivar la función de [TENTATIVO\_INSERTA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-inserta.md) llamándola desde el menú de pantalla.

El vértice se inserta cuando el tentativo cae sobre un segmento de una línea o de un polígono, no sobre un vértice existente. La Z del vértice nuevo se interpola entre los dos vértices del segmento.

La inserción solo se hace si no hay ninguna orden en ejecución o si la orden en ejecución es [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md), salvo que esté activada la opción de insertar siempre en las propiedades del tentativo.

Al iniciar Digi3D.AI la variable está desactivada. Si está activada [AUTOMODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md), cada tentativo desactiva esta variable y solo la activa si la configuración de _AUTOMODOB_ lo indica para el código activo y el código de la entidad del tentativo.

## Características de la orden

| Tipo de orden | [Variable booleana](tentativo-inserta.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Tentativos/Tentativo inserta |
| Barra de herramientas en la que aparece la orden | Tentativo |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {76E34B6C-24DC-4211-8403-4FDB07CE4582} |

