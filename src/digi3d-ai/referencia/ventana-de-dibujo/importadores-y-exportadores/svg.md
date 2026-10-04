# Archivos Scalable Vector Graphics
<!-- id: svg -->

Importador y exportador de **Archivos Scalable Vector Graphics**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.svg <ancho>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Ancho de la imagen | Sí |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de los cuadros de diálogo que importan o exportan archivos de este formato. Este formato no se puede abrir directamente en una ventana de dibujo, así que no aparecen en el cuadro de diálogo Nuevo proyecto. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Ancho del dibujo | Número entero, en píxeles. Por defecto, 400. | Ancho de la imagen que se crea. El alto se calcula para conservar la proporción del dibujo. |

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.svg` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
