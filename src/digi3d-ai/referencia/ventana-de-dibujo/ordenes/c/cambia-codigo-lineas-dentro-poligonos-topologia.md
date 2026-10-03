# CAMBIA\_CODIGO\_LINEAS\_DENTRO\_POLIGONOS\_TOPOLOGIA

Cambia el código de los tramos de líneas que estén dentro de polígonos de una topología.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Tipo de polígonos: 0 todos, 1 con cualquier centroide, 2 con el centroide indicado | No |
| 2 | Texto del centroide. Solo se indica si el tipo de polígonos es 2 | Si |
| 3 | Códigos origen, separados por espacios | No |
| 4 | Código destino | No |

Si el tipo de polígonos no es 2, el parámetro 2 no se indica y los códigos origen y el código destino pasan a ser los parámetros 2 y 3. Con menos de tres parámetros, la orden muestra un cuadro de diálogo para indicar los mismos datos.

## Observaciones

La orden requiere al menos una topología cargada. Si no la hay, muestra un mensaje de error y termina.

La orden actúa en cada topología cargada sobre el archivo de dibujo activo. Corta las líneas con alguno de los códigos origen por el contorno de cada polígono que cumple el tipo indicado. A los tramos que quedan dentro del polígono les asigna el código destino. El código destino admite los comodines "\*" y "?", que se sustituyen por los caracteres del código original de cada línea.

## Características de la orden

| Tipo de orden | [Orden inmediata](cambia-codigo-lineas-dentro-poligonos-topologia.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Cambiar códigos de líneas que pasan por dentro de polígonos topológicos... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {5319DE3E-3FDD-4C31-8CD4-7272778CACC5} |
