# RapidCal
<!-- id: rapidcal -->

La extensión **RapidCal** lee calibraciones de cámara de los archivos `.cal` de RapidCal. Solo proporciona la cámara: las orientaciones exteriores salen de otra extensión.

En el cuadro de selección de cámara, el tipo es **Archivos de cámara RapidCal** (`*.cal`). La extensión solo lee archivos con extensión `.cal` indicados como archivo de cámara del modelo o seleccionados cuando Digi3D.AI pide la cámara (consulta [Cámara](../README.md#cámara)).

## Formato del archivo

Cada línea contiene una clave y su valor separados por espacios. Digi3D.AI no distingue mayúsculas de minúsculas en las claves y no lee las demás líneas. Todas las claves son obligatorias:

| Clave | Valores |
|---|---|
| `Focal_length` | Focal. |
| `Principal_point_x`, `Principal_point_y` | Punto principal. |
| `General_scaling` | Escala general. |
| `Affinity` | Afinidad. |
| `Radial_k1`, `Radial_k2`, `Radial_k3` | Coeficientes de distorsión radial. |
| `Tangential_t1`, `Tangential_t2` | Coeficientes de distorsión tangencial. |
| `Un-orthogonality` | Desortogonalidad. |
| `Sensor_width` | Ancho del sensor en píxeles y ancho del sensor en unidades de longitud. |
| `Sensor_height` | Alto del sensor en píxeles y alto del sensor en unidades de longitud. |

De `Sensor_width` y `Sensor_height`, Digi3D.AI usa el tamaño en píxeles.

Ejemplo:

```
Focal_length 35.1234
Principal_point_x 0.0123
Principal_point_y -0.0456
General_scaling 1.0
Affinity 0.0
Radial_k1 -0.0001
Radial_k2 0.0
Radial_k3 0.0
Tangential_t1 0.0
Tangential_t2 0.0
Un-orthogonality 0.0
Sensor_width 6000 23.5
Sensor_height 4000 15.6
```

## Mensajes de error

* «Se ha localizado el siguiente error al abrir el archivo *archivo*: *error*»: Digi3D.AI no puede abrir el archivo.
* «No se localizó la palabra: "*clave*" en el archivo: *archivo*»: falta una de las claves.
