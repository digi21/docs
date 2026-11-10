# Load a project from a URL
<!-- id: cargar-proyecto-remoto -->
<!-- origen: 8743148ba91886525257824c6529cf7a03eae350 -->

This dialog loads a photogrammetric project published at a URL (the address of a resource on the network) into the [Photogrammetric project](../paneles/proyecto-fotogrametrico.md) pane. It also changes the authorization of a remote project that is already loaded.

The project can be published in Azure Blob Storage or on any HTTP or HTTPS server that answers byte-range requests (the `Range` header). See [Publishing a photogrammetric project in Azure Blob Storage and loading it from a URL](../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md) for which files to upload to the server and how to generate the authorization.

## Opening the dialog

The dialog opens in three ways:

* Click the arrow of the **Load** split button on the [Photogrammetric project](../paneles/proyecto-fotogrametrico.md) pane and select **Load project from a URL...**. The dialog opens with empty fields. The command is disabled if no installed sensor can load projects from a URL, and requires the photogrammetry license module when executed.
* Click the arrow of the **Load** button and select **Renew authorization (SAS)...**. The dialog opens in [renewal mode](#authorization-renewal-mode). The command is enabled only with a remote project loaded.
* Load a URL that has no authorization query and no saved credential from the command line (`proyecto` subcommand) or by opening a drawing file that has an associated remote project. Digi3D.AI opens the dialog with that URL in the **Project URL** field. Python's [open_project](../../programacion/python/referencia/digi3d/functions.md#open_project) does not open this dialog.

## Fields

* **Project URL, with its shared access signature (SAS)**: the URL of the project file, followed by the authorization query if the server requires one. In Azure Blob Storage, the shared access signature (SAS) is the part of the URL that starts with `?` and authorizes access to the container without using the account key. Digi3D.AI removes the blank spaces at the start and end of the text. The URL must meet these conditions:
  * It starts with `http://` or `https://`.
  * The last segment of its path, without the query, has the extension `.d3dprj` (Digi3D.AI project), `.prj` (Inpho project), `.smtxml` (Summit project) or `.xml` (PhotoScan or Metashape project).
  * Its query does not contain `sr=b`. That parameter limits the SAS to a single object (*blob*) of Azure Blob Storage, and a project needs access to several files.

  If the server requires no authorization, type the URL without a query.
* **Images URL (leave empty if the images are in the folder of the project)**: the URL of the folder that contains the images, with its own SAS if the server requires one. Leave it empty if the images are published in the project file folder or in folders below it. If it is not empty, it starts with `http://` or `https://` and its query cannot contain `sr=b` either. See [how the URL of each image is calculated](../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md#how-the-url-of-each-image-is-calculated).
* **Extension of the published images**: drop-down list with the extension the images have on the server. It has two fixed items:
  * **Image extension specified in the project**: Digi3D.AI keeps the extension of each image path in the project. This is the default value.
  * **.tif**: Digi3D.AI replaces the extension of each image path with `.tif`, or adds it if the path has no extension.

  If the saved credential of the project uses another extension, the list adds that extension as a third item and selects it.
* **Local folder of the project**: read-only field that shows the folder of the computer where Digi3D.AI saves the local copy of the project. Digi3D.AI updates the field each time the text of **Project URL** changes, without accessing the network. The field stays empty if that text is not a URL. The folder has the form `%LOCALAPPDATA%\Digi3D.NET\Proyectos remotos\<project file name without extension>-<16 hexadecimal digits>`; the 16 digits depend on the URL without the query.
* **Open**: opens the local folder in File Explorer. It is disabled while **Local folder of the project** is empty. If the folder does not exist yet, Digi3D.AI displays “The local folder does not exist yet. Digi3D creates it when it downloads the project.”
* **OK**: checks the fields and closes the dialog if all validations pass. See [Validations](#validations) and [What happens on OK](#what-happens-on-ok).
* **Cancel**: closes the dialog without loading or saving anything.

## Validations

When you click **OK**, Digi3D.AI checks the fields in this order. At the first check that fails, it displays a warning message, keeps the dialog open and puts the cursor in **Project URL**:

1. “The project URL must start with http:// or https://.”
2. “The project file must have the extension .d3dprj, .prj, .smtxml or .xml.”
3. “The images URL must start with http:// or https://.” Checked only if **Images URL** is not empty.
4. “The shared access signature (SAS) contains sr=b, which limits access to one object (blob) in Azure Blob Storage. Replace the query containing sr=b in the project URL or images URL with a SAS for the container or directory that holds the project and images, with read permission (sp=r).”

## What happens on OK

When you click **OK** after opening the dialog with **Load project from a URL...**, Digi3D.AI downloads or revalidates the project in the local folder and loads it into the [Photogrammetric project](../paneles/proyecto-fotogrametrico.md) pane. If Digi3D.AI cannot load the project, it does not change the saved credential.

When Digi3D.AI loads the project, it saves the project credential in the registry of the current _Windows_ user. A credential contains the project and images URLs, both without a query, and the published image extension, and the authorization query of each URL encrypted with DPAPI (the _Windows_ Data Protection API) for that user. The next time you load the same project without typing the query, Digi3D.AI uses the saved credential. See [Authorization and saved credentials](../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md#authorization-and-saved-credentials).

## Authorization renewal mode

With **Renew authorization (SAS)...**, the dialog title is “Renew the authorization (SAS) of the remote project”. The **Project URL**, **Images URL** and **Extension of the published images** fields show the values of the saved credential, without the authorization queries. Type the URL with the new query and, if the images have their own query, the images URL with its new query.

In addition to the [validations](#validations), this mode checks that **Project URL**, without the query, identifies the project loaded in the pane. If it does not, Digi3D.AI displays “The URL does not belong to the loaded project *URL*. To load another project, use ‘Load project from a URL...’.” and keeps the dialog open.

When you click **OK** in this mode, Digi3D.AI does not download any file or modify the local copy. It performs these operations:

* Saves the credential with the new queries.
* Uses the new queries in the following requests to the containers or servers of the project and the images.
* Invalidates the results of the file existence checks made with the previous authorization.
* Allows Digi3D.AI to display again the “Remote project: authorization rejected” warning for that container.
* Displays “The authorization (SAS) of the project *URL* has been renewed.”

<details>
<summary>Where it is stored</summary>

Digi3D.AI saves one credential per project in a subkey of the current user's _Windows_ registry. The subkey values are not in the Digi3DNET.db file.

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration\ProyectosRemotos\<hash>` |
| :--- | :--- |
| Name of the `<hash>` subkey | The 16 hexadecimal digits (64-bit FNV-1a) of the project URL without the query. |
| `UrlProyecto`, `UrlImagenes`, `ExtensionImagenes` | Strings without the authorization query. |
| `ConsultaProyectoCifrada`, `ConsultaImagenesCifrada` | Authorization query encrypted with DPAPI for the current _Windows_ user, in base64. |

</details>
