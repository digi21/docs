# Archivos Digi
<!-- id: bin -->

Importador y exportador de **Archivos Digi**.

## Parámetros

Puedes pasar los siguientes parámetros al importador/exportador desde la línea de comandos con la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.bin <Precision> <OrigenGlobal.x> <OrigenGlobal.y> <OrigenGlobal.z>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Precisión | No |
| 2 | Origen global X | No |
| 3 | Origen global Y | No |
| 4 | Origen global Z | No |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Decimales de precisión | Número entero. Por defecto, 2. | Número de decimales con que se guardan las coordenadas y la altura de los textos. El archivo almacena las coordenadas como enteros multiplicados por 10 elevado a este valor. |
| Origen global X, Y y Z | Números reales. Por defecto, 0. | Origen que se suma a cada coordenada al leer el archivo y se resta al escribirlo. |

Las tres propiedades aparecen tanto al crear el archivo como al abrir uno existente. Digi3D.AI guarda sus valores en la configuración del usuario.

### Sistema de referencia de coordenadas

El sistema de referencia se guarda en un archivo `.prj` con el mismo nombre que el archivo de dibujo. Si ese archivo no existe (por ejemplo, al crear un archivo nuevo), Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo** y crea el `.prj` con el sistema elegido. Si el archivo se abre en solo lectura o se importa, no se crea el `.prj` y el sistema elegido solo se usa durante la sesión. Consulta [Ubicación del sistema de referencia de coordenadas](../../../sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/archivos-de-dibujo/ubicacion-src-archivos-dibujo.md).

### Opciones de la configuración

El cuadro de diálogo Configuración tiene más opciones de este formato en [Importador/exportador de archivos binarios de precisión simple](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-binarios-de-precision-simple/README.md).

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.bin`, `.bik` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
