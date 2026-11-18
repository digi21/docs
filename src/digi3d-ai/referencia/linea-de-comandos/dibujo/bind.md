# bind
<!-- id: bind -->

La suborden bind indica que el archivo de dibujo a abrir en la ventana de dibujo es binario de doble precisión (con extensión .bind).

## Opciones posicionales obligatorias

| Nombre | Descripción                   |
| ------ | ----------------------------- |
| ruta   | Ruta al archivo .bind a abrir |

Con la interfaz en inglés, esta opción posicional se llama `path`.

## Opciones

Si especificas una de estas opciones, el valor que indiques sustituye al valor por defecto de esa opción.

| Opción con la interfaz en español | Opción con la interfaz en inglés | Descripción | Valores aceptados |
| --- | --- | --- | --- |
| --mdat | --datamodel | Modelo de datos.<br>Es obligatoria si especificas la opción de la cadena de conexión (`--cconexion` o `--connstring`) | CATDBS<br>GEOGRAPHICS |
| --cconexion | --connstring | Cadena de conexión | Cadena de conexión para el proveedor de bases de datos a utilizar. |
| --obviarArchivosReferencia | --avoidrf | Si se indica, no se cargarán los archivos de referencia que pudiera tener vinculados el archivo .BIND a cargar. | |

## Ejemplo

Ejecuta la siguiente orden para abrir un archivo de dibujo en formato binario de doble precisión c:\trabajo\archivo.bind con la tabla de códigos c:\trabajo\tabla.tab.xml y conectándose con una base de datos Access con extensión .accdb cuyo nombre coincide con el del archivo de dibujo y con el modelo de datos CATDBS, con la interfaz en español:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind --mdat CATDBS --cconexion "Provider=Microsoft.ACE.OLEDB.16.0;Data Source=$(ArchivoDibujoConRutaSinExtension).accdb;Persist Security Info=False"
```
