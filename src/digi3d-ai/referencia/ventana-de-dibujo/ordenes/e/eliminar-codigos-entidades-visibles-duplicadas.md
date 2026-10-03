# ELIMINAR\_CODIGOS\_ENTIDADES\_VISIBLES\_DUPLICADAS

Elimina los códigos comunes de todas las entidades visibles duplicadas.

## Parámetros

No admite parámetros.

## Observaciones

La orden analiza las entidades no borradas, visibles, dentro de la zona de interés y con algún código visible de la tabla de códigos. Considera duplicadas dos entidades del mismo tipo, con el mismo número de vértices, cuyos vértices coinciden en X,Y (en el mismo sentido o en el inverso) y que comparten al menos un código. La Z no se compara.

En cada grupo de entidades duplicadas, la orden quita a cada entidad los códigos que ya tiene otra entidad anterior del grupo. Si una entidad se queda sin códigos, la orden la borra.

## Características de la orden

| Tipo de orden | [Orden inmediata](eliminar-codigos-entidades-visibles-duplicadas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Eliminar códigos duplicados de geometrías duplicadas |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {3FC43FE8-138B-46E9-85D1-C97513EF103C} |
