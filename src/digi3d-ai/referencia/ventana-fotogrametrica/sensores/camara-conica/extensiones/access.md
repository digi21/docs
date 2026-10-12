# Access
<!-- id: access -->

La extensión **Access** lee las orientaciones exteriores de una tabla de una base de datos de Microsoft Access (`.mdb` o `.accdb`).

## Archivo de aerotriangulación

En el campo **Archivo de aerotriangulación**, selecciona el tipo **Bases de datos Microsoft Access** (`*.mdb;*.accdb`). La extensión solo lee archivos con extensión `.mdb` o `.accdb`.

Digi3D.AI abre la base de datos con el proveedor OLE DB `Microsoft.ACE.OLEDB.16.0`, que debe estar instalado en el equipo.

La base de datos no contiene la calibración de la cámara. Indica un archivo de cámara en el modelo o selecciónalo cuando Digi3D.AI lo pida (consulta [Cámara](../README.md#cámara)).

La extensión no proporciona orientación absoluta.

## Tabla y campos

La categoría [Importador de orientaciones de Access](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/README.md) de la configuración indica la tabla y los campos de los que se leen las orientaciones:

| Opción | Valor por defecto | Contenido del campo |
|---|---|---|
| [Tabla](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/tabla.md) | `EXTERIOR ORIENTATION` | Tabla con las orientaciones. |
| [Imagen](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/imagen.md) | `FICHERO` | Nombre de la imagen. |
| [X](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/x.md), [Y](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/y.md), [Z](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/z.md) | `XL`, `YL`, `ZL` | Coordenadas del centro de proyección. |
| [Omega](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/omega.md), [Phi](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/phi.md), [Kappa](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/kappa.md) | `OM`, `PHI`, `K` | Giros. |

En la misma categoría:

* [Nombre de la imagen con extensión](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/nombre-de-la-imagen-con-extension.md): con **Sí**, Digi3D.AI busca el nombre del archivo de imagen con extensión (`107.tif`); con **No**, sin extensión (`107`). El valor por defecto es **No**.
* [Unidades de los giros](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/unidades-de-los-giros.md): **Radianes**, **Sexagesimal** o **Centesimal**. El valor por defecto es **Sexagesimal**.
* [Orden de los giros](../../../../cuadros-de-dialogo/configuracion/importador-de-orientaciones-de-access/orden-de-los-giros.md): orden con el que se construye la matriz de rotación. El valor por defecto es **Omega-Phi-Kappa**.

Para cada imagen del modelo, Digi3D.AI ejecuta la consulta `SELECT [X], [Y], [Z], [Omega], [Phi], [Kappa] FROM [Tabla] WHERE [Imagen] LIKE 'nombre'`, con los nombres de campo configurados, y usa el primer registro que devuelve.

## Sistema de referencia de coordenadas

La extensión lee el sistema del archivo `.prj` con el mismo nombre que la base de datos (`vuelo.prj` para `vuelo.mdb`). Si el `.prj` no existe, Digi3D.AI muestra el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal). La extensión no pregunta por el sistema vertical.

## Mensajes de error

* «Se localizó el siguiente error: *error*»: el acceso a la base de datos devuelve un error, por ejemplo porque la tabla o un campo configurados no existen.
* «No se localizó la orientación de la imagen: *imagen*»: la consulta no devuelve ningún registro para la imagen izquierda o para la imagen derecha del modelo.
