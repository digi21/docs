# Archivos Well Known Text
<!-- id: wkt -->

Importador y exportador de **Archivos Well Known Text**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.wkt <Ancho>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Ancho de la imagen | Sí |

El formato acepta este parámetro, pero no lo usa.

## Parámetros del motor de importación/exportación

Este formato no añade propiedades a la categoría **Motor de importación/exportación** de los cuadros de diálogo: la categoría aparece vacía al crear o abrir un archivo.

### Sistema de referencia de coordenadas

El formato no guarda el sistema de referencia. Cuando lo necesita, Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo**, y el sistema elegido no se guarda.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.wkt` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
