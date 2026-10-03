# VELOCIDAD\_SPACEMOUSE\_XYZ

Configura el factor de velocidad de desplazamiento para el dispositivo _SpaceMouse_ en la ventana de dibujo.

## Parámetros

Esta orden se puede ejecutar con o sin parámetros.

### Con parámetros

| Número de parámetro | Descripción         | Valores     | Opcional |
| ------------------- | ------------------- | ----------- | -------- |
| 1                   | Velocidad a asignar | Número real | Si       |

### Sin parámetros

Si ejecutamos esta orden sin parámetros, la barra de estado muestra un cuadro de texto para escribir el valor. La orden solo acepta el valor tecleado: si se digitaliza un punto, emite un sonido de error y sigue esperando el valor.

Al iniciar Digi3D.AI el factor vale 0.001.

## Ejemplos

Para asignar como factor de velocidad 0.001:

```
VELOCIDAD_SPACEMOUSE_XYZ=0.001
```

## Características de la orden

| Tipo de variable                                 | [Real](../../../ordenes/variables/variables-reales.md) |
| ------------------------------------------------ | ------------------------------------------------------ |
| Repite automáticamente                           | No                                                     |
| Opción del menú donde aparece la orden           | No dispone de opción en un menú.                       |
| Barra de herramientas en la que aparece la orden | No aparece en ninguna barra de herramientas.           |
| Extensión                                        | DigiNG.OrdenesStandard.dll                             |
| Variables relacionadas                           | No tiene variables relacionadas                        |
| Nombre interno                                   | {C075944F-4B38-443B-927E-54BDBEB8C55C}                 |
|                                                  |                                                        |
