# ACOPLAR
<!-- id: acoplar -->

Genera un archivo TIFF con las entidades de los archivos de dibujo visibles que caen dentro de una línea de límite rectangular, dibujadas con su simbología.

## Parámetros

No admite parámetros.

## Observaciones

La orden solicita que selecciones la línea de límite. La línea tiene que ser un rectángulo de al menos 4 vértices: el ancho de la imagen es la longitud del lado entre los vértices 1 y 2, y el alto es la longitud del lado entre los vértices 2 y 3. El rectángulo puede estar girado; la imagen sigue la orientación del lado entre los vértices 1 y 2. Si la entidad seleccionada no es una línea o tiene menos de 4 vértices, la orden no hace nada.

A continuación, la orden muestra un cuadro de diálogo con estas opciones:

* **Archivo a crear**: ruta del archivo TIFF que se va a generar.
* **Tamaño de píxel**: en unidades del sistema de referencia de coordenadas. El botón **Calcular** obtiene el tamaño de píxel a partir del ancho en píxeles que quieres que tenga la imagen.
* **Incluir la línea de límite en la imagen**: si no está marcada, la orden oculta la línea de límite mientras genera la imagen.

El archivo generado es un TIFF RGB con canal alfa, de 8 bits por canal, sin compresión y organizado en mosaicos de 256 × 256 píxeles. La orden no escribe la georreferenciación en el archivo ni dibuja las imágenes ráster cargadas. Si no se puede crear el archivo, la orden muestra un mensaje de error y termina.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CAPTURA\_VENTANA\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/captura-ventana-dibujo.md) |
| Nombre interno | {268A27C0-D187-4244-AE47-3DB2A0319D27} |

