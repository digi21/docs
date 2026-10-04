# Archivos Digi
<!-- id: bin -->

Importador y exportador de **Archivos Digi**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.bin <Precision> <OrigenGlobal.x> <OrigenGlobal.y> <OrigenGlobal.z>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Precisión | Sí |
| 2 | Origen global X | Sí |
| 3 | Origen global Y | Sí |
| 4 | Origen global Z | Sí |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Decimales de precisión | Número entero. Por defecto, 2. | Número de decimales con que se guardan las coordenadas y la altura de los textos. El archivo almacena las coordenadas como enteros multiplicados por 10 elevado a este valor. |
| Origen global X, Y y Z | Números reales. Por defecto, 0. | Origen que se suma a cada coordenada al leer el archivo y se resta al escribirlo. |

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.bin`, `.bik` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
