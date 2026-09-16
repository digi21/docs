# CIR3D

Dibuja la circunferencia que pasa por tres puntos dados, en el plano que definen esos tres puntos.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Punto en el espacio de trabajo | Coordenadas XYZ | Si |
| 2 | Punto en el espacio de trabajo | Coordenadas XYZ | Si |
| 3 | Punto en el espacio de trabajo | Coordenadas XYZ | Si |

## Observaciones

La diferencia con [CIR3P](cir3p.md) está en el plano en el que se construye la circunferencia:

* **CIR3P** trabaja en el plano de la cámara. El círculo pasa por los tres puntos proyectados sobre ese plano y todos sus vértices quedan a la misma profundidad. Es la orden de siempre para trabajar en planta.
* **CIR3D** trabaja en el plano que definen los tres puntos, sea cual sea la orientación de la cámara. El círculo pasa exactamente por los tres puntos digitalizados.

CIR3D está pensada para los sensores con cámara libre —nube de puntos y ortofoto estereoscópica—, donde la cámara puede mirar en cualquier dirección: por ejemplo, para digitalizar un ojo de buey en el casco de un barco, con la cámara de frente al casco. Con CIR3P, en esa situación, el círculo salía en el plano de la cámara y no sobre la superficie.

Si los tres puntos están alineados no definen un plano: la orden avisa y espera otro tercer punto.

Con un sistema de referencia de coordenadas geográfico (longitud y latitud) el plano no se calcula correctamente, porque las coordenadas horizontales están en grados y la altura en metros. En ese caso el resultado es el mismo que con CIR3P.

## Características de la orden

| Tipo de orden | [Orden interactiva](cir3d.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Extensión | DigiNG.OrdenesStandard.dll |
| Órdenes relacionadas | [CIR3P](cir3p.md), [CIR2P](cir2p.md), [CIRCR](circr.md) |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {042900CE-F65B-48AF-91EA-BA55665D6572} |
