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
| 1 | Título | Sí |
| 2 | Descripción | Sí |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Título | Texto. | Título del documento que se muestra en Google Earth. Se escribe al crear el archivo. |
| Descripción | Texto. | Descripción que aparece debajo del título en Google Earth. Se escribe al crear el archivo. |

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.kml` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
