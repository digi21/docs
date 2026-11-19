# Mis archivos
<!-- id: topcal21-web-mis-archivos -->

«Mis archivos» muestra el contenido del espacio de archivos del usuario y permite subir, descargar y borrar archivos y crear carpetas. Se abre con la opción **Mis archivos** del menú de la cuenta, que está en la esquina superior derecha del espacio de trabajo.

Los instrumentos, los sistemas de referencia y las preferencias no se gestionan en «Mis archivos»: la web guarda esos archivos en la carpeta de configuración `.topcal21`, que «Mis archivos» no muestra, y se editan desde el [espacio de trabajo](preferencias-instrumentos-y-sistemas-de-referencia.md).

## Organizar los archivos

La web recomienda crear una carpeta por proyecto y subir a ella los archivos de Topcal21 (`.prt`, `.pts`, `.obs` y `.crq`) y los archivos de campo que se quieran importar.

La lista muestra primero las carpetas y después los archivos, cada grupo ordenado por nombre. Cada archivo tiene las columnas **Nombre**, **Tamaño** y **Modificado (UTC)**. La ruta de la carpeta actual aparece sobre la lista; cada nivel de la ruta es un enlace que abre esa carpeta. La web muestra hasta 500 elementos por página y ofrece los botones **Página anterior** y **Página siguiente** cuando la carpeta tiene más elementos.

## Subir archivos

La web permite subir archivos desde el navegador de tres formas:

* Pulsa **Subir archivos** y elige uno o varios archivos.
* Pulsa **Subir una carpeta** y elige una carpeta del ordenador. La web sube la carpeta con sus subcarpetas.
* Arrastra archivos o carpetas a la zona «Arrastra aquí archivos o carpetas para subirlos a la carpeta actual.».

Los archivos se suben a la carpeta que está abierta en la lista. Un archivo subido con el nombre de otro archivo de la misma carpeta sustituye al archivo anterior. Un panel bajo la zona de arrastre muestra el progreso de la subida.

La web no admite la subida con AzCopy.

## Crear carpetas

Escribe el nombre en el campo **Nombre de la carpeta nueva** y pulsa **Crear carpeta**. La carpeta se crea dentro de la carpeta abierta.

## Abrir, descargar y borrar

Cada archivo tiene estos botones a la derecha de la fila:

* **Abrir en Topcal21**, solo en los archivos `.prt`, `.pts` y `.obs`: abre el archivo en el [espacio de trabajo](espacio-de-trabajo.md).
* **Descargar**: descarga el archivo al ordenador.
* **Eliminar**: pide confirmación y borra el archivo. Esta operación no se puede deshacer.

El botón **Eliminar** de una carpeta muestra el número de archivos y el tamaño que contiene, pide confirmación y borra la carpeta con todo su contenido. Esta operación no se puede deshacer.

## Límites de tamaño

| Límite | Valor |
|---|---|
| Tamaño máximo de cada archivo | 20 MiB (20.971.520 bytes) |
| Espacio máximo de cada cuenta | 200 MiB (209.715.200 bytes) |

Sobre la lista, la web muestra «Espacio usado: X de Y.» y una barra de progreso. La barra pasa a color amarillo cuando el espacio usado alcanza el 75 % del espacio máximo y a color rojo cuando alcanza el 90 %. Antes de recibir el contenido de un archivo, la web comprueba los dos límites; si la subida supera alguno, la web la rechaza y muestra el motivo. La barra de estado del espacio de trabajo muestra el mismo recuento de espacio usado y espacio máximo.

El espacio de archivos es un contenedor privado de Azure Blob Storage que solo la cuenta del usuario puede ver y modificar. Con la cuenta suspendida, el usuario puede ver y descargar los archivos, pero no puede subirlos, crear carpetas ni borrar.
