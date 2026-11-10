# Project
<!-- id: proyecto -->
<!-- origen: 04f72811f85cc1e38ad48edabe46e53054f168b2 -->

The proyecto command loads a photogrammetric project file, or a project published at a URL.

## Required positional options

| Name | Description |
| --- | --- |
| ruta | Path to the file to load, or `http` or `https` URL of the project |

## Project published at a URL

Type the URL between quotation marks, because the authorization query contains the `&` character:

```powershell
digi3d.exe proyecto "https://cuenta.blob.core.windows.net/vuelos/vuelo1/vuelo1.d3dprj?sv=…&sr=c&sp=r&sig=…"
```

If the URL has a query, Digi3D.AI uses that query. If it has none, it uses the saved credential of that project. If there is neither, it opens the [Load a project from a URL](../cuadros-de-dialogo/cargar-proyecto-remoto.md) dialog with the URL in the **Project URL** field. See [Publishing a photogrammetric project in Azure Blob Storage and loading it from a URL](../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md).
