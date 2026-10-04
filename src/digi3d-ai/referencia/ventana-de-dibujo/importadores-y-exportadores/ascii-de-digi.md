# Archivos Ascii de Digi
<!-- id: ascii-de-digi -->

Importador y exportador de **Archivos Ascii de Digi**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.asc <numeroDecimales>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Número de decimales con que se escribe el archivo | Sí |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de los cuadros de diálogo que importan o exportan archivos de este formato. Este formato no se puede abrir directamente en una ventana de dibujo, así que no aparecen en el cuadro de diálogo Nuevo proyecto. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Sistema de referencia de coordenadas | Sistema de referencia. El botón **...** abre el cuadro de diálogo de selección. | Digi3D.AI guarda este valor, pero la versión actual no lo aplica: el sistema se toma del archivo `.prj` que acompaña al archivo o, si no existe, se pide. |
| Decimales | Número entero. Por defecto, 3. | Número de decimales de las coordenadas al exportar. |

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.asc` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | No |
