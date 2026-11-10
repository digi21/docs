# Publicar un proyecto fotogramétrico en Azure Blob Storage y cargarlo desde una URL
<!-- id: publicar-proyecto-fotogrametrico-remoto -->

Digi3D.AI puede cargar un proyecto fotogramétrico publicado en una URL en lugar de en una carpeta del equipo. Las imágenes del proyecto se leen por HTTP o HTTPS, a trozos, sin descargarlas enteras. El proyecto puede estar en Azure Blob Storage (almacenamiento de objetos de Microsoft Azure) o en cualquier servidor HTTP o HTTPS que atienda peticiones de un rango de bytes (cabecera `Range`). Si el servidor envía la etiqueta de entidad (*ETag*, identificador de la versión de un archivo), Digi3D.AI la usa para detectar que un archivo ha cambiado mientras lo lee.

Este procedimiento explica qué archivos subir al servidor, cómo se calcula la URL de cada imagen, cómo generar la autorización y cómo cargar el proyecto. El cuadro de diálogo se describe en [Cargar un proyecto desde una URL](../referencia/cuadros-de-dialogo/cargar-proyecto-remoto.md).

## Requisitos

* El módulo de fotogrametría en la licencia.
* Un servidor que atienda peticiones `GET` con la cabecera `Range` y devuelva el código 206, y peticiones `HEAD`. Si el servidor ignora la cabecera `Range`, Digi3D.AI no lee las imágenes y muestra el mensaje «El servidor de *URL* no atiende las peticiones de rangos de bytes (cabecera Range). Para leer imágenes remotas, Digi3D.AI necesita que el servidor admita peticiones de rangos de bytes.»
* Un proyecto en uno de estos formatos: proyecto de Digi3D.AI (`.d3dprj`), proyecto de Inpho (`.prj`), proyecto de Summit (`.smtxml`) o proyecto de PhotoScan o Metashape (`.xml`).
* Imágenes TIFF teseladas con niveles piramidales internos. Consulta [Preparar las imágenes](#preparar-las-imágenes).

## Qué subir al servidor

Sube estos archivos al servidor, conservando entre ellos la misma disposición de carpetas que tienen en el equipo donde se creó el proyecto:

| Formato del proyecto | Archivos que Digi3D.AI descarga al cargar el proyecto |
| :--- | :--- |
| Proyecto de Digi3D.AI (`.d3dprj`) | El archivo `.d3dprj` y el archivo de modelo (`.d3d`) de cada elemento `model` del proyecto. Digi3D.AI toma el nombre del archivo del atributo `path` de cada elemento, le pone la extensión `.d3d` y lo busca en la misma carpeta que el `.d3dprj`. |
| Proyecto de Inpho (`.prj`) | El archivo `.prj`. |
| Proyecto de Summit (`.smtxml`) | El archivo `.smtxml`. |
| Proyecto de PhotoScan o Metashape (`.xml`) | El archivo `.xml`. |

En los proyectos que no son de Inpho, Digi3D.AI descarga además el archivo `.prj` con el mismo nombre que el archivo de proyecto (por ejemplo, `vuelo1.prj` para `vuelo1.d3dprj`), que contiene el sistema de referencia de coordenadas. Si el servidor no tiene ese archivo y el proyecto no tiene sistema de referencia, Digi3D.AI trata el proyecto como cualquier proyecto sin sistema de referencia (consulta [Sistema de referencia de coordenadas del proyecto](../referencia/paneles/proyecto-fotogrametrico.md#sistema-de-referencia-de-coordenadas-del-proyecto)).

Digi3D.AI descarga el resto de archivos asociados cuando el sensor de cámara cónica los necesita para inicializar un modelo. Son estos archivos, si existen:

* El archivo `.metadata` de cada imagen y el archivo `<imagen>.orientation.xml`.
* Los archivos de cámara y el archivo de aerotriangulación.
* Las orientaciones relativas (`.rel.xml` y `.rel`), los archivos `.orientation.xml` de la carpeta de trabajo y las orientaciones absolutas (`.abs.xml` y `.abs2`).

Publicar estos archivos es opcional. Si el servidor responde 404 (no existe) a la petición de un archivo asociado, Digi3D.AI continúa como si el archivo no existiera, igual que con un proyecto local.

Digi3D.AI nunca lista el contenido del contenedor ni de las carpetas del servidor: pide cada archivo por su URL. La autorización no necesita el permiso de listado.

### Preparar las imágenes

Digi3D.AI lee por URL imágenes TIFF teseladas con niveles piramidales dentro del mismo archivo. Prepáralas de una de estas formas antes de subirlas:

* Convierte las imágenes con [Raster2Digi](../referencia/generador-de-niveles-piramidales.md), que con la opción **Generar niveles piramidales autocontenidos en la imagen original si es posible** activada (valor por defecto) escribe un GeoTIFF optimizado para la nube (*Cloud Optimized GeoTIFF*, COG): un TIFF teselado cuyos directorios de imagen están al principio del archivo y cuyas teselas van ordenadas del nivel más pequeño al completo. Con esa organización, Digi3D.AI descarga solo las teselas que necesita.
* Usa un TIFF teselado con niveles piramidales internos creado con otro programa.

Estas imágenes no se pueden leer por URL, porque Digi3D.AI no las convierte ni crea sus niveles piramidales mientras las lee desde un servidor:

* Un TIFF sin teselas. Digi3D.AI muestra el mensaje «Digi3D no puede convertir la imagen *URL* ni crear sus niveles piramidales mientras la lee desde una URL. Conviértela con Raster2Digi en un TIFF teselado con niveles piramidales internos y vuelve a copiarla en el servidor.»
* Una imagen formada por varios archivos, como las imágenes de ADS40.
* Un TIFF con una compresión que Digi3D.AI no puede descodificar. El mensaje indica que hay que convertirlo a un TIFF sin compresión o con compresión JPEG, LZW o Deflate.
* Una imagen que no es TIFF. Digi3D.AI solo abre por URL archivos TIFF.

Si una imagen remota no tiene niveles piramidales internos, Digi3D.AI busca en el servidor un archivo `.pyr` junto a ella y los archivos de niveles `_2`, `_4`… (por ejemplo `foto.tif_2`). Digi3D.AI no ofrece crear niveles piramidales para una imagen remota.

## Cómo se calcula la URL de cada imagen

El archivo de proyecto y los archivos de modelo guardan las rutas de las imágenes tal como estaban en el equipo donde se crearon. Al cargar el proyecto, Digi3D.AI convierte cada ruta en una URL con estas reglas:

1. Si la ruta ya es una URL, Digi3D.AI la usa sin cambios.
2. Si la ruta es relativa, empieza por `$(DirectorioTrabajo)` o está dentro de la carpeta local del proyecto, Digi3D.AI la resuelve respecto a la carpeta de la URL del proyecto (la URL del archivo de proyecto sin su último segmento). Esta regla se aplica aunque hayas indicado una **URL de las imágenes**.
3. Si la ruta es absoluta y está fuera de la carpeta local, es una ruta de otro equipo. Digi3D.AI calcula la carpeta común de todas las rutas de otro equipo de las imágenes del proyecto, quita esa carpeta de cada ruta y resuelve los segmentos restantes respecto a la **URL de las imágenes** si la has indicado o, si la has dejado vacía, respecto a la carpeta de la URL del proyecto.
4. Digi3D.AI codifica cada segmento de la ruta con `%XX` (bytes UTF-8) y conserva las mayúsculas y minúsculas. Azure Blob Storage distingue mayúsculas y minúsculas en los nombres, así que los nombres publicados deben escribirse igual que en el proyecto.
5. Si en **Extensión de las imágenes publicadas** has elegido **.tif**, Digi3D.AI sustituye por `.tif` la extensión del último segmento de cada ruta de imagen, o la añade si el segmento no tiene extensión. Con **La indicada para las imágenes en el proyecto**, Digi3D.AI no cambia la extensión. La extensión publicada se aplica solo a las imágenes, no a los archivos asociados.

Ejemplo, con rutas inventadas: el proyecto está en `https://cuenta.blob.core.windows.net/vuelos/vuelo1/vuelo1.d3dprj` y los modelos usan las imágenes `D:\Vuelos\Vuelo1\Fotos\Pasada1\0001.jpg` y `D:\Vuelos\Vuelo1\Fotos\Pasada2\0002.jpg`, que son rutas de otro equipo. La carpeta común es `D:\Vuelos\Vuelo1\Fotos`. Sin **URL de las imágenes** y con la extensión **.tif**, Digi3D.AI abre estas URL:

```
https://cuenta.blob.core.windows.net/vuelos/vuelo1/Pasada1/0001.tif
https://cuenta.blob.core.windows.net/vuelos/vuelo1/Pasada2/0002.tif
```

Con la **URL de las imágenes** `https://cuenta.blob.core.windows.net/fotos/vuelo1/`, abre estas:

```
https://cuenta.blob.core.windows.net/fotos/vuelo1/Pasada1/0001.tif
https://cuenta.blob.core.windows.net/fotos/vuelo1/Pasada2/0002.tif
```

Si las rutas de otro equipo no tienen carpeta común (por ejemplo, están en unidades distintas), Digi3D.AI no carga el proyecto y muestra el mensaje «Digi3D.AI no puede calcular las URL de las imágenes porque *ruta 1* y *ruta 2* no están en una carpeta común (por ejemplo, están en unidades distintas).»

Después de calcular la carpeta común, Digi3D.AI envía una petición `HEAD` para comprobar que existe la primera imagen. Si no existe, añade al panel [Tareas](../referencia/paneles/tareas.md) una advertencia que recomienda comprobar la **URL de las imágenes** y la extensión de las imágenes publicadas. Digi3D.AI no comprueba las demás imágenes al cargar el proyecto: en los proyectos remotos de Inpho, Summit y PhotoScan tampoco omite los modelos cuya foto falta, y la carga de una imagen que no existe en el servidor falla cuando Digi3D.AI abre el modelo.

## Generar la autorización

Un servidor que requiere autorización necesita una consulta (parte de la URL que empieza por `?`) en cada petición. En Azure Blob Storage, esa consulta es una firma de acceso compartido (SAS, *shared access signature*). Genera la SAS con el portal de Azure, con Azure Storage Explorer o con la interfaz de línea de comandos (CLI) de Azure, con estas condiciones:

* La SAS es de un contenedor o de un directorio, y cubre todas las carpetas del proyecto y de las imágenes situadas dentro del contenedor o directorio autorizado. Digi3D.AI rechaza una SAS de un único objeto (*blob*, el parámetro `sr=b`) con el mensaje de la sección [Validaciones](../referencia/cuadros-de-dialogo/cargar-proyecto-remoto.md#validaciones), porque un proyecto necesita acceder a muchos archivos.
* El permiso de la SAS es de lectura (`sp=r`). No necesita permiso de listado.
* La fecha de caducidad (parámetro `se`) es posterior al trabajo previsto con el proyecto. Al iniciarse, Digi3D.AI avisa si la SAS ya ha caducado o caduca en menos de 24 horas (consulta [Caducidad y rechazo de la autorización](#caducidad-y-rechazo-de-la-autorización)).

Digi3D.AI asocia la consulta del proyecto al contenedor de Azure, o a la raíz del servidor en un servidor que no es de Azure, y la añade a todas las peticiones a URL que empiezan por ese prefijo. Si las imágenes están en otro contenedor, cuenta de almacenamiento o servidor, escribe en **URL de las imágenes** la URL de su carpeta con la SAS de ese contenedor.

La URL del proyecto con su SAS tiene esta forma (los valores de la consulta son ilustrativos):

```
https://cuenta.blob.core.windows.net/vuelos/vuelo1/vuelo1.d3dprj?sv=…&se=2027-03-31T00:00:00Z&sr=c&sp=r&sig=…
```

## Cargar el proyecto

1. Selecciona **Ventana/Proyecto fotogramétrico** para mostrar el panel [Proyecto fotogramétrico](../referencia/paneles/proyecto-fotogrametrico.md).
2. Pulsa la flecha del botón **Cargar** y selecciona **Cargar proyecto desde una URL...**. Aparece el cuadro de diálogo [Cargar un proyecto desde una URL](../referencia/cuadros-de-dialogo/cargar-proyecto-remoto.md).
3. Escribe en **URL del proyecto** la URL del archivo de proyecto con su SAS.
4. Si las imágenes no están en la carpeta del proyecto, escribe en **URL de las imágenes** la URL de su carpeta, con su SAS si el servidor la requiere.
5. Si las imágenes publicadas tienen extensión `.tif` y las rutas del proyecto tienen otra, selecciona **.tif** en **Extensión de las imágenes publicadas**.
6. Comprueba en **Carpeta local del proyecto** la carpeta donde Digi3D.AI guardará la copia local.
7. Pulsa **Aceptar**.

Digi3D.AI descarga el archivo de proyecto y los archivos de modelo con hasta 8 descargas simultáneas, los guarda en la carpeta local, calcula la carpeta común de las imágenes y carga el proyecto en el panel. Si el proyecto es de Digi3D.AI (`.d3dprj`), Digi3D.AI también descarga o revalida en paralelo, antes de abrir ningún modelo, los archivos asociados de todos los modelos.

Un proyecto remoto se carga también con la función Python [open_project](#python) y con el subcomando `proyecto` de la [línea de comandos](#línea-de-comandos).

## La copia local

Digi3D.AI trabaja con una copia local del proyecto. La copia está en la carpeta `%LOCALAPPDATA%\Digi3D.NET\Proyectos remotos\<nombre del archivo de proyecto sin extensión>-<16 dígitos hexadecimales>`, donde los 16 dígitos dependen de la URL del proyecto sin consulta. El valor del registro `CarpetaProyectosRemotos` cambia la carpeta `Proyectos remotos` (consulta [Ajustes avanzados](#ajustes-avanzados)). Pulsa **Abrir la carpeta local del proyecto** en el menú del botón **Cargar** para abrirla en el Explorador de archivos.

La carpeta contiene:

* El archivo de proyecto, los archivos de modelo y el archivo `.prj` descargados.
* Los archivos asociados que Digi3D.AI ha descargado.
* Los archivos que Digi3D.AI escribe al trabajar con el proyecto: el archivo `.metadata` de cada imagen, las orientaciones y la configuración que Digi3D.AI guarda en un archivo `.d3d` al cerrar su modelo. Digi3D.AI nunca escribe en el servidor.
* El archivo `proyecto-remoto.json` (manifiesto), que guarda las URL del proyecto y de las imágenes sin consulta, la extensión de las imágenes publicadas, la carpeta común de las imágenes y, por cada archivo descargado, su ETag, su tamaño y su fecha.

La SAS no se escribe en ningún archivo de la carpeta local. Los mensajes, el panel Tareas y los cuadros de diálogo de Digi3D.AI muestran las URL sin la consulta.

### Qué copia se usa al cargar el proyecto

Al cargar el proyecto, Digi3D.AI usa primero la copia local y consulta al servidor solo si hace falta:

* Un archivo local que no está en el manifiesto lo ha creado el usuario o Digi3D.AI, no una descarga. Digi3D.AI lo usa sin consultar al servidor y nunca lo sustituye.
* Un archivo local que está en el manifiesto proviene de una descarga. En cada carga del proyecto, Digi3D.AI revalida el archivo de proyecto y los archivos `.d3d` registrados en el manifiesto con una petición condicional que incluye el ETag guardado (cabecera `If-None-Match`). Revalida cada archivo asociado una vez por sesión.
  * Si el servidor responde que el archivo no ha cambiado, Digi3D.AI conserva la copia local.
  * Si el servidor tiene otra versión y la copia local no se ha modificado (su tamaño y su fecha coinciden con el manifiesto), Digi3D.AI sustituye la copia local por la del servidor y añade al panel Tareas la advertencia «*archivo* ha cambiado en el servidor, así que Digi3D.AI ha actualizado la copia local.»
  * Si el servidor tiene otra versión y la copia local se ha modificado, Digi3D.AI conserva la copia local y añade al panel Tareas la advertencia «*archivo* ha cambiado en el servidor, pero también se ha modificado la copia local, así que Digi3D.AI sigue usando la copia local. Para usar la versión del servidor, descarta la copia local del proyecto.» El manifiesto guarda el ETag actual del servidor, así que la advertencia no se repite en las cargas siguientes mientras el archivo del servidor no vuelva a cambiar.
  * Un archivo `.d3d` cuya única diferencia con la versión descargada es la configuración que Digi3D.AI escribe al cerrar un modelo (el elemento `configuration` y el atributo `orientationDirectory`) cuenta como no modificado. Digi3D.AI lo actualiza con la versión del servidor y conserva su configuración local.
* Si Digi3D.AI no puede consultar al servidor (por ejemplo, por un fallo de red) y existe una copia local del archivo, usa esa copia y añade al panel Tareas la advertencia «Digi3D.AI usa la copia local de *archivo* porque no ha podido consultar la versión del servidor:» seguida del motivo. Si no existe copia local, la carga falla con el mensaje del error.
* Si el servidor responde 404 al archivo de proyecto, la carga falla aunque exista una copia local. Si el servidor rechaza la autorización, la carga también falla aunque exista una copia local; consulta [Caducidad y rechazo de la autorización](#caducidad-y-rechazo-de-la-autorización).

Para sustituir los archivos modificados por las versiones del servidor, [descarta la copia local](#descartar-la-copia-local).

### Descartar la copia local

Descartar la copia local borra la carpeta local con el proyecto descargado, los archivos asociados y todo lo que Digi3D.AI ha guardado en ella, y vuelve a descargar el proyecto.

1. Cierra las ventanas fotogramétricas que tengan cargado un modelo del proyecto o un archivo de la carpeta local. Si queda alguna abierta, Digi3D.AI muestra el mensaje «Cierra las ventanas fotogramétricas del proyecto *URL* antes de descartar su copia local.» y no descarta nada.
2. Pulsa la flecha del botón **Cargar** y selecciona **Descartar la copia local del proyecto...**.
3. En el cuadro «¿Descartar la copia local del proyecto?», que indica la carpeta que se borra y la URL del proyecto, pulsa **Descartar la copia local**. El botón **Cancelar** no hace cambios.

Digi3D.AI vacía el panel, cambia el nombre de la carpeta local a un nombre que termina en `.descartada`, borra esa carpeta y vuelve a cargar el proyecto con la credencial guardada. Si algún proceso mantiene abierto un archivo de la carpeta, el cambio de nombre falla: Digi3D.AI muestra el mensaje «No se ha podido descartar la copia local del proyecto *URL*:» seguido del motivo, no borra ningún archivo y vuelve a cargar el proyecto con la copia local sin cambios. En la siguiente operación de descarte, Digi3D.AI intenta borrar las carpetas `.descartada` pendientes.

## Autorización y credenciales guardadas

Después de cargar un proyecto, Digi3D.AI guarda su credencial en el registro del usuario de _Windows_ actual: las URL del proyecto y de las imágenes sin consulta, la extensión de las imágenes publicadas y las consultas cifradas con DPAPI (la API de protección de datos de _Windows_) para ese usuario. Hay una credencial por proyecto. Digi3D.AI no guarda la credencial de un proyecto que no se ha podido cargar, así que una SAS que no permite cargar el proyecto no sustituye a la guardada.

Al cargar una URL de proyecto desde el panel, la línea de comandos, un archivo de dibujo con proyecto asociado o la función Python `open_project`, Digi3D.AI elige la autorización así:

* Si la URL tiene consulta, usa esa consulta.
* Si la URL del proyecto no tiene consulta, Digi3D.AI usa la credencial guardada del proyecto.
* Si la URL del proyecto no tiene consulta y no existe una credencial guardada del proyecto, Digi3D.AI abre el cuadro [Cargar un proyecto desde una URL](../referencia/cuadros-de-dialogo/cargar-proyecto-remoto.md) con la URL en el campo **URL del proyecto**. Con la interfaz desatendida (la función Python `open_project` o el servidor del protocolo de contexto de modelos, MCP, *Model Context Protocol*), carga la URL sin consulta, como la de un servidor que no requiere autorización.

El archivo de dibujo, la lista de últimos proyectos y el archivo de archivos de referencia guardan la URL del proyecto sin consulta, nunca la SAS. El cuadro de abrir archivo del botón **Cargar** no propone nunca la URL de un proyecto remoto.

### Caducidad y rechazo de la autorización

Al iniciarse, Digi3D.AI registra las consultas de las credenciales guardadas. Para cada credencial, añade al panel [Tareas](../referencia/paneles/tareas.md) una advertencia si la SAS ya ha caducado («Proyecto remoto: autorización caducada») o si caduca en menos de 24 horas («Proyecto remoto: la autorización caduca en menos de 24 horas»). Digi3D.AI toma la fecha de caducidad del parámetro `se` de la consulta; si la credencial tiene dos consultas con parámetro `se` válido, usa la más temprana. Una consulta sin `se`, o con un `se` que no tiene el formato `AAAA-MM-DD`, `AAAA-MM-DDThh:mmZ` o `AAAA-MM-DDThh:mm:ss[.fracción]Z` (en UTC), no genera aviso.

Cuando el servidor rechaza la autorización (respuesta 401 o 403), Digi3D.AI muestra el cuadro de advertencia «Proyecto remoto: autorización rechazada», con el texto «El servidor ha rechazado la autorización (SAS) para *URL*: no es válida o ha caducado. Renuévala con «Renovar la autorización (SAS)...» del panel Proyecto fotogramétrico.» En cada ejecución, Digi3D.AI muestra como máximo una advertencia por contenedor hasta que se renueva su autorización; la renovación permite mostrar otra advertencia. Mientras una imagen tiene el error de autorización, Digi3D.AI no descarga datos nuevos de ella. Las teselas que no se pudieron descargar se vuelven a pedir en cada dibujo y se cargan después de renovar la autorización.

Para renovar la autorización:

1. Genera una SAS nueva en Azure.
2. Pulsa la flecha del botón **Cargar** y selecciona **Renovar la autorización (SAS)...**.
3. Escribe en **URL del proyecto** la URL del proyecto con la SAS nueva y, si las imágenes tienen su propia SAS, en **URL de las imágenes** la URL con su SAS nueva.
4. Pulsa **Aceptar**.

Digi3D.AI guarda las consultas nuevas y las usa de inmediato en las imágenes que ya estaban abiertas; no descarga archivos ni cierra el proyecto. Consulta [Modo de renovación de la autorización](../referencia/cuadros-de-dialogo/cargar-proyecto-remoto.md#modo-de-renovación-de-la-autorización).

### Archivos modificados en el servidor

Si una imagen cambia en el servidor mientras Digi3D.AI la tiene abierta, Digi3D.AI deja de leer esa imagen y muestra el cuadro de advertencia «Proyecto remoto: archivos modificados en el servidor»: «Un archivo del proyecto remoto *URL* ha cambiado en el servidor mientras Digi3D mantenía abierto el archivo. Digi3D ha dejado de leer el archivo modificado. Cierra las ventanas fotogramétricas del proyecto y vuelve a cargar el proyecto.» Digi3D.AI muestra un cuadro por contenedor durante la ejecución del programa.

## Caché de imágenes remotas

Digi3D.AI guarda en el disco los trozos de imagen que descarga, para no pedirlos otra vez al servidor. La caché está en `%TEMP%\Digi3D.NET\Caché imágenes remotas`, con una subcarpeta por imagen. Cada subcarpeta contiene un archivo disperso (un archivo que solo ocupa espacio en disco para los trozos descargados) con trozos de 64 KiB.

Cuando Digi3D.AI abre una imagen remota, solicita la limpieza de la caché. La limpieza se ejecuta en un hilo propio, como máximo una vez cada 5 minutos por proceso, y funciona así:

* Mide el espacio en disco que ocupa cada subcarpeta.
* Si el total supera el límite, borra subcarpetas enteras, desde la de uso más antiguo hasta la más reciente, hasta que el espacio en disco ocupado por la caché no supere el 90 % del límite.
* No borra la subcarpeta de una imagen que cualquier proceso tiene abierta.

El límite es de 20.480 MiB por defecto. Cambia el valor del registro `TamanoMaximoCacheImagenesRemotasMiB` para modificarlo.

## Ajustes avanzados

Los ajustes de las lecturas remotas se cambian en el registro de _Windows_. Son valores de cada usuario: no están en el archivo Digi3DNET.db. Digi3D.AI lee cada valor una sola vez por proceso, así que hay que reiniciarlo para que un cambio surta efecto.

Los tres primeros valores están en la clave `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Raster`. Son valores `REG_DWORD`:

| Valor | Por defecto | Efecto |
| :--- | :--- | :--- |
| `TamanoMaximoCacheImagenesRemotasMiB` | 20480 | Tamaño máximo de la caché de imágenes remotas, en MiB. Un valor menor que 1 se sustituye por el valor por defecto. |
| `ConexionesRemotasMaximas` | 16 | Número de hilos que descargan por adelantado rangos de bytes de las imágenes. Admite de 1 a 32, ambos incluidos. |
| `TeselasRemotasEnParalelo` | 8 | Número de teselas que el hilo cargador de una imagen remota descarga a la vez antes de cargarlas. Admite de 1 a 32, ambos incluidos. |

El cuarto valor está en la clave `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor`. Es una cadena:

| Valor | Por defecto | Efecto |
| :--- | :--- | :--- |
| `CarpetaProyectosRemotos` | vacío | Carpeta raíz de las copias locales de los proyectos remotos. Admite variables de entorno y debe ser una ruta absoluta. Si está vacío, Digi3D.AI usa `%LOCALAPPDATA%\Digi3D.NET\Proyectos remotos`. |

## Python

La función [open_project](../programacion/python/referencia/digi3d/functions.md#open_project) carga un proyecto remoto sin mostrar ningún cuadro de diálogo:

```python
import digi3d

url = "https://cuenta.blob.core.windows.net/vuelos/vuelo1/vuelo1.d3dprj?sv=…&se=2027-03-31T00:00:00Z&sr=c&sp=r&sig=…"
if digi3d.open_project(url, images_url="https://cuenta.blob.core.windows.net/fotos/vuelo1/?sv=…&sr=c&sp=r&sig=…"):
    print(digi3d.project()["file"])
```

Si `path` no es una URL `http` o `https` e `images_url` no es `None` ni una cadena vacía, `open_project` lanza `ValueError`.

## Línea de comandos

El subcomando [proyecto](../referencia/linea-de-comandos/proyecto.md) acepta la URL de un proyecto remoto. Escribe la URL entre comillas, porque la consulta contiene el carácter `&`:

```powershell
digi3d.exe proyecto "https://cuenta.blob.core.windows.net/vuelos/vuelo1/vuelo1.d3dprj?sv=…&sr=c&sp=r&sig=…"
```

Si la URL no tiene consulta y no hay credencial guardada, Digi3D.AI abre el cuadro [Cargar un proyecto desde una URL](../referencia/cuadros-de-dialogo/cargar-proyecto-remoto.md).

## Límites

* Digi3D.AI no admite las URL prefirmadas de Amazon S3: cada una autoriza un único objeto, y Digi3D.AI añade la misma consulta a todas las peticiones de un contenedor o servidor.
* Los formatos de proyecto que se pueden cargar desde una URL son `.d3dprj`, `.prj` de Inpho, `.smtxml` de Summit y `.xml` de PhotoScan o Metashape. Para otro formato, Digi3D.AI muestra el mensaje «Digi3D.AI no puede cargar *archivo* desde una URL.» con la lista de formatos admitidos.
* Digi3D.AI solo lee por URL imágenes TIFF teseladas. No convierte las imágenes remotas ni crea sus niveles piramidales.
* Digi3D.AI no escribe en el servidor. Las ediciones que hace al trabajar con el proyecto (orientaciones, archivos `.metadata`, configuración de los modelos) se guardan en la copia local.
* Los proyectos remotos requieren un sensor instalado que implemente la carga desde una URL; en Digi3D.AI es el sensor de cámara cónica.
