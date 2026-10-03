# REEMPLAZAR\_TEXTO

Reemplazar un texto por otro.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código | No |
| 2 | Texto a buscar | No |
| 3 | Texto de reemplazo | No |

## Observaciones

La orden busca en el archivo de dibujo activo los textos visibles, dentro de la zona de interés, que tienen el código indicado y contienen el texto a buscar. En cada uno sustituye todas las apariciones del texto a buscar por el texto de reemplazo. La búsqueda distingue mayúsculas y minúsculas.

Si el texto a buscar o el de reemplazo contienen espacios, escríbelos entre comillas dobles.

Si faltan parámetros, la orden muestra un aviso y termina. Si la orden modifica algún texto, muestra cuántos textos ha modificado.

## Características de la orden

| Tipo de orden | [Orden inmediata](reemplazar-texto.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {ABC62815-50DB-4119-9446-C3B83D55D3F5} |
