# DA

Asigna/consulta el valor de _distancia activa_ y el valor de la _distancia activa secundaria._

## Parámetros

Esta orden se puede ejecutar con un parámetro, con dos parámetros o sin parámetros

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

Si no se especifica ningún parámetro, el programa solicitará que introduzcamos en la barra de mensajes primero la distancia activa y luego la secundaria.

Estas distancias las podemos introducir manualmente \(tecleando el valor y luego pulsando Enter\) o gráficamente en la ventana de dibujo. En caso de hacerlo gráficamente, se asignará la distancia entre los dos puntos digitalizados.

## Ejemplos

Para asignar como distancia activa principal el valor 12.45 ejecutaremos la orden:

```text
DA=12.5
```

Para asignar como distancia activa principal el valor 12.45 y como distancia activa secundaria el valor 22.49 ejecutaremos la orden:

```text
DA=12.45 22.49
```

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/DA.mp4" caption="" %}

## Características de la orden

| Tipo de variable | [Real](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Distancia activa con dos puntos o Inmediato/Distancia activa con cuatro puntos |
| Barra de herramientas en la que aparece la orden | Parámetros activos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {5481B0E5-F64A-4249-A51E-E9076404F0DA} |

