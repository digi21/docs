# Macros

Algunas ventanas de texto de ciertos cuadros de diálogo admiten que se introduzcamos una macro en vez de un texto. El programa cuando sea necesario sustituirá esa macro dinámicamente por un valor calculado.

Por ejemplo: el campo [Destino de copias de seguridad](cuadros-de-dialogo/configuracion/copia-de-seguridad.md#destino-de-copias-de-seguridad) del cuadro de diálogo de Configuración admite que se introduzcan macros para permitir crear copias de seguridad cuyo nombre varíe en función de la fecha y hora.

A continuación, enumeramos las distintas macros existentes.

| Nombre | Se sustituye por... |
| :--- | :--- |
| $\(TablasDigiNG\) | Ruta a la tabla de códigos activa. |
| $\(Escritorio\) | Ruta del directorio _Escritorio_ del usuario actual. |
| $\(ArchivosDePrograma\) | Ruta del directorio _Archivos de programa_. |
| $\(DatosDeAplicacion\) | Ruta del directorio _Application Data._ |
| $\(Temp\) | Ruta del directorio _Temp_. |
| $\(NombreUsuario\) | Nombre del usuario de _Windows._ |
| $\(NombreOrdenador\) | Nombre del ordenador en la red. |
| $\(Fecha\) | Fecha actual. |
| $\(FechaSubrayados\) | Fecha actual sustituyendo las barras de dividir por subrayados. |
| $\(Dia\) | Número de día actual. |
| $\(Mes\) | Número de mes actual. |
| $\(Año\) | Año actual. |
| $\(HoraCompleta\) | Hora actual. |
| $\(HoraCompletaSubrayados\) | Hora actual sustituyendo los dos puntos por subrayados. |
| $\(Hora\) | Hora de la hora actual. |
| $\(Minutos\) | Minutos de la hora actual. |
| $\(Segundos\) | Segundos de la hora actual. |
| $\(DirectorioUsuario\) | Directorio local del usuario. |
| $\(DirectorioAyuda\) | Directorio indicado en el campo [Directorio de ayudas de códigos](cuadros-de-dialogo/configuracion/comunicacion-con-el-usuario.md#directorio-de-ayudas-de-codigos) del cuadro de diálogo de configuración.  |
| $\(RutaArchivoDibujo\) | Directorio donde está ubicado el archivo de dibujo actual \(sin incluir el nombre del archivo de dibujo\). |
| $\(ArchivoDibujoConRuta\) | Ruta completa del archivo de dibujo actual. |
| $\(ArchivoDibujoConRutaSinExtension\) | Ruta completa del archivo de dibujo actual, pero sin incluir su extensión. |
| $\(NombreArchivoDibujo\) | Nombre del archivo de dibujo actual incluyendo su extensión, pero sin incluir el directorio donde está ubicado. |
| $\(NombreArchivoDibujoSinExtension\) | Nombre del archivo de dibujo actual sin incluir ni extensión ni el directorio donde está ubicado. |
| $\(ExtensionArchivoDibujo\) | Extensión del archivo de dibujo actual. |

