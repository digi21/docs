# EspaKernel
<!-- id: espakernel -->

La extensión **EspaKernel** lee la calibración de las cámaras y las orientaciones exteriores de los archivos `.els` de EspaKernel. También abre los archivos de pares estereoscópicos `.esp` en el panel [Proyecto fotogramétrico](../../../../paneles/proyecto-fotogrametrico.md).

## Archivo de aerotriangulación

En el campo **Archivo de aerotriangulación**, selecciona el tipo **Archivos de cámara EspaKernel** (`*.els`). La extensión solo lee archivos con extensión `.els`.

La extensión no proporciona orientación absoluta.

## Formato del archivo .els

Cada imagen ocupa un bloque que empieza por una línea `frame` y termina en una línea `frame_end`. Digi3D.AI lee de cada bloque:

* La línea siguiente a `frame`: su primera palabra es el nombre de la imagen. Digi3D.AI lo compara sin extensión con el nombre del archivo de imagen del modelo sin extensión, sin distinguir mayúsculas de minúsculas.
* La línea siguiente a `geometry`: un elemento XML `geometry` en una sola línea con el centro de proyección (`e`, `n`, `z`) y los giros (`omega`, `phi`, `kappa`) en grados centesimales. Digi3D.AI construye la matriz de rotación con el orden omega, phi, kappa.
* La línea siguiente a la de `geometry`: un elemento XML `camera` en una sola línea con la calibración de la cámara.
* La línea que empieza por `ground_mean_height`: su segunda palabra es la altura media del terreno.

Esquema de un bloque, con `…` en lugar de los valores:

```
frame
107.tif
geometry
<geometry><e>…</e><n>…</n><z>…</z><omega>…</omega><phi>…</phi><kappa>…</kappa></geometry>
<camera><f>…</f><pp_x_y>… …</pp_x_y><sca>…</sca><aff>…</aff><r_1_2_3>… … …</r_1_2_3><t_1_2>… …</t_1_2><unortho>…</unortho><sen_h_w_pix>… …</sen_h_w_pix></camera>
ground_mean_height …
frame_end
```

## Cámara

El archivo contiene la calibración de la cámara. Si el modelo no tiene archivo de cámara, Digi3D.AI la lee del archivo de aerotriangulación (consulta [Cámara](../README.md#cámara)). Del elemento `camera` de la imagen lee:

| Elemento | Contenido |
|---|---|
| `f` | Focal. |
| `pp_x_y` | Punto principal (x, y). |
| `sca` | Escala. |
| `aff` | Afinidad. |
| `r_1_2_3` | Coeficientes de distorsión radial K1, K2 y K3. |
| `t_1_2` | Coeficientes de distorsión tangencial P1 y P2. |
| `unortho` | Desortogonalidad. |
| `sen_h_w_pix` | Alto y ancho del sensor en píxeles. |

Si falta un elemento, Digi3D.AI muestra el mensaje «No se localizó el nodo: *elemento* en el archivo: *archivo*».

## Sistema de referencia de coordenadas

La extensión lee el sistema del archivo `.prj` con el mismo nombre que el archivo `.els` (`vuelo.prj` para `vuelo.els`). Si el `.prj` no existe, Digi3D.AI muestra el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal). La extensión no pregunta por el sistema vertical.

## Proyecto fotogramétrico

En el panel [Proyecto fotogramétrico](../../../../paneles/proyecto-fotogrametrico.md), selecciona el tipo **Archivos de pares estereoscópicos de EspaKernel** (`*.esp`). Cada línea del archivo `.esp` contiene el nombre de la imagen izquierda y el de la imagen derecha, sin extensión:

```
107 108
108 109
```

* Digi3D.AI lee las cámaras y las orientaciones del archivo `.els` con el mismo nombre que el `.esp`, en su misma carpeta.
* Las imágenes son los archivos *nombre*`.tif` de la carpeta del `.esp`. Si alguno de los dos no existe, el modelo no se puede cargar.
* Todos los modelos forman una sola pasada con el nombre del archivo `.esp`. Cada modelo se llama *izquierda*`-`*derecha*.
* El sistema de referencia sale del `.prj` con el mismo nombre que el `.esp` o, si no existe, del cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal).

## Mensajes de error

* «No se ha podido abrir el archivo: *archivo*»: Digi3D.AI no puede abrir el archivo `.els` o el `.esp`.
* «No se han localizado los parámetros de la imagen: *imagen* en el archivo: *archivo*»: ningún bloque `frame` corresponde a la imagen.
* «No se ha localizado la palabra "*palabra*" en el archivo: *archivo*»: falta `geometry`, `ground_mean_height` o `frame_end` en un bloque.
* «"*elemento*" tiene *n* valores y se esperaban *m* en el archivo: *archivo*»: la línea `ground_mean_height` no tiene valor, un elemento del XML `camera` (`pp_x_y`, `r_1_2_3`, `t_1_2` o `sen_h_w_pix`) tiene menos valores de los que indica la tabla de la sección [Cámara](#cámara), o una línea del `.esp` solo tiene el nombre de una imagen.
* «Error en la línea: *n*, columna: *n*» o «Error al cargar el archivo: *archivo* Línea: *n*, columna: *n*»: un elemento XML `geometry` o `camera` no está bien formado.
