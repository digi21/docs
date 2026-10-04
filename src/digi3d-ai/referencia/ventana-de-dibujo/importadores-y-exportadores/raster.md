# Imágenes ráster
<!-- id: raster -->

Importador de **Imágenes ráster**.

## Parámetros

Esta extensión no recibe parámetros por la línea de comandos.

## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** del cuadro de diálogo que importa imágenes. Este formato solo se puede importar. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Comprimir | Sí o No. Por defecto, Sí. | Digi3D.AI guarda este valor, pero la versión actual no lo aplica. |
| Nivel piramidal | 1, 2, 4, 8 … 8192. Por defecto, 1. | Nivel piramidal de la imagen que se carga. Si la imagen no tiene ese nivel, se carga el más cercano de los que tiene. |

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | — |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | No |
| Se puede abrir una ventana de dibujo con este formato | Sí |
