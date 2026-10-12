# OpenCV
<!-- id: opencv -->

La extensión **OpenCV** lee calibraciones de cámara en el formato de OpenCV: matriz de la cámara y coeficientes de distorsión, en archivos de texto `.cocv`. Solo proporciona la cámara: las orientaciones exteriores salen de otra extensión.

En el cuadro de selección de cámara, el tipo es **Archivos de calibración de cámaras OpenCV** (`*.cocv`).

## Qué archivo lee

Para cada imagen, la extensión busca, por este orden:

1. El archivo `.cocv` con el mismo nombre que la imagen, en su misma carpeta (`107.cocv` para `107.tif`).
2. El archivo `.cocv` con el mismo nombre que el archivo de cámara del modelo o, si el modelo no tiene archivo de cámara y tiene archivo de aerotriangulación, que el archivo de aerotriangulación.

La extensión busca primero el `.cocv` de la imagen, aunque el modelo indique otro archivo de cámara. Consulta [Cámara](../README.md#cámara).

## Formato del archivo

| Línea | Contenido |
|---|---|
| 1 | Primera fila de la matriz de la cámara: *fx* 0 *cx*. |
| 2 | Segunda fila: 0 *fy* *cy*. |
| 3 | Tercera fila. La línea debe existir, pero Digi3D.AI no lee su contenido. |
| 4 | Coeficientes de distorsión en el orden de OpenCV: *k1* *k2* *p1* *p2* *k3* *k4* *k5* *k6*. Los coeficientes que faltan valen 0, y la línea puede no existir. |

Las dos primeras líneas deben tener exactamente tres valores. Si el archivo no cumple el formato, la extensión no lo lee y no muestra ningún mensaje: Digi3D.AI prueba con las demás extensiones.

Ejemplo:

```
3650.21 0 2736.45
0 3650.21 1824.32
0 0 1
-0.0123 0.0456 0.0001 -0.0002 -0.0321
```
