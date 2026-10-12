# IMU
<!-- id: imu -->

La extensión **IMU** lee las orientaciones exteriores de archivos de texto `.eo` e `.imu` que indican, para cada imagen, el centro de proyección y tres giros. Admite también el formato `.eo` de UltraMap.

## Archivo de aerotriangulación

En el campo **Archivo de aerotriangulación**, selecciona el tipo **Centros de proyección y giros (\*.eo,\*.imu)** (`*.eo;*.imu`). La extensión solo lee archivos con extensión `.eo` o `.imu`.

El archivo no contiene la calibración de la cámara. Indica un archivo de cámara en el modelo o selecciónalo cuando Digi3D.AI lo pida (consulta [Cámara](../README.md#cámara)).

La extensión no proporciona orientación absoluta.

## Formato del archivo

La extensión admite dos formatos:

* **Clásico**: una línea por imagen con el nombre de la imagen y los valores separados por espacios.
* **UltraMap**: un archivo dividido en secciones. La sección `[PARAMETERS]` contiene la línea `EPSG_CODE` y la sección `[Events]` contiene una línea por imagen con el número de evento y los valores separados por `;`.

Digi3D.AI lee los dos formatos con las mismas reglas:

* No lee las líneas vacías, las que empiezan por `#` (comentarios) ni las que empiezan por `[` (cabeceras de sección).
* La línea que empieza por `EPSG_CODE;` indica el sistema de referencia de coordenadas (consulta [Sistema de referencia de coordenadas](#sistema-de-referencia-de-coordenadas)).
* En el resto de líneas, el carácter `;` equivale a un espacio. Cada línea con siete columnas o más corresponde a una imagen: nombre de la imagen o número de evento, X, Y y Z del centro de proyección, omega, phi y kappa. Digi3D.AI no lee las columnas a partir de la octava ni las líneas con menos de siete columnas.
* Si el archivo empieza por la marca de orden de bytes de UTF-8, Digi3D.AI lo lee como UTF-8. Si no, lo lee con la página de códigos ANSI de Windows.

Digi3D.AI compara la primera columna con el nombre del archivo de cada imagen del modelo, con extensión o sin ella, sin distinguir mayúsculas de minúsculas. Si varias líneas coinciden, usa la primera.

Ejemplo de archivo clásico:

```
# Imagen X Y Z Omega Phi Kappa
107 445210.123 4485012.456 2345.678 0.1234 -0.5678 90.1234
108 445890.321 4485020.654 2346.012 0.2345 -0.4567 90.2345
```

Ejemplo de archivo de UltraMap:

```
[PARAMETERS]
EPSG_CODE;25830;5782
[Events]
# Evento;X;Y;Z;Omega;Phi;Kappa
107;445210.123;4485012.456;2345.678;0.1234;-0.5678;90.1234
108;445890.321;4485020.654;2346.012;0.2345;-0.4567;90.2345
```

## Unidades y orden de los giros

La categoría [Importador de centros de proyección y giros (.eo, .imu)](../../../../cuadros-de-dialogo/configuracion/importador-de-centros-de-proyeccion-y-giros/README.md) de la configuración indica cómo se interpretan los giros:

* [Unidades de los giros](../../../../cuadros-de-dialogo/configuracion/importador-de-centros-de-proyeccion-y-giros/unidades-de-los-giros.md): **Radianes**, **Sexagesimal** o **Centesimal**. El valor por defecto es **Sexagesimal**.
* [Orden de los giros](../../../../cuadros-de-dialogo/configuracion/importador-de-centros-de-proyeccion-y-giros/orden-de-los-giros.md): orden con el que se construye la matriz de rotación. El valor por defecto es **Omega-Phi-Kappa**.

Digi3D.AI lee los dos valores cada vez que carga un modelo.

### Imágenes giradas por UltraMap

Si la imagen es un archivo TIFF (`.tif` o `.tiff`) cuya descripción (etiqueta *ImageDescription*) empieza por `Vexcel` o `UltraCam` e incluye una línea `ROTATION:` con un ángulo en grados, Digi3D.AI suma ese ángulo a kappa, convertido a las unidades configuradas. Digi3D.AI solo aplica esta corrección con el orden de giros **Omega-Phi-Kappa**.

## Sistema de referencia de coordenadas

La extensión obtiene el sistema de referencia de coordenadas en este orden:

1. El archivo `.prj` con el mismo nombre que el archivo de aerotriangulación (`Bronchales.prj` para `Bronchales.eo`).
2. La línea `EPSG_CODE` del propio archivo, con una de estas dos formas:
   * `EPSG_CODE;horizontal`: código EPSG del sistema horizontal.
   * `EPSG_CODE;horizontal;vertical`: código EPSG del sistema horizontal y código EPSG del sistema vertical. Si el segundo código corresponde a un sistema vertical de EPSG, el modelo usa el sistema compuesto por los dos y Digi3D.AI no pregunta por el sistema vertical.

   Digi3D.AI usa el sistema horizontal con los ejes en el orden este, norte. Si el primer código ya corresponde a un sistema con componente vertical, Digi3D.AI lo usa tal cual y no lee el segundo código.
3. Si no hay `.prj` ni línea `EPSG_CODE`, o si el código horizontal no está en la base de datos de EPSG, el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal).

Si el código horizontal corresponde a un sistema sin componente vertical y falta el código vertical, o el código vertical no corresponde a un sistema vertical, aparece el cuadro [Sistema de referencia de coordenadas vertical desconocido](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-vertical). Digi3D.AI guarda la respuesta en un archivo `.prj` con el mismo nombre que el archivo de aerotriangulación, en su misma carpeta, y no modifica el archivo `.eo` o `.imu`. Como el `.prj` tiene prioridad sobre la línea `EPSG_CODE`, el cuadro no vuelve a aparecer para ese archivo. Si ya existe un `.prj`, Digi3D.AI no lo sustituye.

Digi3D.AI solo crea el `.prj` si la opción [Solicitar sistema vertical para sensores](../../../../cuadros-de-dialogo/configuracion/sistema-de-referencia-de-coordenadas/solicitar-sistema-vertical-para-sensores.md) está en **Sí**. Con la opción en **No**, el cuadro no aparece y el sistema vertical del modelo es desconocido.

## Mensajes de error

* «Error al abrir el archivo: *archivo*»: Digi3D.AI no puede abrir el archivo de aerotriangulación.
* «No se localizó la orientación de la imagen: *imagen* en el archivo: *archivo*»: ninguna línea del archivo corresponde a la imagen izquierda o a la imagen derecha del modelo.
