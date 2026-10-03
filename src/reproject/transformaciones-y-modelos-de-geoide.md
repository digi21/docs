# Transformaciones y modelos de geoide

## Elegir la transformación

Entre dos sistemas de coordenadas, el catálogo EPSG puede ofrecer varias transformaciones. Por ejemplo, de WGS 84 a altitudes EGM2008 hay varias transformaciones, una por cada resolución de la malla del geoide.

Cuando hay varias, el programa muestra el cuadro **Seleccionar transformación** al seleccionar el sistema de origen o el de destino. El cuadro lista las transformaciones de mayor a menor precisión. Las transformaciones de precisión desconocida aparecen al final. La primera de la lista está seleccionada.

Cada transformación muestra:

* El nombre.
* La precisión en metros (o «desconocida»), el código EPSG y el código del método.
* La zona de uso.
* El archivo de malla que necesita, si lo necesita.
* Un enlace para descargar ese archivo, cuando el programa no puede descargarlo por sí mismo.
* El ámbito y las notas del catálogo EPSG.

Pulsa **Seleccionar** o haz doble clic sobre una transformación. Si pulsas **Cancelar**, no se crea ninguna transformación y la columna de resultado queda vacía.

El programa recuerda la transformación elegida para ese par de sistemas, también al cerrar y volver a abrir el programa. Al cambiar el sistema de origen o el de destino, el programa olvida la elección y vuelve a preguntar.

Al iniciar el programa sin una transformación recordada, el programa usa la más precisa sin mostrar el cuadro.

## Modelos de geoide

Algunas transformaciones, por ejemplo las que pasan a altitudes sobre un geoide, necesitan un archivo de malla (modelo de geoide). El paquete del programa no incluye estos archivos.

Cuando una transformación necesita un archivo que no está en el directorio de modelos de geoide:

* Si el programa conoce una dirección de descarga directa del archivo, muestra el cuadro **Descargar modelo de geoide** con el nombre y el tamaño del archivo. Pulsa **Descargar** para descargarlo al directorio de modelos de geoide. Una barra muestra el progreso. La descarga no se puede cancelar una vez iniciada. Al terminar, el programa crea la transformación.
* Si el programa solo conoce la página web del organismo que publica el archivo, muestra el cuadro **Modelo de geoide necesario**, con el nombre del archivo y el directorio donde hay que copiarlo. El botón **Abrir página de descarga** abre esa página en el navegador y el botón **Abrir carpeta** abre el directorio de modelos de geoide. Descarga el archivo, cópialo en el directorio y vuelve a seleccionar el sistema.
* Si el programa no conoce ningún origen para el archivo, muestra el error en la banda de error de la ventana principal.

El programa obtiene la lista de orígenes de modelos de geoide al iniciarse, de un archivo público del repositorio de CrsKit. Si no hay conexión, usa la última copia descargada o la lista que incluye el programa. Esa lista incluye el geoide global EGM2008 (NGA) y el geoide español EGM08-REDNAP (IGN).

## Directorio de modelos de geoide

El enlace **Configuración** de la barra de estado abre el cuadro **Configuración**:

* **Directorio de modelos de geoide (grids)**: carpeta donde el programa busca los archivos de modelo de geoide y donde guarda los que descarga. Por defecto es la carpeta `Reproject\Grids` dentro de los datos locales del usuario.
* **Examinar…**: selecciona otra carpeta.
* **Abrir carpeta en el explorador**: abre la carpeta en el Explorador de archivos. Si la carpeta no existe, el programa la crea.

Pulsa **Guardar** para guardar el cambio. El nuevo directorio se aplica al reiniciar el programa.
