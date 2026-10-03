# TENTATIVO\_FIN

Si está activa, finaliza automáticamente el registro de un elemento lineal cuando se acepta un tentativo sobre otra entidad.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo Activado a Desactivado y de Desactivado a Activado.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |


## Observaciones

Se suele utilizar para dibujar medianerías.

La variable actúa sobre las líneas que se digitalizan con la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md). Si la línea ya tiene algún punto, el punto del tentativo se añade a la línea y, a continuación, la línea se finaliza. Si el tentativo es el primer punto, la línea empieza en él y no se finaliza.

Al iniciar Digi3D.AI la variable está desactivada. Si está activada [AUTOMODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md), cada tentativo desactiva esta variable y solo la activa si la configuración de _AUTOMODOB_ lo indica para el código activo y el código de la entidad del tentativo.

## Características de la orden

| Tipo de orden | [Variable booleana](tentativo-fin.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Tentativos/Tentativo y fin |
| Barra de herramientas en la que aparece la orden | Tentativo |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {14285ACD-EC5D-4895-B10D-8BEFF282EC48} |

