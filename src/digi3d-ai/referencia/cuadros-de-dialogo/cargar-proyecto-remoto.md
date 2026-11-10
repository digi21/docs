# Cargar un proyecto desde una URL
<!-- id: cargar-proyecto-remoto -->

Este cuadro de diálogo carga en el panel [Proyecto fotogramétrico](../paneles/proyecto-fotogrametrico.md) un proyecto fotogramétrico publicado en una URL (dirección de un recurso en la red). También cambia la autorización de un proyecto remoto que ya está cargado.

El proyecto puede estar publicado en Azure Blob Storage o en cualquier servidor HTTP o HTTPS que atienda peticiones de un rango de bytes (cabecera `Range`). Consulta [Publicar un proyecto fotogramétrico en Azure Blob Storage y cargarlo desde una URL](../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md) para saber qué archivos subir al servidor y cómo generar la autorización.

## Abrir el cuadro de diálogo

El cuadro de diálogo se abre de tres formas:

* Pulsa la flecha del botón dividido **Cargar** del panel [Proyecto fotogramétrico](../paneles/proyecto-fotogrametrico.md) y selecciona **Cargar proyecto desde una URL...**. El cuadro de diálogo se abre con los campos vacíos. La orden está deshabilitada si ningún sensor instalado puede cargar proyectos desde una URL, y requiere el módulo de fotogrametría en la licencia al ejecutarla.
* Pulsa la flecha del botón **Cargar** y selecciona **Renovar la autorización (SAS)...**. El cuadro de diálogo se abre en el [modo de renovación](#modo-de-renovación-de-la-autorización). La orden solo está habilitada con un proyecto remoto cargado.
* Carga una URL sin consulta de autorización y sin credencial guardada con la línea de comandos (subcomando `proyecto`) o abriendo un archivo de dibujo que tiene asociado un proyecto remoto. Digi3D.AI abre el cuadro de diálogo con esa URL en el campo **URL del proyecto**. La función Python [open_project](../../programacion/python/referencia/digi3d/functions.md#open_project) no abre este cuadro de diálogo.

## Campos

* **URL del proyecto, con su firma de acceso compartido (SAS)**: la URL del archivo de proyecto, seguida de la consulta de autorización si el servidor la requiere. En Azure Blob Storage, la firma de acceso compartido (*shared access signature*, SAS) es la parte de la URL que empieza por `?` y autoriza el acceso al contenedor sin usar la clave de la cuenta. Digi3D.AI elimina los espacios en blanco del principio y del final del texto. La URL debe cumplir estas condiciones:
  * Empieza por `http://` o por `https://`.
  * El último segmento de su ruta, sin la consulta, tiene la extensión `.d3dprj` (proyecto de Digi3D.AI), `.prj` (proyecto de Inpho), `.smtxml` (proyecto de Summit) o `.xml` (proyecto de PhotoScan o Metashape).
  * Su consulta no contiene `sr=b`. Ese parámetro limita la SAS a un único objeto (*blob*) de Azure Blob Storage, y un proyecto necesita acceder a varios archivos.

  Si el servidor no requiere autorización, escribe la URL sin consulta.
* **URL de las imágenes (vacía si las imágenes están en la carpeta del proyecto)**: la URL de la carpeta que contiene las imágenes, con su propia SAS si el servidor la requiere. Déjala vacía si las imágenes están publicadas en la carpeta del archivo de proyecto, o en carpetas situadas debajo de ella. Si no está vacía, empieza por `http://` o por `https://` y su consulta tampoco puede contener `sr=b`. Consulta [cómo se calcula la URL de cada imagen](../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md#cómo-se-calcula-la-url-de-cada-imagen).
* **Extensión de las imágenes publicadas**: desplegable que indica la extensión que tienen las imágenes en el servidor. Tiene dos elementos fijos:
  * **La indicada para las imágenes en el proyecto**: Digi3D.AI conserva la extensión de la ruta de cada imagen en el proyecto. Es el valor por defecto.
  * **.tif**: Digi3D.AI sustituye por `.tif` la extensión de la ruta de cada imagen, o la añade si la ruta no tiene extensión.

  Si la credencial guardada del proyecto usa otra extensión, el desplegable añade esa extensión como tercer elemento y la selecciona.
* **Carpeta local del proyecto**: campo de solo lectura que muestra la carpeta del equipo donde Digi3D.AI guarda la copia local del proyecto. Digi3D.AI actualiza el campo cada vez que cambia el texto de **URL del proyecto**, sin acceder a la red. El campo queda vacío si ese texto no es una URL. La carpeta tiene la forma `%LOCALAPPDATA%\Digi3D.NET\Proyectos remotos\<nombre del archivo de proyecto sin extensión>-<16 dígitos hexadecimales>`; los 16 dígitos dependen de la URL sin consulta.
* **Abrir**: abre la carpeta local en el Explorador de archivos. Está deshabilitado mientras el campo **Carpeta local del proyecto** está vacío. Si la carpeta no existe todavía, Digi3D.AI muestra el mensaje «La carpeta local aún no existe. Digi3D la crea al descargar el proyecto.»
* **Aceptar**: comprueba los campos y cierra el cuadro de diálogo si todas las validaciones se superan. Consulta las secciones [Validaciones](#validaciones) y [Qué ocurre al aceptar](#qué-ocurre-al-aceptar).
* **Cancelar**: cierra el cuadro de diálogo sin cargar ni guardar nada.

## Validaciones

Al pulsar **Aceptar**, Digi3D.AI comprueba los campos en este orden. En la primera comprobación que falla, muestra un mensaje de advertencia, deja abierto el cuadro de diálogo y coloca el cursor en **URL del proyecto**:

1. «La URL del proyecto debe empezar por http:// o https://.»
2. «El archivo del proyecto debe tener la extensión .d3dprj, .prj, .smtxml o .xml.»
3. «La URL de las imágenes debe empezar por http:// o https://.» Solo se comprueba si **URL de las imágenes** no está vacío.
4. «La firma de acceso compartido (SAS) contiene sr=b, que limita el acceso a un único objeto (blob) de Azure Blob Storage. Sustituye la consulta con sr=b de la URL del proyecto o de las imágenes por una SAS del contenedor o directorio que contiene el proyecto y las imágenes, con permiso de lectura (sp=r).»

## Qué ocurre al aceptar

Al pulsar **Aceptar** después de abrir el cuadro con **Cargar proyecto desde una URL...**, Digi3D.AI descarga o revalida el proyecto en la carpeta local, y lo carga en el panel [Proyecto fotogramétrico](../paneles/proyecto-fotogrametrico.md). Si Digi3D.AI no consigue cargar el proyecto, no cambia la credencial guardada.

Cuando Digi3D.AI consigue cargar el proyecto, guarda la credencial del proyecto en el registro del usuario de _Windows_ actual. Una credencial contiene las URL del proyecto y de las imágenes, ambas sin consulta, y la extensión de las imágenes publicadas, y la consulta de autorización de cada URL cifrada con DPAPI (la API de protección de datos de _Windows_) para ese usuario. La próxima vez que cargues el mismo proyecto sin escribir la consulta, Digi3D.AI usa la credencial guardada. Consulta [Autorización y credenciales guardadas](../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md#autorización-y-credenciales-guardadas).

## Modo de renovación de la autorización

Con **Renovar la autorización (SAS)...**, el título del cuadro de diálogo es «Renovar la autorización (SAS) del proyecto remoto». Los campos **URL del proyecto**, **URL de las imágenes** y **Extensión de las imágenes publicadas** muestran los valores de la credencial guardada, sin las consultas de autorización. Escribe la URL con la consulta nueva y, si las imágenes tienen su propia consulta, también la URL de las imágenes con su consulta nueva.

Además de las [validaciones](#validaciones), este modo comprueba que **URL del proyecto**, sin consulta, identifica el proyecto cargado en el panel. Si no lo identifica, Digi3D.AI muestra el mensaje «La URL no pertenece al proyecto cargado *URL*. Para cargar otro proyecto, usa «Cargar proyecto desde una URL...».» y deja abierto el cuadro de diálogo.

Al pulsar **Aceptar** en este modo, Digi3D.AI no descarga ningún archivo ni modifica la copia local. Realiza estas operaciones:

* Guarda la credencial con las consultas nuevas.
* Usa las consultas nuevas en las peticiones siguientes a los contenedores o servidores del proyecto y de las imágenes.
* Invalida los resultados de las comprobaciones de existencia de archivos hechas con la autorización anterior.
* Permite que Digi3D.AI vuelva a mostrar el cuadro de advertencia «Proyecto remoto: autorización rechazada» de ese contenedor.
* Muestra el mensaje «Se ha renovado la autorización (SAS) del proyecto *URL*.»

<details>
<summary>Dónde se almacena</summary>

Digi3D.AI guarda una credencial por proyecto en una subclave del registro de _Windows_ del usuario actual. Los valores de la subclave no están en el archivo Digi3DNET.db.

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration\ProyectosRemotos\<hash>` |
| :--- | :--- |
| Nombre de la subclave `<hash>` | Los 16 dígitos hexadecimales (FNV-1a de 64 bits) de la URL del proyecto sin consulta. |
| `UrlProyecto`, `UrlImagenes`, `ExtensionImagenes` | Cadenas sin consulta de autorización. |
| `ConsultaProyectoCifrada`, `ConsultaImagenesCifrada` | Consulta de autorización cifrada con DPAPI para el usuario de _Windows_ actual, en base64. |

</details>
