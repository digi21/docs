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

### Textos orientados

Un texto orientado es un texto que no está en el plano XY. Además del giro alrededor del eje Z, un texto orientado tiene una orientación: un cuaternión unitario (w, x, y, z) que gira el texto en su sistema local (eje X en la línea base, eje Y hacia la parte superior de los caracteres y eje Z hacia el lector) antes de aplicar el giro. La variable [TEXTO\_ORIENTADO\_CON\_CAMARA](../variables/t/texto-orientado-con-camara.md) describe las órdenes que crean textos orientados.

Cada texto ocupa un registro de entidad del archivo. Un texto del plano XY se guarda en un registro de tipo `Digi21.DigiNG.Text`. Un texto orientado se guarda en un registro de tipo `Digi21.DigiNG.Text2`, que contiene los campos de `Digi21.DigiNG.Text` seguidos de la orientación:

| Campo | Tipo | Registro |
| :--- | :--- | :--- |
| Punto de inserción (x, y, z) | Tres números de doble precisión | `Text` y `Text2` |
| Giro, en centésimas de grado sexagesimal | Número de doble precisión | `Text` y `Text2` |
| Altura | Número de doble precisión | `Text` y `Text2` |
| Justificación | Entero de 16 bits sin signo | `Text` y `Text2` |
| Número de caracteres | Entero de 32 bits | `Text` y `Text2` |
| Caracteres del texto | UTF-16, sin carácter nulo al final | `Text` y `Text2` |
| Orientación (w, x, y, z) | Cuatro números de doble precisión | Solo `Text2` |

Un giro con un número entero de centésimas se escribe como ese número entero, sin error de redondeo. La versión del archivo es la 5 tanto si el archivo contiene registros `Text2` como si no. Si el archivo termina antes de la orientación de un registro `Text2`, Digi3D.AI informa del error «El archivo está corrupto: no se pudo leer la orientación de un texto».

Una versión de Digi3D que no reconoce el registro `Digi21.DigiNG.Text2` se comporta así:

- Omite cada texto orientado con el error «Localizada una entidad de un tipo desconocido», carga el resto de entidades y, al terminar la carga, muestra el cuadro de diálogo con los errores.
- Si el texto orientado forma parte de un elemento complejo o de un elemento complejo puntual, no carga el complejo ni las entidades del complejo anteriores al texto, y carga como entidades independientes las entidades del complejo posteriores al texto.
- Al comprimir el archivo con la orden [COMPRIMIR](../ordenes/c/comprimir.md), escribe en el archivo solo las entidades que ha cargado: los textos orientados y las demás entidades que no ha cargado desaparecen del archivo.

MDTopX omite los textos orientados sin mostrar ningún aviso.

### Opciones de la configuración

El cuadro de diálogo Configuración tiene más opciones de este formato en [Importador/exportador de archivos binarios de doble precisión](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-binarios-de-doble-precision/README.md).

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.bind` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | Sí |
