# /eliminar-activacion-equipo
<!-- id: eliminar-activacion-equipo -->

La orden `/eliminar-activacion-equipo` elimina del ordenador la activación de licencias de software de Digi3D.AI para todos los usuarios de Windows, la que crea la orden [/activar-equipo](activar-equipo.md). La orden no muestra ventanas, no abre la interfaz de Digi3D.AI y termina el proceso de `Digi3D.exe` con un código de salida que indica el resultado.

El botón **Usar la llave HASP** del cuadro de diálogo [Licencias de software](../cuadros-de-dialogo/licencias-de-software.md#volver-a-la-llave-de-protección) ejecuta esta orden con permisos de administrador cuando el ordenador tiene una activación para todos los usuarios de Windows.

## Sintaxis

```powershell
digi3d.exe /eliminar-activacion-equipo
```

La orden no tiene argumentos.

## Qué elimina

* La carpeta `%ProgramData%\Digi21.LicenciasDeSoftware\digi3d`, con la autorización de uso (`token.jwt`) y el estado del reloj (`reloj.json`). La orden no sigue uniones (*junctions*) ni enlaces simbólicos y no modifica el contenido de los archivos con enlaces duros. Conserva la carpeta `%ProgramData%\Digi21.LicenciasDeSoftware`, que comparten Digi3D.AI, MDTopX y Topcal21, salvo que esa carpeta sea un punto de reanálisis o su propietario no sea el grupo Administradores ni SYSTEM: en ese caso la elimina con todo su contenido.
* La clave criptográfica del ordenador `Digi21.Licencias.digi3d.equipo`, del módulo de plataforma segura (TPM) y del proveedor de claves de software.

La orden no elimina las activaciones de cada usuario de Windows ni avisa a digi21.net: la plaza que ocupaba el ordenador en la licencia sigue ocupada hasta que termine la activación o Digi21 la revoque. Consulta [Número de ordenadores de una licencia](../../../licencias-de-software/activar-ordenadores.md#número-de-ordenadores-de-una-licencia).

## Diferencias con las demás órdenes

* `/eliminar-activacion-equipo` se escribe con barra inicial y no distingue mayúsculas de minúsculas. Las órdenes [dibujo](dibujo/README.md), [foto](foto.md) y [proyecto](proyecto.md) y la opción `--ayuda` se escriben sin barra (la opción, con dos guiones) y distinguen mayúsculas de minúsculas.
* `/eliminar-activacion-equipo` no se combina con otras órdenes. Si la línea de comandos contiene `/eliminar-activacion-equipo`, Digi3D.AI ejecuta solo esa orden y no analiza el resto de la línea. Si la línea contiene también `/activar-equipo`, Digi3D.AI ejecuta solo `/activar-equipo`.

## Requisitos

El proceso tiene que ejecutarse con el grupo Administradores habilitado: abre la consola con **Ejecutar como administrador**. Si el grupo no está habilitado, la orden no elimina nada y termina con el código 108. La orden no necesita conexión a internet.

## Resultado

La orden escribe una línea de texto con el resultado, en el idioma de la interfaz de Digi3D.AI. Escribe en la salida estándar del proceso o, si el proceso no tiene salida estándar, en la consola del proceso que lo ha iniciado. Si el proceso no tiene salida estándar ni acceso a la consola del proceso padre, la orden no escribe nada. Cuando la salida está redirigida a un archivo o a una tubería, la orden escribe en UTF-8.

El código de salida del proceso indica el resultado, con el mismo significado que en `/activar-equipo`:

| Código | Significado |
| --- | --- |
| 100 | La activación para todos los usuarios de Windows se ha eliminado, o el ordenador no la tenía. |
| 107 | Windows ha devuelto un error al borrar un archivo, una carpeta o la clave del ordenador; puede quedar parte de la activación. |
| 108 | La orden requiere permisos de administrador. No se ha eliminado nada. |

## Ejemplo

Digi3D.AI es una aplicación de ventanas. Para esperar a que termine el proceso y leer su código de salida, ejecuta la orden con PowerShell abierto con **Ejecutar como administrador**:

```powershell
$proceso = Start-Process -FilePath 'C:\Ruta\de\instalación\Digi3D.exe' -ArgumentList '/eliminar-activacion-equipo' -Wait -PassThru
$proceso.ExitCode
```

Sustituye la ruta del ejemplo por la ruta absoluta de `Digi3D.exe`. Para guardar el texto del resultado en un archivo, añade `-RedirectStandardOutput 'C:\Ruta\resultado.txt'` a `Start-Process`.
