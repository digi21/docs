# Summit
<!-- id: summit -->

La extensión **Summit** lee la calibración de las cámaras y las orientaciones exteriores de los archivos de proyecto `.smtxml` de Summit Evolution. También abre esos archivos en el panel [Proyecto fotogramétrico](../../../../paneles/proyecto-fotogrametrico.md).

## Archivo de aerotriangulación

En el campo **Archivo de aerotriangulación**, selecciona el tipo **Archivos de proyecto de Summit Evolution** (`*.smtxml`). La extensión solo lee archivos con extensión `.smtxml` de proyectos aéreos: el nodo `/SummitProject/ProjectType` debe valer `Aerial`. Si no, Digi3D.AI muestra el mensaje «El archivo .SMTXML indicado no es de tipo "Aerial"».

Digi3D.AI busca cada imagen del modelo en los nodos `/SummitProject/Images/ImageInfo` por el nombre del archivo de `ImageFile`, sin carpeta ni extensión y sin distinguir mayúsculas de minúsculas. Si no la encuentra, muestra el mensaje «No se ha localizado información para la foto: *imagen*».

Digi3D.AI no lee los archivos de cámara `.camera` de Summit Evolution: lee la cámara del archivo `.smtxml`.

La extensión no proporciona orientación absoluta.

## Orientaciones exteriores

Del nodo `ImageInfo` de cada imagen, Digi3D.AI lee:

* `Exterior/ProjectionCenter`: X, Y y Z del centro de proyección.
* `Exterior/Angles`: giros omega, phi y kappa. Digi3D.AI construye la matriz de rotación con el orden omega, phi, kappa.
* `Exterior/AngleUnits`: con `RADIANS`, los giros están en radianes; con cualquier otro valor, en grados sexagesimales.
* `Rotation`: giro de la imagen en grados (0, 90, 180 o 270). Digi3D.AI aplica este giro a la imagen al cargarla y lo tiene en cuenta al crear la cámara.

La altura media del terreno sale del atributo `AveZ` de `/SummitProject/ProjectZ`, o es 0 si el atributo no existe.

## Cámara

El archivo contiene la calibración de la cámara. Si el modelo no tiene archivo de cámara, Digi3D.AI la lee del archivo de aerotriangulación (consulta [Cámara](../README.md#cámara)):

1. `AssignedCamera` de la imagen indica la posición de la cámara en `/SummitProject/CameraList` (0 es la primera).
2. Digi3D.AI lee el texto de `/SummitProject/InternalCameras/IntCam` con el atributo `Key` igual al nombre de esa cámara. El texto contiene una clave por línea: `FOCAL_LENGTH:`, `PRINCIPAL_POINT:`, `FILM_WIDTH:`, `FILM_HEIGHT:`, `IS_DIGITAL:`, `CAM_DIGITAL_CAM_ROTATION:` y `CALIBRATION_TYPE:`.
3. Digi3D.AI calcula el tamaño del píxel con `FILM_WIDTH:`, `FILM_HEIGHT:` y el tamaño de la imagen de `Dimensions`.

Digi3D.AI solo admite cámaras digitales (`IS_DIGITAL:` distinto de 0) sin `CALIBRATION_TYPE:`. Con una cámara analógica o con un tipo de calibración de distorsiones (radial, tabla o fórmula de 7 parámetros), muestra un mensaje que empieza por «Aún no implementamos cámaras de Summit Evolution…».

## Sistema de referencia de coordenadas

La extensión lee el sistema del archivo `.prj` con el mismo nombre que el `.smtxml` (`proyecto.prj` para `proyecto.smtxml`). Si el `.prj` no existe, Digi3D.AI muestra el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal). La extensión no pregunta por el sistema vertical.

## Proyecto fotogramétrico

Al abrir el `.smtxml` en el panel [Proyecto fotogramétrico](../../../../paneles/proyecto-fotogrametrico.md), Digi3D.AI crea un modelo por cada nodo `/SummitProject/Models/ModelInfo`, con el nombre de `ModelName` y las imágenes de `ModelLeft` y `ModelRight`. Todos los modelos forman una sola pasada. Si el proyecto no es aéreo, el panel no lo abre.

## Mensajes de error

* «Error al cargar el archivo: *archivo* Línea: *n*, columna: *n*»: el XML no está bien formado.
* «No se ha podido crear la cámara porque no se ha localizado la variable *clave*»: falta `FOCAL_LENGTH:`, `PRINCIPAL_POINT:`, `IS_DIGITAL:`, `FILM_WIDTH:` o `FILM_HEIGHT:`.
* «El valor de la variable "CAM_DIGITAL_CAM_ROTATION" no pertenece al conjunto {0,1,2,3}»: el giro de la cámara no es válido.
* «El nodo *nodo* tiene *n* valores y se esperaban 3 en el archivo: *archivo*»: `Exterior/ProjectionCenter` o `Exterior/Angles` de una imagen tiene menos de tres valores.
* «Error desconocido al cargar el archivo: *archivo*»: error al leer el archivo, por ejemplo porque falta un nodo que Digi3D.AI necesita.
