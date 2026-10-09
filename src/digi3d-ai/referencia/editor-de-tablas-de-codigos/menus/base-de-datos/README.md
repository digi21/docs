# Base de datos
<!-- id: menu-base-de-datos-editor-tablas -->

Las opciones de este menú actúan sobre las tablas de la pestaña [Base de datos](../../pestanas/base-de-datos/README.md) y sobre la propiedad **Tabla** de los códigos.

## Tablas

| Opción | Acción |
| :--- | :--- |
| **Crear tablas automáticamente basándose en el código y asignar las tablas en los códigos** | Crea una tabla para cada código sin tabla y la asigna al código. |
| **Importar esquema de una base de datos en formato Geographics...** | Abre el cuadro [Cadena de conexión](cadena-de-conexion.md) y sustituye todas las tablas de la tabla de códigos por las de esa base de datos. |
| **Importar esquema de una base de datos en formato CATDBS...** | Igual que la anterior, para bases de datos en formato CATDBS. |
| **Importar esquema de directorio con shapefiles...** | Crea una tabla por cada shapefile de una carpeta. |
| **Importar esquema de archivo de catálogo de características MGCP...** | Crea las tablas de un catálogo de características MGCP. |
| **Importar esquema de archivo de definición de espacio de trabajo de ArcGIS...** | Crea las tablas de un archivo XML de espacio de trabajo de ArcGIS. Después de elegir los archivos pide la versión del esquema en el cuadro [Versión de ArcGIS](../version-de-arcgis.md). |

## Campos

| Opción | Acción |
| :--- | :--- |
| **Asignar un valor por defecto a todos los campos con un determinado nombre...** | Abre el cuadro [Añadir valor por defecto a todos los campos con un determinado nombre](asignar-valor-defecto-campos.md). |
| **Añadir un campo a todas las tablas...** | Abre el cuadro [Añadir campo a tablas](anadir-campo-a-tablas.md). |
| **Hacer que un determinado campo sea "No comparable" en todas las tablas en las que aparece...** | Abre el cuadro [Hacer un campo no comparable](campo-no-comparable.md). |

## Códigos

| Opción | Acción |
| :--- | :--- |
| **Localizar todos los códigos que enlazan con una determinada tabla...** | Abre el cuadro [Localizar códigos que enlazan con tabla](localizar-codigos-enlazan-tabla.md). |
| **Añadir automáticamente una condición a las tablas de cada código del tipo [campo]=[nombre del código]** | Abre el cuadro [Introduce el nombre del campo](condicion-campo-igual-codigo.md). |

## Exportar

| Opción | Acción |
| :--- | :--- |
| **Exportar a guion SQL...** | Escribe un guion SQL que crea las tablas. |
| **Crear tablas en una base de datos vacía Access...** | Crea las tablas en una base de datos de Access vacía. |

Antes de las opciones de **Campos**, el editor aplica los cambios pendientes de la tabla seleccionada en la pestaña **Base de datos**.
