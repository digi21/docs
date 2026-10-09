# COLOR_FONDO
<!-- id: color-fondo -->

Cambia el color de fondo de la ventana de dibujo.

## Parámetros

Esta orden se puede ejecutar con un parámetro, con tres parámetros o sin parámetros.

### Con un parámetro

| Número de parámetro | Descripción                                                            | Valores admitidos | Opcional |
| ------------------- | ---------------------------------------------------------------------- | ----------------- | -------- |
| 1                   | Índice al color de la paleta de colores de la tabla de códigos activa. | 0-255             | Si       |

### Con tres parámetros

| Número de parámetro | Descripción | Valores admitidos                                         | Opcional |
| ------------------- | ----------- | --------------------------------------------------------- | -------- |
| 1                   | Color Rojo  | Número entre 0 y 255 que especifica la cantidad de rojo.  | No       |
| 2                   | Color Verde | Número entre 0 y 255 que especifica la cantidad de verde. | No       |
| 3                   | Color Azul  | Número entre 0 y 255 que especifica la cantidad de azul.  | No       |

### Sin parámetros

Si se ejecuta esta orden sin parámetros, muestra el cuadro de diálogo [Seleccionar color](../../../cuadros-de-dialogo/seleccionar-color.md) con la paleta de la tabla de códigos activa. Al elegir un color de la paleta, el color de fondo toma el valor RGB de esa entrada, no su número: si después cambia la paleta, el fondo no cambia. El cuadro no muestra la opacidad (**A**), porque el color de fondo es siempre opaco. Si no hay ninguna tabla de códigos cargada, muestra el cuadro sin paleta. En el cuadro, pulsar **Aceptar** o Intro aplica los valores escritos en los cuadros R, G y B, sin necesidad de hacer clic en el color. El cuadro del valor hexadecimal es de solo lectura.

## Observaciones

Los valores negativos se toman en valor absoluto y los mayores de 255 se limitan a 255. Con dos parámetros o con más de tres, la orden emite un sonido de error y no cambia el color.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/COLOR_FONDO.mp4" type="video/mp4"></video>

## Características de la orden

| Tipo de variable                                 | [Numérica](../../../ordenes/variables/variables-numericas.md)                |
| ------------------------------------------------ | ---------------------------------------------------------------------------- |
| Repite automáticamente                           | No                                                                           |
| Opción del menú donde aparece la orden           | _Esta orden no tiene asociada ninguna opción de menú_                        |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                   |
| Variables relacionadas                           | No tiene variables relacionadas                                              |
| Nombre interno | {CC84B0E0-EFB8-48bc-97A2-DEF9AB885021} |
