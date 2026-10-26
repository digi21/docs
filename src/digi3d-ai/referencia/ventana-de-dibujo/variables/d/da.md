# DA
<!-- id: da -->

Asigna o consulta el valor de la _distancia activa_ y el de la _distancia activa secundaria_.

## Parámetros

Esta orden se puede ejecutar con un parámetro, con dos parámetros o sin parámetros.

### Con un parámetro

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Distancia activa principal y secundaria | Número real | Si |

### Con dos parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Distancia activa principal | Número real | Si |
| 2 | Distancia activa secundaria | Número real | Si |

### Sin parámetros

Si no especificas ningún parámetro, el programa te solicitará que introduzcas en la barra de mensajes primero la distancia activa y, después de introducir la distancia activa, la distancia activa secundaria.

Introduce la distancia activa principal y la secundaria manualmente \(teclea cada valor y pulsa Enter\) o digitaliza dos puntos en la ventana de dibujo para indicar cada distancia. Si digitalizas dos puntos para indicar una distancia, el programa asignará la distancia en planimetría (sin tener en cuenta la Z) entre esos puntos.

### Consulta

`DA=?` muestra en un globo los valores de la distancia activa principal y de la secundaria.

## Observaciones

El valor por defecto de las dos distancias es 1.

## Ejemplos

Ejecuta la orden para asignar 12.45 unidades de longitud de trabajo del dibujo a la distancia activa principal y a la secundaria:

```text
DA=12.45
```

Ejecuta la orden para asignar como distancia activa principal 12.45 unidades de longitud de trabajo del dibujo y como distancia activa secundaria 22.49 unidades de longitud de trabajo del dibujo:

```text
DA=12.45 22.49
```

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/DA.mp4" caption="" type="video/mp4"></video>

## Características de la orden

| Tipo de variable | [Real](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Distancia activa (con cuatro puntos) |
| Barra de herramientas en la que aparece la orden | Parámetros activos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {5481B0E5-F64A-4249-A51E-E9076404F0DA} |

