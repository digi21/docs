# Lot Of Points Studio
<!-- id: lot-of-points-studio -->

<img src="../images/lot-of-points-studio-icono.png" alt="Icono de Lot Of Points Studio" width="128">

**Lot Of Points Studio** es un programa para Windows que prepara nubes de puntos para trabajar con
[Lot Of Points](../lot-of-points/README.md) y permite publicarlas en Azure. A partir de los archivos originales,
crea el nivel de detalle que utiliza el visor y recoge las imágenes esféricas asociadas a los escaneos.

Puedes empezar por [Procesar en local](procesar-en-local.md) si quieres preparar varios archivos antes de abrirlos
en el visor. Studio organiza el trabajo en una cola y guarda los resultados en la caché del equipo. Esta operación
no necesita configurar un contenedor de Azure.

Si vas a compartir las nubes, la página [Proyectos](proyectos-en-azure.md) permite agruparlas y publicarlas en un
contenedor de Azure. Studio prepara cada nube, sube sus datos e imágenes y actualiza el catálogo del proyecto. Una
vez publicado el proyecto, puedes [copiar su enlace](compartir-proyectos.md) para abrir las nubes del proyecto en Lot Of Points por *streaming*:
el visor solicita los datos a medida que los necesita, sin descargar antes todas las nubes.

La misma página permite consultar los proyectos publicados, sus [estadísticas e imágenes](estadisticas-e-imagenes.md).
Con un acceso de solo lectura puedes revisar el contenido de los proyectos publicados; con acceso de escritura puedes añadir nubes y eliminar
las que ya no necesites. Los [ajustes](ajustes.md) reúnen la ubicación de la caché y las direcciones de acceso al
contenedor.

## Acerca de

**Acerca de** muestra la versión del conjunto de datos EPSG (*European Petroleum Survey Group*),
su atribución, los enlaces a epsg.org y a sus términos de uso, y la renuncia de garantía.
El texto indica que la aplicación no cobra por los datos EPSG.
Los créditos incluyen crskit y SQLite.
