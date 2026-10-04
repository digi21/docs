# ELIMINAR\_PUNTOS\_DOBLES
<!-- id: eliminar-puntos-dobles -->

Elimina los puntos dobles de las entidades del archivo de dibujo activo. Si no se indica ningún parámetro, se eliminan únicamente los que coincidan en X,Y,Z. Si el parámetro es distinto de 0, se eliminan también los que coincidan únicamente en X,Y.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Eliminar también los puntos que coincidan solo en X,Y (0/1) | Si |

## Observaciones

La orden solo procesa líneas y polígonos (incluidos sus huecos) que no estén borrados, que sean visibles y que estén dentro de la zona de interés.

## Características de la orden

| Tipo de orden | [Orden inmediata](eliminar-puntos-dobles.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Eliminar puntos dobles/Puntos que coincidan en X,Y,Z |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {9D15A184-EFC0-415A-97AD-A35D627FF94A} |
