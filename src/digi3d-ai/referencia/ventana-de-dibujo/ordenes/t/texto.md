# TEXTO

Inserta un texto en el archivo de dibujo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| ------------------- | ----------- | ------- | -------- |
| 1 | Texto a insertar. Todo lo que sigue al nombre de la orden forma el texto, incluidos los espacios | Texto | Si |

Si no se introducen parámetros, la orden solicita el texto a insertar en la barra de mensajes. Si se introduce el parámetro, la orden no solicita el texto.

El texto sigue al cursor. Pulsa el pulsador de datos para insertarlo en ese punto. El texto se crea con los códigos activos, la altura [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), la justificación [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y la rotación del ángulo activo [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md). Cada ejecución inserta un texto; con la variable [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) activada, la orden se vuelve a ejecutar hasta que se cancele con la tecla _Esc_.

### Ejemplo:

`texto=Tc`

## Observaciones

Si la variable [AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) es distinta de 0 y no se introduce parámetro, la orden propone como texto el número del último texto insertado más el valor de AUTONUM. El número del último texto insertado es el que ocupa en ese texto la posición de `%d` en [FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md).

Si queremos insertar textos pares (2, 4, 6, ...) ejecutaríamos la siguiente sucesión de órdenes, y después `texto` sin parámetros para cada texto siguiente:

`autonum=2  `\
`texto=2`

Si queremos insertar texto impares(1, 3, 5, ...) ejecutaríamos la siguiente sucesión de órdenes, y después `texto` sin parámetros para cada texto siguiente:

`autonum=2  `\
`texto=1`

Podemos modificar el formato de los parámetros de auto numeración mediante la variable [FORMATO_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md).

Por ejemplo, si queremos introducir sucesivamente textos con el valor _Parcela 1, Parcela 2, Parcela 3,..._ ejecutaríamos la siguiente sucesión de órdenes:

`formato_autonum=Parcela %d  `\
`autonum=1  `\
`texto`

Podemos insertar un símbolo (cuya definición se extraerá del archivo de dibujo correspondiente en el directorio de símbolos) si indicamos que texto a insertar es @\[número de símbolo], siempre y cuando el código activo no utilice como fuente una fuente TrueType.

Por ejemplo, si queremos introducir el símbolo 169 de nuestro directorio de símbolos, ejecutaremos la siguiente orden:

`texto=@169`

## Características de la orden

| Tipo de orden                                    | [Orden interactiva](texto.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Repite automáticamente                           | Si                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Opción del menú donde aparece la orden           | Dibujar/Texto con ángulo activo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Barra de herramientas en la que aparece la orden | Textos                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Variables relacionadas                           | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) — factor de autonumeración<br>[FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) — formato del texto cuando se usa AUTONUM<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {4BE8E46A-4C4A-4b4f-8A36-3098094FA688} |
