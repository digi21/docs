# Digi3D
<!-- id: digi3d-2 -->

La extensión **Digi3D** lee los archivos de cámara y de orientación propios de Digi3D.AI. No tiene un tipo de archivo de aerotriangulación: lee los archivos del directorio de trabajo del modelo.

## Orientaciones

La extensión busca en el directorio de trabajo del modelo, por este orden, con `<izquierda>` y `<derecha>` los nombres de las imágenes sin extensión:

1. `<izquierda>-<derecha>.rel.xml`: orientación relativa (consulta [Archivos de orientación relativa](../../../../../primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-relativa/archivos-orientacion-relativa.md)).
2. `<izquierda>-<derecha>.rel`: orientación relativa en el formato anterior.
3. `<izquierda>.orientation.xml` y `<derecha>.orientation.xml`: orientaciones exteriores de las dos imágenes. Con estos archivos, la orientación relativa no se puede modificar.

Si el modelo tiene **Archivo de aerotriangulación**, Digi3D.AI consulta esta extensión después de todas las demás, así que estos archivos solo se usan si ninguna otra extensión lee el archivo de aerotriangulación (consulta [Orientación relativa](../README.md#orientación-relativa)).

La extensión crea la orientación relativa en un sistema de referencia local: no lee archivos `.prj` ni muestra los cuadros de [Modelo sin sistema de referencia de coordenadas](../sistema-de-referencia-del-modelo.md). La extensión no proporciona orientación absoluta; el sensor la lee de `<izquierda>-<derecha>.abs.xml` (consulta [Orientación absoluta](../README.md#orientación-absoluta)).

## Cámara

La extensión crea la cámara de una imagen a partir de:

* El archivo de cámara del modelo, si tiene extensión `.cam`.
* Si el archivo de cámara no es un `.cam`, el archivo `<imagen>.orientation.xml` de la carpeta de la imagen, si existe.

### Archivo .cam

Un archivo `.cam` es un archivo de texto con formato INI y una sección `[Camara]`. Si el archivo no tiene esa sección, la extensión no lo lee.

| Clave | Valores |
|---|---|
| `Focal` | Focal, o focal en X y focal en Y. Obligatoria. |
| `PuntoPrincipal` o `PP` | Coordenadas X e Y del punto principal. Obligatoria. |
| `PPS` | Punto de mejor simetría. Por defecto, el punto principal. |
| `Escala` | Escala general. Por defecto, 1. |
| `TipoDistorsionTangencial` | `No`, `Brown` u `OpenCV`. Por defecto, `Brown`. |
| `p1`, `p2` | Coeficientes de distorsión tangencial. Por defecto, 0. |
| `TipoDesortogonalidad` | `No` o `Fraser`. Por defecto, `Fraser`. |
| `B1`, `b2` | Afinidad y desortogonalidad. Por defecto, 0. |
| `TamanoPixel` | Tamaño del píxel, uno o dos valores. Indica que la cámara es digital. |

La distorsión radial se indica de una de estas dos formas:

* **Polinomio** (con la clave `Pol`): la cámara debe ser digital (`TamanoPixel`). Claves `TipoValorDistorsion` (1 = corrección, 0 = error; por defecto, 1), `k0` (por defecto, 1), `k1`, `k2`, `k3`, `pol` (`K1_R2_K2_R4` o `K1_R3_K2_R5`), `OperacionRadial` (`X_CORRECTION` o `X_PLUS_X_CORRECTION_R`) y `TipoCorreccion` (`FotoAFiducial` u otro valor).
* **Tabla de radio y distorsión** (sin la clave `Pol`): claves `Distorsion1`, `Distorsion2`… con dos valores (radio y distorsión) y `TipoValorDistorsion` obligatoria (0 = error, 1 = corrección). Sin `TamanoPixel`, la cámara es analógica y necesita al menos cuatro marcas fiduciales en `Fiducial1`, `Fiducial2`… con sus coordenadas X e Y.

Ejemplo de cámara digital con tabla de distorsión:

```
[Camara]
Focal=100.500
PuntoPrincipal=0.010 -0.020
TamanoPixel=0.012
TipoValorDistorsion=1
Distorsion1=10 0.001
Distorsion2=20 0.002
```

### Archivo .orientation.xml

Del elemento `cam` del archivo `<imagen>.orientation.xml`, Digi3D.AI lee la focal (`focal`, o `focalX` y `focalY`), el punto principal (`xpp`, `ypp`), el tamaño de la imagen (`imageWidth`, `imageHeight`), la tabla de distorsión (`distortions/distortion` con `distance` y `error`) y, según la cámara:

* Cámara digital: `pixelSizeX` y `pixelSizeY`.
* Cámara analógica (sin tamaño de píxel): las marcas fiduciales de `fiducials/fiducial` con `x` e `y`.
