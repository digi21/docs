# /activar-equipo
<!-- id: activar-equipo -->

La orden `/activar-equipo` activa el ordenador, para todos los usuarios de Windows, con un código de activación de licencias de software. La orden no muestra ventanas, no abre la interfaz de Digi3D.AI y termina el proceso de `Digi3D.exe` con un código de salida que indica el resultado.

Antes de ejecutar `/activar-equipo`, consulta [Activar ordenadores](../../../licencias-de-software/activar-ordenadores.md), que explica qué es un código de activación y cómo se obtiene.

## Sintaxis

```powershell
digi3d.exe /activar-equipo <código>
```

| Argumento | Descripción |
| --- | --- |
| `<código>` | Código de activación que ha entregado Digi21. Es el argumento que sigue inmediatamente a `/activar-equipo`. |

## Diferencias con las demás órdenes

* `/activar-equipo` se escribe con barra inicial y no distingue mayúsculas de minúsculas. Las órdenes [dibujo](dibujo/README.md), [foto](foto.md) y [proyecto](proyecto.md) y la opción `--ayuda` se escriben sin barra (la opción, con dos guiones) y distinguen mayúsculas de minúsculas.
* `/activar-equipo` no se combina con `dibujo`, `foto` ni `proyecto`. Si la línea de comandos contiene `/activar-equipo`, Digi3D.AI ejecuta solo esa orden y no analiza el resto de la línea: no abre ninguna ventana de dibujo ni fotogramétrica y no carga ningún proyecto.

## Requisitos

* El proceso tiene que ejecutarse con el grupo Administradores habilitado: abre la consola con **Ejecutar como administrador**. Si el grupo no está habilitado, la orden no envía ninguna petición a digi21.net y termina con el código 108.
* El ordenador necesita conexión a internet con digi21.net.

## Resultado

La orden escribe una línea de texto con el resultado, en el idioma de la interfaz de Digi3D.AI. Escribe en la salida estándar del proceso o, si el proceso no tiene salida estándar, en la consola del proceso que lo ha iniciado. Si el proceso no tiene salida estándar ni acceso a la consola del proceso padre, la orden no escribe nada. Cuando la salida está redirigida a un archivo o a una tubería, la orden escribe en UTF-8.

El código de salida del proceso indica el resultado. Los códigos de salida, del 100 al 109, están descritos en [Con la orden `/activar-equipo`](../../../licencias-de-software/activar-ordenadores.md#con-la-orden-activar-equipo). El código 100 indica que el ordenador queda activado para todos los usuarios de Windows.

## Ejemplo

Digi3D.AI es una aplicación de ventanas. Para esperar a que termine el proceso y leer su código de salida, ejecuta la orden con PowerShell abierto con **Ejecutar como administrador**:

```powershell
$proceso = Start-Process -FilePath 'C:\Ruta\de\instalación\Digi3D.exe' -ArgumentList '/activar-equipo', '<código>' -Wait -PassThru
$proceso.ExitCode
```

Sustituye la ruta del ejemplo por la ruta absoluta de `Digi3D.exe` y `<código>` por el código de activación. Para guardar el texto del resultado en un archivo, añade `-RedirectStandardOutput 'C:\Ruta\resultado.txt'` a `Start-Process`.
