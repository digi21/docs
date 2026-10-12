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
| 1 | Número de decimales con que se escribe el archivo | No |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de los cuadros de diálogo que importan o exportan archivos de este formato. Este formato no se puede abrir directamente en una ventana de dibujo, así que no aparecen en el cuadro de diálogo Nuevo proyecto. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Sistema de referencia de coordenadas | Sistema de referencia. El botón **...** abre el cuadro de diálogo de selección. Por defecto, **Desconocido**. | Sistema que se asigna al importar un archivo que no tiene archivo `.prj`. |
| Decimales | Número entero. Por defecto, 3. | Número de decimales de las coordenadas al exportar. |

### Sistema de referencia de coordenadas

El sistema de referencia se guarda en un archivo `.prj` con el mismo nombre que el archivo de dibujo. Si ese archivo existe, Digi3D.AI lo utiliza. Si no existe:

* Al importar, se usa la propiedad **Sistema de referencia de coordenadas**. Si vale **Desconocido** o es un sistema local, Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo**. El sistema no se escribe en ningún `.prj`.
* Al exportar, Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo** y crea el `.prj` con el sistema elegido.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.asc` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | No |
