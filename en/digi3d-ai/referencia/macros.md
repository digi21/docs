# Macros
<!-- id: macros -->
<!-- origen: f4d898bc9ef6b37664417336ec7cd00883ed2d5f -->

Some dialog text fields accept a macro instead of text. When the program needs a field's value, it replaces its macros with calculated values.

You can also modify a macro's result by calling one of these functions after it:

* [Left()](macros/left.md)
* [Right()](macros/right.md)
* [Substring()](macros/substring.md)

For example, [Destination for backup copies](cuadros-de-dialogo/configuracion/copia-de-seguridad/destino-de-copias-de-seguridad.md) in Configuration accepts macros to create backups whose names vary with the date and time.

| Name | Replaced with... |
| --- | --- |
| $(TablasDigiNG) | Path to the active codes table. |
| $(Escritorio) | Current user's _Desktop_ directory path. |
| $(ArchivosDePrograma) | _Program Files_ directory path. |
| $(DatosDeAplicacion) | _Application Data_ directory path. |
| $(Temp) | _Temp_ directory path. |
| $(NombreUsuario) | _Windows_ user name. |
| $(NombreOrdenador) | Computer's network name. |
| $(Fecha) | Current date. |
| $(FechaSubrayados) | Current date with underscores instead of slashes. |
| $(Dia) | Current day number. |
| $(Mes) | Current month number. |
| $(Año) | Current year. |
| $(HoraCompleta) | Current time. |
| $(HoraCompletaSubrayados) | Current time with underscores instead of colons. |
| $(Hora) | Hour component of the current time. |
| $(Minutos) | Minutes of the current time. |
| $(Segundos) | Seconds of the current time. |
| $(DirectorioUsuario) | User's local directory. |
| $(DirectorioAyuda) | Directory specified in [Code help directory](cuadros-de-dialogo/configuracion/comunicacion-con-el-usuario/directorio-de-ayudas-de-codigos.md) in the configuration dialog. |
| $(RutaArchivoDibujo) | Current drawing file's directory, without the drawing file name. |
| $(ArchivoDibujoConRuta) | Current drawing file's full path. |
| $(ArchivoDibujoConRutaSinExtension) | Current drawing file's full path without its extension. |
| $(NombreArchivoDibujo) | Current drawing file's name including its extension, without its directory. |
| $(NombreArchivoDibujoSinExtension) | Current drawing file's name without its extension or directory. |
| $(ExtensionArchivoDibujo) | Current drawing file's extension. |
| $(CodigoCentroide) | Code of the centroid belonging to the topological polygon being stored. |
| $(TextoCentroide) | Text of the centroid belonging to the topological polygon being stored. |
