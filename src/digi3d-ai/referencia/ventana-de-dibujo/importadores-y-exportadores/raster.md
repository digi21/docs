# Imágenes ráster
<!-- id: raster -->

Importador de **Imágenes ráster**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md), con la extensión de la imagen.

Por ejemplo:

```
PARAMETROS_IMPORTACION=.tif <Comprimir> <NivelPiramidal>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Comprimir (1 = Sí; cualquier otro valor = No) | No |
| 2 | Nivel piramidal, como posición en la lista: 0 = 1, 1 = 2, 2 = 4 … 13 = 8192 | No |

## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** del cuadro de diálogo que importa imágenes. Este formato solo se puede importar. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Comprimir | Sí o No. Por defecto, Sí. | Con **Sí**, la imagen se carga en la tarjeta gráfica como textura comprimida. No se aplica a los formatos de imagen que se leen escalados según el zoom. |
| Nivel piramidal | 1, 2, 4, 8 … 8192. Por defecto, 1. | Nivel piramidal de la imagen que se carga. Si la imagen no tiene ese nivel, se carga el más cercano de los que tiene. |

Digi3D.AI guarda los valores de las propiedades en la configuración del usuario.

### Sistema de referencia de coordenadas

El sistema de referencia se lee de la georreferenciación de la imagen. Si la imagen no lo tiene, Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo** y crea un archivo `.prj` con el mismo nombre que la imagen con el sistema elegido.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | — |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | No |
| Se puede abrir una ventana de dibujo con este formato | Sí |
