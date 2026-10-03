# PROYECTA\_POR\_CONDICION

Proyecta los vértices de las entidades con un determinado código sobre los MDT cargados si la diferencia de Z cumple una condición.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Operador de comparación: `<` proyecta si la diferencia es menor que el valor; cualquier otro texto proyecta si la diferencia es mayor que el valor | No |
| 2 | Valor de la diferencia de Z, en unidades del SRC | No |
| 3 … N | Pares de código y tipo de geometría, con el mismo formato que en [PROYECTA\_COD](proyecta-cod.md) | No |

## Observaciones

Para cada vértice, la orden calcula la diferencia en valor absoluto entre la Z del vértice y la Z del MDT. Si la diferencia cumple la condición, el vértice toma la Z del MDT; si no, conserva su Z.

Si no hay ningún MDT cargado, la orden muestra un aviso y termina. Si faltan parámetros, la orden emite un sonido de error y no hace nada.

## Características de la orden

| Tipo de orden | [Orden inmediata](proyecta-por-condicion.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesMDT.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {0E223FD8-DFE3-43ED-B42C-15C3CED6CED8} |
