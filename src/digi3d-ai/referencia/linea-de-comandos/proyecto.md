# Proyecto
<!-- id: proyecto -->

La orden proyecto carga un archivo de proyecto fotogramétrico, o un proyecto publicado en una URL.

## Opciones posicionales obligatorias

| Nombre | Descripción              |
| ------ | ------------------------ |
| ruta   | Ruta al archivo a cargar, o URL `http` o `https` del proyecto |

## Proyecto publicado en una URL

Escribe la URL entre comillas, porque la consulta de autorización contiene el carácter `&`:

```powershell
digi3d.exe proyecto "https://cuenta.blob.core.windows.net/vuelos/vuelo1/vuelo1.d3dprj?sv=…&sr=c&sp=r&sig=…"
```

Si la URL tiene consulta, Digi3D.AI usa esa consulta. Si no la tiene, usa la credencial guardada de ese proyecto. Si no hay ninguna de las dos, abre el cuadro de diálogo [Cargar un proyecto desde una URL](../cuadros-de-dialogo/cargar-proyecto-remoto.md) con la URL en el campo **URL del proyecto**. Consulta [Publicar un proyecto fotogramétrico en Azure Blob Storage y cargarlo desde una URL](../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md).

