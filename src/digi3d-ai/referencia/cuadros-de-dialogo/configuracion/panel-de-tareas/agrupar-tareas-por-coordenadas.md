# Agrupar tareas por coordenadas
<!-- id: agrupar-tareas-por-coordenadas -->

Si se habilita, se agrupan todas las tareas que tienen la misma coordenada, para evitar repetir las mismas coordenadas varias veces.

## Valores posibles

* **Sí**. Las tareas con la misma coordenada se agrupan.
* **No**. Cada tarea se muestra por separado, aunque comparta coordenada con otra.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Valor | `AgruparTareasPorCoordenadas` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
