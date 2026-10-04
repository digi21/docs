# Paquete `mdtopx.io.pointcloud`
<!-- id: mdtopx-io-pointcloud -->

Formatos de **nubes de puntos** y **trayectorias**. Leen a `scene.clouds` (una `CloudEntity` por nube,
con su `PointCloud` en `cloud`) y escriben las nubes de la escena. Todos siguen la
[interfaz común](mdtopx-io.md#interfaz-común-de-los-formatos) (`info`, `read`, `write`).

| Módulo | Formato | Lee | Escribe | Opciones |
|---|---|:-:|:-:|---|
| `las` | ASPRS LAS / LAZ (`.las`, `.laz`) | ✔ | ✔ | `write`: `decimals` (3) |
| `laz` | Igual que `las` (mismo plugin) | ✔ | ✔ | `write`: `decimals` (3) |
| `e57` | ASTM E57 (`.e57`) | ✔ | ✔ | — |
| `pts` | Leica HDS PTS (`.pts`) | ✔ | ✔ | `write`: `decimals` (3), `lines_as_points` (False), `point_spacing` (0) |
| `ptx` | Leica HDS PTX (`.ptx`) | ✔ | ✔ | `write`: `decimals` (6) |
| `pcd` | Point Cloud Data de PCL (`.pcd`) | ✔ | ✔ | `write`: `decimals` (3), `binary` (False) |
| `xyz` | ASCII XYZ (`.xyz`, `.txt`) | ✔ | ✔ | Ver más abajo |
| `pcap` | Captura Velodyne PCAP (`.pcap`) | ✔ | — | — |
| `topcon_ips` | Trayectoria Topcon IP-S2/IP-S3 (`.csv`) | ✔ | — | `read`: `as_line` (False) |
| `leica_pegasus` | Trayectoria Leica Pegasus (`.csv`) | ✔ | — | `read`: `as_line` (False) |
| `ladybug` | Trayectoria Ladybug (`.csv`) | ✔ | — | `read`: `as_line` (False) |

Detalles por formato:

- **LAS/LAZ**: al leer se crea una nube por cada *point source ID*, con todos los atributos LAS
  (intensidad, retornos, clasificación, ángulo, tiempo GPS y color). Al escribir se genera LAS 1.4
  (formato de punto 6, o 7 si hay color); la extensión `.las` o `.laz` decide si se comprime.
  `decimals` fija la escala de las coordenadas (3 = milímetro).
- **E57**: todos los escaneos se unen en una sola nube, ya en coordenadas terreno (se aplica la
  posición de cada escaneo), con intensidad y color si el archivo los tiene.
- **PTS**: cada bloque del archivo es una nube. Al escribir, `lines_as_points` vuelca también los
  vértices de las polilíneas como puntos, y `point_spacing` (mayor que 0) las remuestrea antes a esa
  distancia.
- **PTX**: cada escaneo es una nube.
- **PCAP**: capturas de sensores Velodyne (VLP-16, HDL-32E). Las coordenadas son **locales al
  sensor**: no se aplica GPS ni IMU.
- **Trayectorias**: los tres formatos usan la extensión `.csv`; cada módulo reconoce el suyo por el
  número de columnas. Con `as_line=True` la trayectoria se lee como una polilínea (en
  `scene.polylines`) en lugar de como una nube.

## XYZ

`xyz.read` admite estas opciones, que describen las columnas del archivo
(`[número de punto] x y z [intensidad] [r g b]`):

| Opción | Por defecto | Significado |
|---|---|---|
| `has_point_number` | False | La primera columna es un número de punto. |
| `has_intensity` | False | Hay una columna de intensidad. |
| `has_color` | False | Hay tres columnas de color. |
| `as_line` | False | Lee los puntos como una sola polilínea en vez de como nube. |

`xyz.write` escribe las columnas que se activen, en este orden: `write_coordinates` (True),
`write_classification`, `write_intensity`, `write_color`, `write_gps`, `write_id_source` (todas False).
`decimals` (6) fija los decimales, y `class_filter` es una lista de clases LAS separadas por comas que
se escriben (vacía = todas).

## Ejemplos

Contar los puntos de cada clase de un LAZ:

```python
from collections import Counter
from mdtopx.io.pointcloud import las

escena = las.read(r"C:\datos\vuelo.laz")
clases = Counter()
for nube in escena.clouds:
    for punto in nube.cloud.points:
        clases[punto.classification] += 1
print(sorted(clases.items()))
```

Pasar los puntos de suelo (clase 2) de un LAS a un XYZ con intensidad:

```python
from mdtopx.io.pointcloud import las, xyz

escena = las.read(r"C:\datos\vuelo.las")
xyz.write(r"C:\datos\suelo.xyz", escena, class_filter="2", write_intensity=True, decimals=3)
```
