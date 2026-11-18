# Opciones de la línea de órdenes
<!-- id: topcal21-opciones-de-la-linea-de-ordenes -->

Puedes pasar parámetros a Topcal21 desde la línea de órdenes. Topcal21 acepta un nombre de archivo y dos órdenes de licencias de software, `/activar-equipo` y `/servidor-licencias`.

| Sintaxis | Descripción |
| --- | --- |
| `Topcal21.exe [archivo]` | Inicia Topcal21 y abre el archivo. |
| `Topcal21.exe /activar-equipo <código>` | Activa el ordenador, para todos los usuarios de Windows, con un código de activación de licencias de software. |
| `Topcal21.exe /servidor-licencias <dirección>` | Guarda la dirección del servidor de licencias local. |
| `Topcal21.exe /servidor-licencias /quitar` | Borra la dirección del servidor de licencias local. |

## Abrir un archivo

```powershell
Topcal21.exe c:\trabajo\proyecto.prt
```

Topcal21 abre el archivo que indicas, por ejemplo un proyecto (.PRT), un archivo de puntos (.PTS), de observaciones (.OBS) o de croquis (.CRQ), o un archivo de otro formato que Topcal21 sabe abrir. Si escribes la ruta con espacios, escríbela entre comillas.

Si no indicas ningún archivo, Topcal21 abre el último proyecto cuando la preferencia de abrir el último proyecto está activada y el archivo existe. Si no indicas ningún archivo y la preferencia está desactivada, no hay último proyecto o el archivo no existe, Topcal21 abre un proyecto vacío.

## Órdenes de licencias de software

Las órdenes `/activar-equipo` y `/servidor-licencias` no muestran ventanas, no abren la interfaz de Topcal21 y terminan el proceso de `Topcal21.exe` con un código de salida que indica el resultado. Se escriben con barra inicial y no distinguen mayúsculas de minúsculas. Si la línea de órdenes contiene `/activar-equipo`, Topcal21 ejecuta solo esa orden y no abre ningún archivo. Si contiene `/servidor-licencias` y no contiene `/activar-equipo`, ejecuta solo `/servidor-licencias`.

Las dos órdenes requieren que el proceso se ejecute con el grupo Administradores habilitado: abre la consola con **Ejecutar como administrador**. Cada orden escribe una línea de texto con el resultado, en el idioma de la interfaz de Topcal21, en la salida estándar del proceso o, si el proceso no tiene salida estándar, en la consola del proceso que lo ha iniciado.

Topcal21 es una aplicación de ventanas. Para esperar a que termine el proceso y leer su código de salida, ejecuta la orden con PowerShell abierto con **Ejecutar como administrador**:

```powershell
$proceso = Start-Process -FilePath 'C:\Ruta\de\instalación\Topcal21.exe' -ArgumentList '/activar-equipo', '<código>' -Wait -PassThru
$proceso.ExitCode
```

Sustituye la ruta del ejemplo por la ruta absoluta de `Topcal21.exe` y `<código>` por el código de activación.

### /activar-equipo

Sintaxis: `Topcal21.exe /activar-equipo <código>`. El código es el argumento que sigue inmediatamente a la orden. Si falta, la orden termina con el código 109. Los códigos de salida, del 100 al 109, están descritos en [Con la orden `/activar-equipo`](../licencias-de-software/activar-ordenadores.md#con-la-orden-activar-equipo). Para activar el ordenador necesitas conexión a internet con digi21.net.

### /servidor-licencias

Sintaxis: `Topcal21.exe /servidor-licencias <dirección>` o `Topcal21.exe /servidor-licencias /quitar`. La dirección tiene el formato `http://servidor:puerto` o `https://servidor:puerto`, sin ruta. Si indicas una dirección, la orden guarda la dirección en el valor `ServidorLocal` de la clave `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\LicenciasDeSoftware` del registro de Windows, que leen también Digi3D.AI y MDTopX, y consulta el servidor para comprobar que responde con un certificado válido. Si indicas `/quitar`, la orden borra el valor `ServidorLocal`. Los códigos de salida, del 110 al 117, están descritos en [MDTopX y Topcal21](../licencias-de-software/servidor-de-licencias.md#mdtopx-y-topcal21).
