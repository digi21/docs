# ASIGNAR\_Z\_CENTROIDE

Asigna la Z del centroide a las líneas que forman cada polígono de las topologías indicadas.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Nombres de las topologías a incluir | Uno o más nombres de topologías cargadas, separados por espacios | Si |

## Observaciones

La orden necesita al menos una topología cargada; si no la hay, muestra un mensaje de error y termina. Por cada nombre que no corresponde a ninguna topología cargada, la orden muestra un aviso. Si no se pasa ningún nombre, la orden usa todas las topologías cargadas. La opción de menú ejecuta la orden una vez por cada topología cargada.

Para cada polígono con centroide de la topología del archivo de dibujo activo, la orden asigna a todos los vértices de las líneas del contorno exterior la Z del centroide. No modifica las líneas de los huecos.

## Características de la orden

| Tipo de orden | [Orden inmediata](asignar-z-centroide.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Asignar la Z del centroide a las líneas que forman el polígono/Todas las topologías |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {CCEC81C6-855C-4BE7-AE8A-B29C4BB0023F} |
