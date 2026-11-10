# Publishing a photogrammetric project in Azure Blob Storage and loading it from a URL
<!-- id: publicar-proyecto-fotogrametrico-remoto -->
<!-- origen: 2479201c11b28c923aa4c34762fce188d012200d -->

Digi3D.AI can load a photogrammetric project published at a URL instead of in a folder of the computer. It reads the project images over HTTP or HTTPS, in pieces, without downloading them whole. The project can be in Azure Blob Storage (Microsoft Azure object storage) or on any HTTP or HTTPS server that answers byte-range requests (the `Range` header). If the server sends the entity tag (*ETag*, an identifier of the version of a file), Digi3D.AI uses it to detect that a file has changed while it reads it.

This procedure explains which files to upload to the server, how the URL of each image is calculated, how to generate the authorization and how to load the project. The dialog is described in [Load a project from a URL](../referencia/cuadros-de-dialogo/cargar-proyecto-remoto.md).

## Requirements

* The photogrammetry module in the license.
* A server that answers `GET` requests with the `Range` header and returns code 206, and `HEAD` requests. If the server ignores the `Range` header, Digi3D.AI does not read the images and displays “The server of *URL* ignored the requests for byte ranges (Range header). To read remote images, Digi3D.AI requires the server to support byte range requests.”
* A project in one of these formats: Digi3D.AI project (`.d3dprj`), Inpho project (`.prj`), Summit project (`.smtxml`) or PhotoScan or Metashape project (`.xml`).
* Tiled TIFF images with internal pyramid levels. See [Preparing the images](#preparing-the-images).

## What to upload to the server

Upload these files to the server, keeping between them the same folder layout they have on the computer where the project was created:

| Project format | Files that Digi3D.AI downloads when it loads the project |
| :--- | :--- |
| Digi3D.AI project (`.d3dprj`) | The `.d3dprj` file and the model file (`.d3d`) of each `model` element of the project. Digi3D.AI takes the file name from the `path` attribute of each element, gives it the `.d3d` extension and looks for it in the same folder as the `.d3dprj`. |
| Inpho project (`.prj`) | The `.prj` file. |
| Summit project (`.smtxml`) | The `.smtxml` file. |
| PhotoScan or Metashape project (`.xml`) | The `.xml` file. |

In projects that are not Inpho projects, Digi3D.AI also downloads the `.prj` file with the same name as the project file (for example, `vuelo1.prj` for `vuelo1.d3dprj`), which contains the coordinate reference system. If the server does not have that file and the project has no reference system, Digi3D.AI treats the project like any project without a reference system (see [Project coordinate reference system](../referencia/paneles/proyecto-fotogrametrico.md#project-coordinate-reference-system)).

Digi3D.AI downloads the rest of the associated files when the conical camera sensor needs them to initialize a model. These are the files, if they exist:

* The `.metadata` file of each image and the `<image>.orientation.xml` file.
* The camera files and the aerotriangulation file.
* The relative orientations (`.rel.xml` and `.rel`), the `.orientation.xml` files of the working folder and the absolute orientations (`.abs.xml` and `.abs2`).

Publishing these files is optional. If the server answers 404 (not found) to the request for an associated file, Digi3D.AI continues as if the file did not exist, as with a local project.

Digi3D.AI requests each file by its URL. It lists the contents of an Azure Blob Storage container in one case only: when it loads a remote Inpho project (with the option [Omit models for which no photo is available](../referencia/cuadros-de-dialogo/configuracion/inpho/omitir-modelos-para-los-cuales-no-hay-foto.md) enabled), Summit project or PhotoScan project, it gets the names of the blobs in the common folder of the images with the Azure List Blobs operation, to omit the models whose images are not published. For that listing, the authorization needs the Read and List permissions (`sp=rl`) or the container needs the anonymous access level “Container”. Digi3D.AI lists no other folder.

### Preparing the images

Digi3D.AI reads over a URL tiled TIFF images with pyramid levels inside the same file. Prepare them in one of these ways before uploading them:

* Convert the images with [Raster2Digi](../referencia/generador-de-niveles-piramidales.md), which, with **Generate self-contained pyramidal levels in the original image if possible.** enabled (the default), writes a Cloud Optimized GeoTIFF (COG): a tiled TIFF whose image directories are at the start of the file and whose tiles are ordered from the smallest level to the full image. With that organization, Digi3D.AI downloads only the tiles it needs.
* Use a tiled TIFF with internal pyramid levels created with another program.

These images cannot be read over a URL, because Digi3D.AI does not convert them or create their pyramid levels while reading them from a server:

* A TIFF without tiles. Digi3D.AI displays “Digi3D cannot convert the image *URL* or create its pyramid levels while reading it from a URL. Convert it with Raster2Digi into a tiled TIFF with internal pyramid levels and upload it to the server again.”
* An image made up of several files, such as ADS40 images.
* A TIFF with a compression that Digi3D.AI cannot decode. The message says to convert it to a TIFF with no compression or with JPEG, LZW or Deflate compression.
* An image that is not a TIFF. Digi3D.AI opens only TIFF files over a URL.

If a remote image has no internal pyramid levels, Digi3D.AI looks on the server for a `.pyr` file beside it and for the level files `_2`, `_4`… (for example `foto.tif_2`). Digi3D.AI does not offer to create pyramid levels for a remote image.

## How the URL of each image is calculated

The project file and the model files save the image paths as they were on the computer where they were created. When the project loads, Digi3D.AI converts each path to a URL with these rules:

1. If the path is already a URL, Digi3D.AI uses it unchanged.
2. If the path is relative, starts with `$(DirectorioTrabajo)` or is inside the local folder of the project, Digi3D.AI resolves it against the folder of the project URL (the URL of the project file without its last segment). This rule applies even if you have specified an **Images URL**.
3. If the path is absolute and outside the local folder, it is a path of another computer. Digi3D.AI calculates the common folder of all the paths of another computer of the project images, removes that folder from each path and resolves the remaining segments against the **Images URL** if you specified one or, if you left it empty, against the folder of the project URL.
4. Digi3D.AI encodes each path segment with `%XX` (UTF-8 bytes) and keeps uppercase and lowercase letters. Azure Blob Storage distinguishes uppercase from lowercase in names, so the published names must be written as in the project.
5. If you selected **.tif** in **Extension of the published images**, Digi3D.AI replaces the extension of the last segment of each image path with `.tif`, or adds it if the segment has no extension. With **Image extension specified in the project**, Digi3D.AI does not change the extension. The published extension applies only to the images, not to the associated files.

Example, with invented paths: the project is at `https://cuenta.blob.core.windows.net/vuelos/vuelo1/vuelo1.d3dprj` and the models use the images `D:\Vuelos\Vuelo1\Fotos\Pasada1\0001.jpg` and `D:\Vuelos\Vuelo1\Fotos\Pasada2\0002.jpg`, which are paths of another computer. The common folder is `D:\Vuelos\Vuelo1\Fotos`. Without an **Images URL** and with the **.tif** extension, Digi3D.AI opens these URLs:

```
https://cuenta.blob.core.windows.net/vuelos/vuelo1/Pasada1/0001.tif
https://cuenta.blob.core.windows.net/vuelos/vuelo1/Pasada2/0002.tif
```

With the **Images URL** `https://cuenta.blob.core.windows.net/fotos/vuelo1/`, it opens these:

```
https://cuenta.blob.core.windows.net/fotos/vuelo1/Pasada1/0001.tif
https://cuenta.blob.core.windows.net/fotos/vuelo1/Pasada2/0002.tif
```

If the paths of another computer have no common folder (for example, they are on different drives), Digi3D.AI does not load the project and displays “Digi3D.AI cannot calculate the URLs of the images because *path 1* and *path 2* are not in a common folder (for example, they are on different drives).”

After calculating the common folder, Digi3D.AI sends a `HEAD` request to check that the first image exists. If it does not exist, it adds to the [Tasks](../referencia/paneles/tareas.md) pane a warning that recommends checking the **Images URL** and the extension of the published images. Digi3D.AI does not send one request per remaining image. In a remote Azure Blob Storage project, the Inpho loader (with the option **Omit models for which no photo is available** enabled), the Summit loader and the PhotoScan loader omit the models whose images are not published, as they omit the models whose photos do not exist in a local project. To do so, they list the blobs in the common folder of the images with the Azure List Blobs operation, which returns up to 5,000 names per request (retrieving 13,590 names requires at least 3 requests), and compare the names with the URL of each image. The `.d3dprj` project loader does not check the images, either locally or remotely. If the server is not Azure Blob Storage, if neither a SAS with Read and List permissions nor anonymous access at the “Container” level is available, or if the listing fails for another reason, the loader shows every model and adds a single notice to the [Tasks](../referencia/paneles/tareas.md) pane: “Digi3D.AI could not list the images published in *URL*, so it shows every model of the project, including the models whose images are not published.” The following lines of the notice read: “To omit the models whose images are not published, the images must be in Azure Blob Storage, and the shared access signature (SAS) must grant the Read and List permissions (sp=rl) or the container must allow anonymous listing. If the SAS lacks the Read or List permission, renew it with 'Renew authorization (SAS)...' in the Photogrammetric project panel. Load the project again when the list of images can be obtained.” A listing error does not open the box “Remote project: authorization rejected”. In those cases, or if the project is not an Inpho, Summit or PhotoScan project, loading an image that does not exist on the server fails when Digi3D.AI opens the model.

## Generating the authorization

A server that requires authorization needs a query (the part of the URL that starts with `?`) in each request. In Azure Blob Storage, that query is a shared access signature (SAS). Generate the SAS with the Azure portal, Azure Storage Explorer or the Azure command-line interface (CLI), with these conditions:

* The SAS is for a container or a directory, and covers all the project and image folders below it. Digi3D.AI rejects a SAS for a single object (*blob*, the parameter `sr=b`) with the message in the [Validations](../referencia/cuadros-de-dialogo/cargar-proyecto-remoto.md#validations) section, because a project needs access to many files.
* The SAS permissions are Read and List (`sp=rl`). With a read-only SAS (`sp=r`), Digi3D.AI loads the project and reads the images, but it cannot omit the models whose images are not published (see [How the URL of each image is calculated](#how-the-url-of-each-image-is-calculated)). As an alternative to a SAS, a container with the anonymous access level “Container” allows reading and listing the blobs without a query; the level “Blob” allows reading but not listing.
* The expiry date (the `se` parameter) is later than the planned work with the project. At startup, Digi3D.AI warns if the SAS has expired or expires in less than 24 hours (see [Authorization expiry and rejection](#authorization-expiry-and-rejection)).

Digi3D.AI associates the project query with the Azure container, or with the server root on a server that is not Azure, and adds it to all requests to URLs that start with that prefix. If the images are in another container, storage account or server, type in **Images URL** the URL of their folder with the SAS of that container.

The project URL with its SAS has this form (the query values are illustrative):

```
https://cuenta.blob.core.windows.net/vuelos/vuelo1/vuelo1.d3dprj?sv=…&se=2027-03-31T00:00:00Z&sr=c&sp=r&sig=…
```

## Loading the project

1. Select **Window/Photogrammetric project** to show the [Photogrammetric project](../referencia/paneles/proyecto-fotogrametrico.md) pane.
2. Click the arrow of the **Load** button and select **Load project from a URL...**. The [Load a project from a URL](../referencia/cuadros-de-dialogo/cargar-proyecto-remoto.md) dialog appears.
3. Type in **Project URL** the URL of the project file with its SAS.
4. If the images are not in the project folder, type in **Images URL** the URL of their folder, with its SAS if the server requires one.
5. If the published images have the `.tif` extension and the project paths have another one, select **.tif** in **Extension of the published images**.
6. Check in **Local folder of the project** the folder where Digi3D.AI will save the local copy.
7. Click **OK**.

Digi3D.AI downloads the project file and the model files with up to 8 simultaneous downloads, saves them in the local folder, calculates the common folder of the images and loads the project into the pane. If the project is a Digi3D.AI project (`.d3dprj`), Digi3D.AI also downloads or revalidates in parallel, before opening any model, the associated files of all the models.

A remote project is also loaded with the Python function [open_project](#python) and with the `proyecto` subcommand of the [command line](#command-line).

## The local copy

Digi3D.AI works with a local copy of the project. The copy is in the folder `%LOCALAPPDATA%\Digi3D.NET\Proyectos remotos\<project file name without extension>-<16 hexadecimal digits>`, where the 16 digits depend on the project URL without the query. The `CarpetaProyectosRemotos` registry value changes the `Proyectos remotos` folder (see [Advanced settings](#advanced-settings)). Click **Open the project local folder** in the **Load** button menu to open it in File Explorer.

The folder contains:

* The downloaded project file, model files and `.prj` file.
* The associated files that Digi3D.AI has downloaded.
* The files that Digi3D.AI writes while working with the project: the `.metadata` file of each image, the orientations and the configuration that Digi3D.AI saves in a `.d3d` file when its model is closed. Digi3D.AI never writes to the server.
* The `proyecto-remoto.json` file (manifest), which saves the project and images URLs without a query, the extension of the published images, the common folder of the images and, for each downloaded file, its ETag, size and date.

The SAS is not written to any file in the local folder. Digi3D.AI messages, the Tasks pane and dialogs show the URLs without the query.

### Which copy is used when the project loads

When the project loads, Digi3D.AI uses the local copy first and queries the server only if necessary:

* A local file that is not in the manifest was created by the user or by Digi3D.AI, not by a download. Digi3D.AI uses it without querying the server and never replaces it.
* A local file that is in the manifest comes from a download. On each project load, Digi3D.AI revalidates the project file and the `.d3d` files recorded in the manifest with a conditional request that includes the saved ETag (the `If-None-Match` header). It revalidates each associated file once per session.
  * If the server answers that the file has not changed, Digi3D.AI keeps the local copy.
  * If the server has another version and the local copy has not been modified (its size and date match the manifest), Digi3D.AI replaces the local copy with the server's and adds to the Tasks pane the warning “*file* has changed on the server, so Digi3D.AI has updated the local copy.”
  * If the server has another version and the local copy has been modified, Digi3D.AI keeps the local copy and adds to the Tasks pane the warning “*file* has changed on the server, but the local copy has also been modified, so Digi3D.AI keeps using the local copy. To use the version on the server, discard the local copy of the project.” The manifest saves the current ETag of the server, so the warning is not repeated in later loads until the file on the server changes again.
  * A `.d3d` file whose only difference from the downloaded version is the configuration that Digi3D.AI writes when a model is closed (the `configuration` element and the `orientationDirectory` attribute) counts as unmodified. Digi3D.AI updates it with the server version and keeps its local configuration.
* If Digi3D.AI cannot query the server (for example, because of a network failure) and a local copy of the file exists, it uses that copy and adds to the Tasks pane the warning “Digi3D.AI uses the local copy of *file* because it could not check the version on the server:” followed by the reason. If there is no local copy, the load fails with the error message.
* If the server answers 404 for the project file, the load fails even if a local copy exists. If the server rejects the authorization, the load also fails even if a local copy exists; see [Authorization expiry and rejection](#authorization-expiry-and-rejection).

To replace the modified files with the server versions, [discard the local copy](#discarding-the-local-copy).

### Discarding the local copy

Discarding the local copy deletes the local folder with the downloaded project, the associated files and everything Digi3D.AI has saved in it, and downloads the project again.

1. Close the photogrammetric windows that have a model of the project or a file of the local folder loaded. If any remains open, Digi3D.AI displays “Close the photogrammetric windows of the project *URL* before discarding its local copy.” and discards nothing.
2. Click the arrow of the **Load** button and select **Discard the project local copy...**.
3. In the “Discard the local copy of the project?” box, which shows the folder to be deleted and the project URL, click **Discard the local copy**. **Cancel** makes no changes.

Digi3D.AI empties the pane, renames the local folder to a name that ends in `.descartada`, deletes that folder and loads the project again with the saved credential. If any process keeps a file of the folder open, the rename fails: Digi3D.AI displays “The local copy of the project *URL* could not be discarded:” followed by the reason, deletes no file and loads the project again with the local copy unchanged. During the next discard operation, Digi3D.AI attempts to delete the remaining `.descartada` folders.

## Authorization and saved credentials

After loading a project, Digi3D.AI saves its credential in the registry of the current _Windows_ user: the project and images URLs without a query, the extension of the published images and the queries encrypted with DPAPI (the _Windows_ Data Protection API) for that user. There is one credential per project. Digi3D.AI does not save the credential of a project that could not be loaded, so a SAS that does not allow the project to load does not replace the saved one.

When you load a project URL from the pane, the command line, a drawing file with an associated project or the Python function `open_project`, Digi3D.AI chooses the authorization like this:

* If the URL has a query, it uses that query.
* If the project URL has no query, Digi3D.AI uses the project's saved credential.
* If the project URL has no query and the project has no saved credential, Digi3D.AI opens the [Load a project from a URL](../referencia/cuadros-de-dialogo/cargar-proyecto-remoto.md) dialog with the URL in the **Project URL** field. With the unattended interface (the Python function `open_project` or the Model Context Protocol (MCP) server), it loads the URL without a query, like that of a server that requires no authorization.

The drawing file, the last project list and the reference files file save the project URL without the query, never the SAS. The open file dialog of the **Load** button never suggests the URL of a remote project.

### Authorization expiry and rejection

At startup, Digi3D.AI registers the queries of the saved credentials. For each credential, it adds to the [Tasks](../referencia/paneles/tareas.md) pane a warning if the SAS has already expired (“Remote project: authorization expired”) or expires in less than 24 hours (“Remote project: authorization expires in less than 24 hours”). Digi3D.AI takes the expiry date from the `se` parameter of the query; if the credential has two queries with a valid `se` parameter, it uses the earlier one. A query without `se`, or with an `se` that does not have the format `YYYY-MM-DD`, `YYYY-MM-DDThh:mmZ` or `YYYY-MM-DDThh:mm:ss[.fraction]Z` (in UTC), generates no warning.

When the server rejects the authorization (response 401 or 403), Digi3D.AI displays the warning box “Remote project: authorization rejected”, with the text “The server has rejected the authorization (SAS) for *URL*: it is not valid or has expired. Renew it with ‘Renew authorization (SAS)...’ in the Photogrammetric project panel.” During each run, Digi3D.AI displays at most one warning per container until its authorization is renewed; renewal allows another warning. While an image has the authorization error, Digi3D.AI downloads no new data for it. The tiles that could not be downloaded are requested again on each draw and are loaded after the authorization is renewed.

To renew the authorization:

1. Generate a new SAS in Azure.
2. Click the arrow of the **Load** button and select **Renew authorization (SAS)...**.
3. Type in **Project URL** the project URL with the new SAS and, if the images have their own SAS, in **Images URL** the URL with its new SAS.
4. Click **OK**.

Digi3D.AI saves the new queries and uses them immediately on the images that were already open; it does not download files or close the project. See [Authorization renewal mode](../referencia/cuadros-de-dialogo/cargar-proyecto-remoto.md#authorization-renewal-mode).

### Files modified on the server

If an image changes on the server while Digi3D.AI has it open, Digi3D.AI stops reading that image and displays the warning box “Remote project: files changed on the server”: “A file of the remote project *URL* changed on the server while Digi3D had the file open. Digi3D has stopped reading the modified file. Close the photogrammetric windows of the project and reload the project.” Digi3D.AI displays one box per container while the program runs.

## Remote image cache

Digi3D.AI saves on disk the image pieces it downloads, so as not to request them again from the server. The cache is in `%TEMP%\Digi3D.NET\Caché imágenes remotas`, with one subfolder per image. Each subfolder contains a sparse file (a file that takes up disk space only for the downloaded pieces) with 64 KiB pieces.

When Digi3D.AI opens a remote image, it requests a cache cleanup. The cleanup runs in its own thread, at most once every 5 minutes per process, and works like this:

* It measures the disk space each subfolder takes up.
* If the total exceeds the limit, it deletes whole subfolders, from the least recently used to the most recent, until the disk space occupied by the cache does not exceed 90 % of the limit.
* It does not delete the subfolder of an image that any process has open.

The limit is 20,480 MiB by default. Change the `TamanoMaximoCacheImagenesRemotasMiB` registry value to modify it.

## Advanced settings

The remote reading settings are changed in the _Windows_ registry. They are per-user values: they are not in the Digi3DNET.db file. Digi3D.AI reads each value only once per process, so it must be restarted for a change to take effect.

The first three values are in the key `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Raster`. They are `REG_DWORD` values:

| Value | Default | Effect |
| :--- | :--- | :--- |
| `TamanoMaximoCacheImagenesRemotasMiB` | 20480 | Maximum size of the remote image cache, in MiB. A value lower than 1 is replaced by the default. |
| `ConexionesRemotasMaximas` | 16 | Number of threads that download byte ranges of the images ahead of time. Accepts 1 to 32, both included. |
| `TeselasRemotasEnParalelo` | 8 | Number of tiles that the loader thread of a remote image downloads at the same time before loading them. Accepts 1 to 32, both included. |

The fourth value is in the key `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor`. It is a string:

| Value | Default | Effect |
| :--- | :--- | :--- |
| `CarpetaProyectosRemotos` | empty | Root folder of the local copies of remote projects. Accepts environment variables and must be an absolute path. If empty, Digi3D.AI uses `%LOCALAPPDATA%\Digi3D.NET\Proyectos remotos`. |

## Python

The [open_project](../programacion/python/referencia/digi3d/functions.md#open_project) function loads a remote project without displaying any dialog:

```python
import digi3d

url = "https://cuenta.blob.core.windows.net/vuelos/vuelo1/vuelo1.d3dprj?sv=…&se=2027-03-31T00:00:00Z&sr=c&sp=r&sig=…"
if digi3d.open_project(url, images_url="https://cuenta.blob.core.windows.net/fotos/vuelo1/?sv=…&sr=c&sp=r&sig=…"):
    print(digi3d.project()["file"])
```

If `path` is not an `http` or `https` URL and `images_url` is neither `None` nor an empty string, `open_project` raises `ValueError`.

## Command line

The [proyecto](../referencia/linea-de-comandos/proyecto.md) subcommand accepts the URL of a remote project. Type the URL between quotation marks, because the query contains the `&` character:

```powershell
digi3d.exe proyecto "https://cuenta.blob.core.windows.net/vuelos/vuelo1/vuelo1.d3dprj?sv=…&sr=c&sp=r&sig=…"
```

If the URL has no query and there is no saved credential, Digi3D.AI opens the [Load a project from a URL](../referencia/cuadros-de-dialogo/cargar-proyecto-remoto.md) dialog.

## Limits

* Digi3D.AI does not support Amazon S3 presigned URLs: each one authorizes a single object, and Digi3D.AI adds the same query to all requests to a container or server.
* The project formats that can be loaded from a URL are `.d3dprj`, Inpho `.prj`, Summit `.smtxml` and PhotoScan or Metashape `.xml`. For another format, Digi3D.AI displays “Digi3D.AI cannot load *file* from a URL.” with the list of supported formats.
* Digi3D.AI reads only tiled TIFF images over a URL. It does not convert remote images or create their pyramid levels.
* Digi3D.AI lists only Azure Blob Storage folders, and only to omit the Inpho, Summit and PhotoScan models whose images are not published. When loading a remote Inpho project with **Omit models for which no photo is available** enabled, a Summit project or a PhotoScan project, if Digi3D.AI cannot retrieve the blob listing, it shows every model and adds a notice to the Tasks pane.
* Digi3D.AI does not write to the server. The edits it makes while working with the project (orientations, `.metadata` files, model configuration) are saved in the local copy.
* Remote projects require an installed sensor that implements loading from a URL; in Digi3D.AI that is the conical camera sensor.
