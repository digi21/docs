# Digi3D
<!-- id: digi3d-2 -->

La extensión **Digi3D** lee los archivos de cámara y de orientación propios de Digi3D.AI. No tiene un tipo de archivo de aerotriangulación: lee los archivos del directorio de trabajo del modelo.

## Orientaciones

La extensión busca los siguientes archivos en el directorio de trabajo del modelo, por este orden. `<izquierda>` y `<derecha>` representan los nombres de las imágenes sin extensión:

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

Un archivo `.cam` es un archivo de texto con formato INI y una sección `[Camara]` o `[Camera]`. Si el archivo no tiene ninguna de las dos secciones, la extensión no lo lee. En el cuadro de selección de cámara, el tipo es **Archivos de cámara de Digi3D** (`*.cam`). Los archivos `.cam` se crean y se editan con el cuadro de diálogo [Editor de archivos de cámara](../../../../cuadros-de-dialogo/editor-archivos-camara.md).

La sección y las claves se pueden escribir en español o en inglés. Digi3D.AI busca cada clave primero con el nombre en el idioma de la interfaz y después con el nombre en el otro idioma, así que un mismo archivo se lee con la interfaz en los dos idiomas. Las longitudes van en mm.

| Clave en español | Clave en inglés | Valores |
|---|---|---|
| `Focal` | `Focal` | Focal, o focal en X y focal en Y. Obligatoria. |
| `PuntoPrincipal` o `PP` | `PrincipalPoint` o `PP` | Coordenadas X e Y del punto principal, respecto al centro de la imagen y con el eje Y hacia arriba. Obligatoria. |
| `PPS` | `PPS` | Punto de mejor simetría. Por defecto, el punto principal. |
| `Escala` | `Scale` | Escala general. Por defecto, 1. |
| `TipoDistorsionTangencial` | `TypeTangentialDistortion` | `No`, `Brown` u `OpenCV`. Por defecto, `Brown`. |
| `p1`, `p2` | `p1`, `p2` | Coeficientes de distorsión tangencial. Por defecto, 0. |
| `TipoDesortogonalidad` | `TypeDesortogonality` | `No` o `Fraser`. Por defecto, `Fraser`. |
| `B1`, `b2` | `B1`, `b2` | Afinidad y desortogonalidad. Por defecto, 0. |
| `TamanoPixel` | `PixelSize` | Tamaño del píxel, uno o dos valores. Indica que la cámara es digital. |
| `TipoValorDistorsion` | `KindOfDistortionValues` | 1 = corrección (de medida a ideal), 0 = error (de ideal a medida). |
| `Pol` | `Pol` | `K1_R2_K2_R4` o `K1_R3_K2_R5`: potencias del radio del polinomio de distorsión radial. |
| `k0`, `k1`, `k2`, `k3` | `k0`, `k1`, `k2`, `k3` | Coeficientes del polinomio. |
| `OperacionRadial` | `OperacionRadial` | `X_CORRECTION` o `X_PLUS_X_CORRECTION_R`. Por defecto, `X_CORRECTION`. |
| `TipoCorreccion` | `TypeCorrection` | `FotoAFiducial` (en inglés, `PhotoToFiductial`): el polinomio se evalúa en coordenadas foto, en mm. Con cualquier otro valor, en coordenadas cámara. |
| `Distorsion1`, `Distorsion2`… | `Distorsion1`, `Distorsion2`… | Radio y distorsión de la tabla de distorsión. |
| `Fiducial1`, `Fiducial2`… | `Fiducial1`, `Fiducial2`… | Coordenadas X e Y de las marcas fiduciales. |

La distorsión radial se indica de una de estas dos formas:

* **Polinomio** (con la clave `Pol`): la cámara debe ser digital (`TamanoPixel`). `TipoValorDistorsion` vale 1 por defecto. Con `OperacionRadial=X_CORRECTION`, el polinomio multiplica la coordenada y `k0` vale 1 por defecto; con `X_PLUS_X_CORRECTION_R`, el polinomio da el incremento del radio y `k0` vale 0 por defecto.
* **Tabla de radio y distorsión** (sin la clave `Pol`): claves `Distorsion1`, `Distorsion2`… con dos valores (radio y distorsión), en cualquier orden, y `TipoValorDistorsion` obligatoria. Sin `TamanoPixel`, la cámara es analógica y necesita al menos cuatro marcas fiduciales en `Fiducial1`, `Fiducial2`… con sus coordenadas X e Y.

#### Ejemplo de cámara digital con polinomio

Esta es la calibración de una Phase One iXM-RS150F con objetivo RS 110 mm, calculada con Australis:

```
[Camara]
Focal=108.2782
PuntoPrincipal=0.0351 -0.2000
TamanoPixel=0.00376
Pol=K1_R2_K2_R4
OperacionRadial=X_CORRECTION
TipoValorDistorsion=1
TipoCorreccion=FotoAFiducial
k0=1
k1=-5.04633e-06
k2=7.03636e-10
k3=1.04997e-13
TipoDistorsionTangencial=Brown
p1=-1.34225e-06
p2=2.48277e-06
TipoDesortogonalidad=Fraser
B1=-5.10651e-06
b2=2.72499e-06
```

Australis y este tipo de cámara usan el mismo modelo: las correcciones se calculan en mm, sobre la coordenada medida, con el eje Y hacia arriba y el origen en el centro de la imagen. Los valores del informe de Australis se copian sin cambiar ningún signo: `C` en `Focal`, `XP` e `YP` en `PuntoPrincipal`, `K1` a `K3` en `k1` a `k3`, `P1` y `P2` en `p1` y `p2`, y `B1` y `B2` en `B1` y `b2`.

Con las claves en inglés, el mismo archivo empieza así:

```
[Camera]
Focal=108.2782
PrincipalPoint=0.0351 -0.2000
PixelSize=0.00376
KindOfDistortionValues=1
TypeCorrection=PhotoToFiductial
```

#### Ejemplo de cámara digital con tabla de distorsión

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
