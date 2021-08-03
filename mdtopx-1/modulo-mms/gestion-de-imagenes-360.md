# Gestión de imágenes 360

[Módulo MMS](./)

Para utilizar las [imágenes panorámicas ](archivos-de-imagen-360-mms.md)se precisa la orientación externa de éstas. Esta orientación externa se compone de una posición georreferenciada XYZ y tres ángulos. Estos ángulos suelen ser las rotaciones alrededor de los tres ejes del sistema de coordenadas del vehículo, es decir, alabeo, cabecera y acimut. Toda esta formación se suele proporcionar en un único archivo, generado después de ajustar la trayectoria del vehículo.

Hay que tener en cuenta que se tiene una imagen cada poco espacio, por ejemplo, cada 10 m. Por tanto, se tienen casi 100 imágenes por cada kilómetro de registro. Al ser tantas imágenes, la georreferenciación no suele realizarse manualmente, una a una. Para esta operación se deberían cargar todas las imágenes en un proyecto y asignarles la georreferenciación leyendo el archivo con dichos valores.

Para cargar la orientación de las imágenes, primeramente, se crea un proyecto para añadir las imágenes. Inicialmente, es mejor tener un proyecto para las imágenes y otro para los archivos LiDAR. Para agregar las imágenes, se pueden seleccionar desde un Explorador de archivos y soltar la selección sobre la [ventana del Proyecto](../introduccion/paneles-de-la-aplicacion/panel-proyecto.md). También se puede utilizar el botón “+” que aparece en la barra de herramientas de la ventana Proyecto.

Como inicialmente no tendrán orientación externa generada, se generarán los límites rectangulares unos encima de otros, en coordenadas relativas, considerando que cada píxel tiene un tamaño de 1.

Para cargar las orientaciones desde archivo, hay que utilizar la herramienta [Editar](../herramientas-para-imagenes/editar-orientacion-de-imagenes-desde-archivo.md), del grupo [Orientación](../fichas-de-herramientas/ficha-de-herramientas-imagen/orientacion.md), en la barra de herramientas [Imagen](../fichas-de-herramientas/ficha-de-herramientas-imagen/).

Como las imágenes son panorámicas, se elegir la tercera opción donde se podría indicar un fichero opcional con ciertas características de la cámara. En este archivo se podrá indicar el rango horizontal o vertical de la imagen panorámica, ya que ciertos sistemas no graban toda la esfera 360.

A continuación, habrá que indicar el archivo donde se encuentran las orientaciones externas de las imágenes. Además, se deberá indicar qué formato tiene.

Si la lectura se realiza con éxito, se actualizarán los límites de las imágenes y se podrá ver la disposición de éstas en el proyecto. Además, se generará un archivo adicional por cada imagen con el mismo nombre y extensión ORI. En él, se almacenará la orientación externa.

