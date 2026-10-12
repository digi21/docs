# Archivos KML de Google Earth
<!-- id: kml -->

Importador y exportador de **Archivos KML de Google Earth**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.kml <Titulo> <Descripcion>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Título | No |
| 2 | Descripción | No |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Título | Texto. Por defecto, vacío. | Título del documento que se muestra en Google Earth. Se escribe al crear el archivo. |
| Descripción | Texto. Por defecto, vacío. | Descripción que aparece debajo del título en Google Earth. Se escribe al crear el archivo. |

Las propiedades aparecen tanto al crear el archivo como al abrir uno existente, pero solo se aplican al crearlo o al exportar a este formato: al abrir un archivo existente, el título y la descripción del archivo no cambian. Digi3D.AI guarda sus valores en la configuración del usuario.

### Sistema de referencia de coordenadas

Digi3D.AI no pide el sistema de referencia: los archivos de este formato están siempre en coordenadas geográficas WGS 84 con alturas sobre el geoide EGM96.

### Opciones de la configuración

El cuadro de diálogo Configuración tiene más opciones de este formato en [Importador/exportador de archivos de Google Earth](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-de-google-earth/README.md).

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.kml` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
