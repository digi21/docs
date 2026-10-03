# Instalación

Reproject se distribuye en la Microsoft Store: [Reproject en la Microsoft Store](https://apps.microsoft.com/detail/9PFMLFNXDQLN).

## Requisitos

* Windows 10, compilación 17763 (versión 1809) o posterior.
* Procesador de 64 bits (x64).

## Instalar el programa

1. Abre la página [Reproject en la Microsoft Store](https://apps.microsoft.com/detail/9PFMLFNXDQLN).
2. Pulsa **Obtener** (o **Instalar**). La Microsoft Store descarga e instala el programa.
3. Inicia Reproject desde el menú Inicio.

La Microsoft Store instala también las actualizaciones del programa.

El paquete incluye la base de datos EPSG. No hace falta instalar nada más para transformar coordenadas. Algunas transformaciones necesitan un modelo de geoide que no se incluye en el paquete: el programa lo descarga cuando hace falta. Consulta [Transformaciones y modelos de geoide](/reproject/transformaciones-y-modelos-de-geoide.md).

## Datos que guarda el programa

Reproject guarda sus datos en la carpeta de datos locales del usuario, en el propio equipo:

* Los últimos sistemas de origen y destino, la lista de sistemas recientes y la transformación elegida.
* Los sistemas guardados con el botón **Memorizar** (favoritos).
* Los modelos de geoide descargados. El cuadro **Configuración** muestra su carpeta y permite abrirla en el Explorador de archivos.

## Conexiones a Internet

Reproject se conecta a Internet solo en estos casos:

* Al iniciarse, descarga una lista pública de orígenes de modelos de geoide alojada en GitHub. El programa guarda una copia local y funciona sin conexión con esa copia.
* Cuando el usuario acepta descargar un modelo de geoide.

El programa no recoge ni envía datos personales. La política de privacidad está en el repositorio: [privacy-policy.html](https://github.com/digi21/reproject/blob/main/docs/privacy-policy.html).
