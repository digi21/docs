# Preferencias, instrumentos y sistemas de referencia
<!-- id: topcal21-web-preferencias -->

Las preferencias, los instrumentos topográficos, los sistemas de referencia y la librería de códigos de cada usuario se guardan en la carpeta `.topcal21` del espacio de archivos. «Mis archivos» no muestra esa carpeta y rechaza las operaciones sobre ella. Las preferencias, los instrumentos topográficos y los sistemas de referencia se editan con los cuadros del espacio de trabajo descritos en esta página. Cuando la web crea el espacio de archivos de un usuario, copia en esa carpeta una lista inicial de instrumentos y de sistemas de referencia y una librería de códigos.

| Dato | Archivo de la carpeta `.topcal21` | Cuadro |
|---|---|---|
| Preferencias | `Preferencias.json` | Editar › Preferencias... |
| Instrumentos topográficos | `Instrumentos.dat` | Editar › Instrumentos topográficos... (botón **Instrum**) |
| Sistemas de referencia | `Sistema de Referencia.dat` | Editar › Sistemas de referencia... (botón **SistRef**) |
| Librería de códigos | `Libreria de Codigos.ini` | Todavía no se edita en la web |

## Preferencias

**Editar › Preferencias...** abre el cuadro «Preferencias», que funciona como el cuadro de [Topcal21 para Windows](../menus-de-la-aplicacion/menu-editar.md) con estas opciones:

* **Directorio por defecto de datos**: carpeta de «Mis archivos» que el cuadro «Proyecto nuevo» propone como ubicación. El valor inicial es la raíz de «Mis archivos». El botón de la carpeta abre el selector de carpetas.
* **Cargar automáticamente el último proyecto**: con la casilla marcada, el espacio de trabajo abre el proyecto más reciente cuando accedes a `https://topcal21.ai` con la sesión iniciada sin elegir un archivo de **Proyectos recientes**. La casilla está marcada por defecto.
* **Mostrar registros borrados**: la casilla aparece marcada y deshabilitada porque la web siempre muestra los registros borrados.
* **Permitir visuales duplicadas**: permite añadir visuales con la misma estación y el mismo visado.
* **Configurar HTML...**: abre el cuadro «Configurar archivos de salida HTML» con el color de fondo, la fuente y la casilla **Negrita** de los listados en HTML (lenguaje de marcado de hipertexto). El nombre de la fuente admite letras, dígitos, espacios, puntos, guiones y guiones bajos, hasta 64 caracteres.
* **Programas visores...**: botón deshabilitado, porque la web muestra los listados en el navegador.
* **Datos mostrados de los puntos** y **Datos mostrados de las visuales**: columnas visibles de cada [rejilla](rejillas-de-puntos-y-de-visuales.md). Por defecto, todas las columnas están visibles.
* **Número de decimales de los datos por defecto**, para datos angulares (4 por defecto) y datos lineales (3 por defecto). El número de decimales angulares y el número de decimales lineales deben ser enteros de 0 a 10, ambos extremos incluidos. Los proyectos nuevos y los archivos abiertos fuera de un proyecto usan estos valores; un proyecto usa los decimales de su cuadro «Propiedades de proyecto».

**Aceptar** guarda `Preferencias.json`. Si otro proceso modificó el archivo desde que se abrió el cuadro, la web lo indica y no guarda. Si `Preferencias.json` no se puede leer, el cuadro no guarda y muestra un mensaje de error. Si no se puede leer al guardar los datos de un asistente, la web muestra un mensaje con el botón **Restablecer las preferencias**, que tras una confirmación sustituye el archivo por los valores por defecto y borra los últimos datos guardados de los asistentes. Con la cuenta suspendida, el cuadro no permite guardar. **Salir** cierra el cuadro sin guardar. El botón **Ayuda** del cuadro está deshabilitado.

La web no usa llave de protección: el cuadro no tiene las opciones de búsqueda de la llave.

## Instrumentos topográficos

El cuadro «Instrumentos topográficos» lista los instrumentos de `Instrumentos.dat` y muestra las características del instrumento elegido: apreciación, aumentos y sensibilidad del nivel tubular del teodolito, y precisión del distanciómetro. Los botones **Editar...**, **Nuevo...**, **Duplicar...** y **Eliminar...** funcionan como en [Topcal21 para Windows](../otros-comandos/instrumentos-topograficos/README.md). Un doble clic en un instrumento lo edita.

## Sistemas de referencia

El cuadro «Sistemas de referencia» lista los sistemas de `Sistema de Referencia.dat` y muestra las características de la proyección del sistema elegido. Los botones **Editar...**, **Nuevo...**, **Duplicar...** y **Eliminar...** funcionan como en [Topcal21 para Windows](../otros-comandos/sistemas-de-referencia/README.md).

## Guardar, importar y descargar

En los dos cuadros, los cambios solo se guardan al pulsar **Aceptar**; **Salir** descarta los cambios. **Aceptar** escribe el archivo `.dat`. Si otro proceso modificó el archivo desde que se abrió el cuadro, la web muestra un mensaje y no escribe.

* **Importar del escritorio…** carga un archivo `.dat` del ordenador del usuario, por ejemplo el `Instrumentos.dat` o el `Sistema de Referencia.dat` de Topcal21 para Windows.
* **Descargar** descarga el archivo `.dat` guardado, para usarlo en Topcal21 para Windows.
