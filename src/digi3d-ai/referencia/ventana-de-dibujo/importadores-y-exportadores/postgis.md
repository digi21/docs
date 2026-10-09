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
| 1 | Servidor | Sí |
| 2 | Puerto | Sí |
| 3 | Usuario | Sí |
| 4 | Contraseña | Sí |
| 5 | Base de datos | Sí |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de la pestaña [Archivo de dibujo](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto y de los cuadros de diálogo que abren, importan o exportan archivos de este formato. Se guardan en el propio archivo `.pg`, que contiene la conexión: si el archivo ya existe, sus valores iniciales salen de él; si no, de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Servidor | Texto. Por defecto, `localhost`. | Nombre o dirección del servidor de bases de datos. |
| Puerto | Número entero. Por defecto, 5432. | Puerto de conexión al servidor. |
| Usuario | Texto. | Usuario con el que se conecta al servidor. |
| Contraseña | Texto oculto. | Contraseña del usuario. Se guarda sin cifrar en el archivo `.pg`. |
| Base de datos | Texto. | Base de datos del servidor a la que se conecta. |
| Leer únicamente las geometrías que tengan los siguientes valores | Tabla de pares campo y valor. El botón **...** abre el cuadro de diálogo [Sustituidores](../../cuadros-de-dialogo/sustituidores.md) para editarla. | Solo se leen las geometrías cuyos campos tienen esos valores. Al guardar entidades, esos campos toman el valor indicado. |

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.pg` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
