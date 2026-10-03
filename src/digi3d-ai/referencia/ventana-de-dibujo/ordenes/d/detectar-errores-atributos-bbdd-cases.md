# DETECTAR\_ERRORES\_ATRIBUTOS\_BBDD\_CASES

Detecta líneas y polígonos de dos archivos de dibujo distintos que tienen continuidad geométrica pero con atributos de BBDD distintos.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

## Observaciones

La orden necesita al menos dos archivos de dibujo cargados. Con menos, muestra un mensaje de error.

La orden compara cada par de archivos de dibujo. Dos líneas tienen continuidad geométrica cuando el extremo de una coincide con el extremo de la otra; dos polígonos, cuando son adyacentes. Por cada pareja con continuidad cuyos atributos de base de datos no coinciden, la orden crea una tarea de error con una subtarea para cada entidad. La comparación no tiene en cuenta los campos marcados para excluirse al comparar atributos.

- Sin parámetros, la orden compara solo las parejas de entidades con los mismos códigos.
- Con parámetros, la orden compara las entidades que tengan alguno de los códigos indicados, aunque los códigos de las dos entidades sean distintos.

## Características de la orden

| Tipo de orden | [Orden inmediata](detectar-errores-atributos-bbdd-cases.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [AJUSTA\_LIMITES\_ARCHIVOS\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/ajusta-limites-archivos-dibujo.md)<br>[CONTROL\_TOPOLOGICO\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-topologico-cases.md)<br>[DETECTAR\_ERRORES\_CONTINUIDAD\_LINEAS\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-errores-continuidad-lineas-cases.md) |
| Nombre interno | {FF569210-FB8B-478B-8337-8A4AE54449F2} |
