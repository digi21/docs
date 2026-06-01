# bind

Indica que el archivo de dibujo a abrir en la ventana de dibujo es binario de doble precisión (con extensión .bind)

## Opciones posicionales obligatorias

| Nombre | Descripción                  |
| ------ | ---------------------------- |
| ruta   | Ruta al archivo .bin a abrir |

## Opciones&#x20;

Estos valores son opcionales, y si se especifican modifican el valor por defecto que tienen asignados.

| Opción                     | Descripción                                                                                                     | Valores aceptados                                                  |
| -------------------------- | --------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| --mdat                     | <p>Modelo de datos.</p><p>Esta opción es obligatoria si se especifica la opción --cconexion</p>                 | <p>CATDBS</p><p>GEOGRAPHICS</p>                                    |
| --cconexion                | Cadena de conexión                                                                                              | Cadena de conexión para el proveedor de bases de datos a utilizar. |
| --obviarArchivosReferencia | Si se indica, no se cargarán los archivos de referencia que pudiera tener vinculados el archivo .BIND a cargar. |                                                                    |

## Ejemplo

Para abrir un archivo de dibujo en formato binario de doble precisión c:\trabajo\archivo.bind con la tabla de códigos c:\trabajo\tabla.tab.xml y conectándose con una base de datos Access con extensión .accdb cuyo nombre coincide con el del archivo de dibujo y con el modelo de datos CATDBS:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind --mdat CATDBS --cconexion "Provider=Microsoft.ACE.OLEDB.16.0;Data Source=$(ArchivoDibujoConRutaSinExtension).accdb;Persist Security Info=False"
```
