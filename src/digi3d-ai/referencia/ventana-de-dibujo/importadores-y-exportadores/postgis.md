# Archivos de conexión con PostGIS
<!-- id: postgis -->

Importador y exportador de **Archivos de conexión con PostGIS**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.pg <Servidor> <Puerto> <Usuario> <Contraseña> <BaseDeDatos>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Servidor | No |
| 2 | Puerto | No |
| 3 | Usuario | No |
| 4 | Contraseña | No |
| 5 | Base de datos | No |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Se guardan en el propio archivo `.pg`, que contiene la conexión: si el archivo ya existe, sus valores iniciales salen de él; si no, de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Servidor | Texto. Por defecto, `localhost`. | Nombre o dirección del servidor de bases de datos. |
| Puerto | Número entero. Por defecto, 5432. | Puerto de conexión al servidor. |
| Usuario | Texto. | Usuario con el que se conecta al servidor. |
| Contraseña | Texto oculto. | Contraseña del usuario. Se guarda sin cifrar en el archivo `.pg` y en la configuración del usuario. |
| Base de datos | Texto. | Base de datos del servidor a la que se conecta. |
| Leer únicamente las geometrías que tengan los siguientes valores | Tabla de pares campo y valor. El botón **...** abre el cuadro de diálogo [Sustituidores](../../cuadros-de-dialogo/sustituidores.md) para editarla. | Solo se leen las geometrías cuyos campos tienen esos valores. Al guardar entidades, esos campos toman el valor indicado. |

Las propiedades aparecen tanto al crear el archivo `.pg` como al abrir uno existente.

### Al abrir el archivo

Si está activada la opción [Preguntar por capas a cargar](../../cuadros-de-dialogo/configuracion/conector-con-postgis/preguntar-por-capas-a-cargar.md) del cuadro de diálogo Configuración (activada por defecto), Digi3D.AI muestra el cuadro de diálogo [Selección de tablas](../../cuadros-de-dialogo/seleccion-de-tablas.md) con las tablas con geometrías de la base de datos, agrupadas por esquema. Si se cancela, no se carga ninguna tabla. Si la opción está desactivada, se cargan todas las tablas con geometrías.

### Sistema de referencia de coordenadas

El sistema de referencia es el del código EPSG de la primera tabla que se carga. Digi3D.AI no lo pide.

### Opciones de la configuración

El cuadro de diálogo Configuración tiene más opciones de este formato en [Conector con PostGis](../../cuadros-de-dialogo/configuracion/conector-con-postgis/README.md).

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.pg` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
