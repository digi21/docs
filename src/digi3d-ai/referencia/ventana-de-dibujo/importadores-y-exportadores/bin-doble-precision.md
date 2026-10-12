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
| 1 | Gestor del modelo de datos de base de datos | No |
| 2 | Cadena de conexión a la base de datos | No |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Modelo de datos | **Sin conexión con base de datos** o uno de los gestores de modelo de datos instalados. | Gestor que guarda en una base de datos los atributos de las entidades del archivo. Con **Sin conexión con base de datos**, el archivo no se conecta a ninguna. |
| Cadena de conexión | Texto. El botón **...** abre el asistente de conexión de _Windows_. | Conexión con la base de datos. Puede contener el nombre del archivo de dibujo, que Digi3D.AI sustituye al conectar. Solo se usa si hay un modelo de datos seleccionado. |
| Conectar en modo solo lectura | Sí o No. Por defecto, No. | Con **Sí**, la conexión con la base de datos se abre en solo lectura y la lista de resultados de la carga muestra «La base de datos está conectada en modo solo lectura: no se crearán ni modificarán registros.». |
| Omitir carga de archivos de referencia | Sí o No. Por defecto, No. | Con **Sí**, no se cargan los archivos de referencia asociados al archivo. |

Las cuatro propiedades aparecen tanto al crear el archivo como al abrir uno existente. Digi3D.AI guarda sus valores en la configuración del usuario.

### Sistema de referencia de coordenadas

El sistema de referencia se guarda en el propio archivo. Al crear un archivo nuevo o al exportar a este formato, Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo**. Al abrir un archivo existente, el sistema se lee del archivo y no se pide. Consulta [Ubicación del sistema de referencia de coordenadas](../../../sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/archivos-de-dibujo/ubicacion-src-archivos-dibujo.md).

### Opciones de la configuración

El cuadro de diálogo Configuración tiene más opciones de este formato en [Importador/exportador de archivos binarios de doble precisión](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-binarios-de-doble-precision/README.md).

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.bind` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
