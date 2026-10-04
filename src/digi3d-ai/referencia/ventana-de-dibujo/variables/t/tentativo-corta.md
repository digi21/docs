# TENTATIVO\_CORTA
<!-- id: tentativo-corta -->

Tentativa y corta la entidad en la que se ha hecho el tentativo.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo Activado a Desactivado y de Desactivado a Activado.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |


## Observaciones

Si está activa, al aceptar un tentativo sobre una línea, el programa ejecuta la orden [CORTAR\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-e.md) sobre esa línea en el punto del tentativo. Los polígonos y el resto de tipos de entidad no se cortan.

El corte solo se hace si no hay ninguna orden en ejecución o si la orden en ejecución es [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md), salvo que esté activada la opción de cortar siempre en las propiedades del tentativo.

Al iniciar Digi3D.AI la variable está desactivada. Si está activada [AUTOMODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md), cada tentativo desactiva esta variable y solo la activa si la configuración de _AUTOMODOB_ lo indica para el código activo y el código de la entidad del tentativo.

## Características de la orden

| Tipo de orden | [Variable booleana](tentativo-corta.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Tentativos/Tentativo y corta |
| Barra de herramientas en la que aparece la orden | Tentativo |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {87370109-FF82-421c-92F6-5891EB894BCE} |

