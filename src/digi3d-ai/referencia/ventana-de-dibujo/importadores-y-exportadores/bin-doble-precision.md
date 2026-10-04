# Archivos Digi de doble precisión
<!-- id: bin-doble-precision -->

Importador y exportador de **Archivos Digi de doble precisión**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.bind <NombreGestorModeloDatosBaseDatos> <ConexionBBDD>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Gestor del modelo de datos de base de datos | Sí |
| 2 | Cadena de conexión a la base de datos | Sí |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Modelo de datos | **Sin conexión con base de datos** o uno de los gestores de modelo de datos instalados. | Gestor que guarda en una base de datos los atributos de las entidades del archivo. Con **Sin conexión con base de datos**, el archivo no se conecta a ninguna. |
| Cadena de conexión | Texto. El botón **...** abre el asistente de conexión de _Windows_. | Conexión con la base de datos. Puede contener el nombre del archivo de dibujo, que Digi3D.AI sustituye al conectar. Solo se usa si hay un modelo de datos seleccionado. |
| Conectar en modo solo lectura | Sí o No. Por defecto, No. | Digi3D.AI guarda este valor, pero la versión actual no lo aplica. |
| Omitir carga de archivos de referencia | Sí o No. Por defecto, No. | Con **Sí**, no se cargan los archivos de referencia asociados al archivo. |

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.bind` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
