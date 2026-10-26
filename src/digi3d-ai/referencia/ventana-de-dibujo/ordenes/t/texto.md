# TEXTO
<!-- id: texto -->

Inserta un texto en el archivo de dibujo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| ------------------- | ----------- | ------- | -------- |
| 1 | Texto a insertar. Todo lo que sigue al nombre de la orden forma el texto, incluidos los espacios | Texto | Sí |

Si no se introducen parámetros, la orden solicita el texto a insertar en la barra de mensajes. Si se introduce el parámetro, la orden no solicita el texto.

El texto sigue al cursor. Pulsa el pulsador de datos para insertarlo en ese punto. El texto se crea con los códigos activos, la altura [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), la justificación [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y la rotación del ángulo activo [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md). Cada ejecución inserta un texto; con la variable [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) activada, la orden se vuelve a ejecutar hasta que se cancele con la tecla _Esc_.

### Ejemplo:

`texto=Tc`

## Observaciones

Si la variable [AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) es distinta de 0 y no se introduce parámetro, la orden propone como texto el número del último texto insertado más el valor de AUTONUM. El número del último texto insertado es el que ocupa en ese texto la posición de `%d` en [FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md).

Ejecuta la siguiente sucesión de órdenes para insertar textos pares (2, 4, 6, ...) y ejecuta `texto` sin parámetros después de esa sucesión para insertar cada texto siguiente:

`autonum=2  `\
`texto=2`

Ejecuta la siguiente sucesión de órdenes para insertar textos impares (1, 3, 5, ...) y ejecuta `texto` sin parámetros después de esa sucesión para insertar cada texto siguiente:

`autonum=2  `\
`texto=1`

Puedes modificar el formato de los parámetros de autonumeración mediante la variable [FORMATO_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md).

Ejecuta la siguiente sucesión de órdenes para introducir textos con los valores _Parcela 1, Parcela 2, Parcela 3,..._:

`formato_autonum=Parcela %d  `\
`autonum=1  `\
`texto`

Puedes insertar un símbolo si indicas que el texto que se va a insertar es @\[número de símbolo], siempre y cuando el código activo no utilice una fuente TrueType. La definición del símbolo se extrae del archivo de dibujo correspondiente en el directorio de símbolos.

Ejecuta la siguiente orden para introducir el símbolo 169 de tu directorio de símbolos:

`texto=@169`

Si la variable [TEXTO\_ORIENTADO\_CON\_CAMARA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) está activada, la orden coloca el texto perpendicular a la dirección de la mirada de la cámara y derecho en la pantalla, en lugar de colocarlo en el plano XY con el ángulo activo AA.

## Características de la orden

| Tipo de orden                                    | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Repite automáticamente                           | Sí                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Opción del menú donde aparece la orden           | Dibujar/Texto con ángulo activo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Barra de herramientas en la que aparece la orden | Textos                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Implementación | Nativa |
| Variables relacionadas                           | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) — factor de autonumeración<br>[FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) — formato del texto cuando se usa AUTONUM<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada<br>[TEXTO\_ORIENTADO\_CON\_CAMARA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) — orienta el texto con la cámara |
| Órdenes relacionadas                             | [1TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/1/1-texto.md)<br>[TEXTO\_EDITABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-editable.md)<br>[TEXTO\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r.md)<br>[TEXTO\_R\_EDITABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r-editable.md) |
| Nombre interno | {4BE8E46A-4C4A-4b4f-8A36-3098094FA688} |
