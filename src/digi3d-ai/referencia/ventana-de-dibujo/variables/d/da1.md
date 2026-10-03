# DA1

Asigna/consulta el valor de _distancia activa_ primaria y asigna el mismo valor a la _distancia activa secundaria_.

## Parámetros

Esta orden se puede ejecutar con un parámetro o sin parámetros

### Con un parámetro

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Distancia activa principal y secundaria | Número real | Si |

Con un segundo parámetro, la orden se comporta como [DA](da.md): el primero se asigna a la distancia activa principal y el segundo a la secundaria.

`DA1=?` muestra en un globo los valores de la distancia activa principal y de la secundaria.

### Sin parámetros

Si no se especifica ningún parámetro, el programa solicitará que introduzcamos en la barra de mensajes la distancia activa. El valor introducido se asigna a la distancia activa principal y a la secundaria.

Esta distancia la podemos introducir manualmente \(tecleando el valor y luego pulsando Enter\) o gráficamente en la ventana de dibujo. En caso de hacerlo gráficamente, se asignará la distancia en planimetría (sin tener en cuenta la Z) entre los dos puntos digitalizados.

## Ejemplos

Para asignar el valor 12.45 a la distancia activa principal y a la secundaria ejecutaremos la orden:

```text
DA1=12.45
```

## Características de la orden

| Tipo de variable | [Real](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Distancia activa con dos puntos |
| Barra de herramientas en la que aparece la orden | Parámetros activos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {5F10DD07-28E7-4195-B0BE-EC2519D71225} |

