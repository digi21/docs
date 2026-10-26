# DA1
<!-- id: da1 -->

Asigna o consulta el valor de la _distancia activa_ principal y asigna el mismo valor a la _distancia activa secundaria_.

## Parámetros

Esta orden se puede ejecutar con un parámetro o sin parámetros.

### Con un parámetro

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Distancia activa principal y secundaria | Número real | Si |

La orden asigna siempre el mismo valor a las dos distancias: si se escribe un segundo parámetro, se ignora. Para asignar valores distintos, usa [DA](da.md).

`DA1=?` muestra en un globo los valores de la distancia activa principal y de la secundaria.

### Sin parámetros

Si no especificas ningún parámetro, el programa te solicitará que introduzcas en la barra de mensajes la distancia activa. El valor introducido se asigna a la distancia activa principal y a la secundaria.

Introduce la distancia activa manualmente \(teclea el valor y pulsa Enter\) o digitaliza dos puntos en la ventana de dibujo. Si digitalizas dos puntos para indicar la distancia, el programa asignará la distancia en planimetría (sin tener en cuenta la Z) entre esos puntos.

## Ejemplos

Ejecuta la orden para asignar 12.45 unidades de longitud de trabajo del dibujo a la distancia activa principal y a la secundaria:

```text
DA1=12.45
```

## Características de la orden

| Tipo de variable | [Real](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Distancia activa (con dos puntos) |
| Barra de herramientas en la que aparece la orden | Parámetros activos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {5F10DD07-28E7-4195-B0BE-EC2519D71225} |

