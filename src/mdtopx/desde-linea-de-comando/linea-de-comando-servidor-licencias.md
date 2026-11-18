# Servidor de licencias
<!-- id: linea-de-comando-servidor-licencias -->

La orden `/servidor-licencias` guarda en el registro de Windows la dirección del servidor de licencias local que usa el ordenador, o borra esa dirección. La orden no muestra ventanas, no abre la interfaz de MDTopX y termina el proceso de `MDTopX.exe` con un código de salida que indica el resultado. A diferencia de las herramientas de cálculo de esta sección, la orden no lee el archivo de configuración de la línea de comando.

Antes de ejecutar `/servidor-licencias`, consulta [Servidor de licencias local](../../licencias-de-software/servidor-de-licencias.md), que explica qué es el servidor y en qué ordenadores hay que configurar su dirección.

## Sintaxis

```powershell
MDTopX.exe /servidor-licencias <dirección>
MDTopX.exe /servidor-licencias /quitar
```

| Argumento | Descripción |
| --- | --- |
| `<dirección>` | Dirección del servidor con el formato `http://servidor:puerto` o `https://servidor:puerto`, sin ruta. Es el argumento que sigue inmediatamente a `/servidor-licencias`. |
| `/quitar` | Borra la dirección guardada. |

La orden y `/quitar` no distinguen mayúsculas de minúsculas. Si la línea de comando contiene `/servidor-licencias` y no contiene `/activar-equipo`, MDTopX ejecuta únicamente `/servidor-licencias` y no analiza el resto de la línea. Si contiene también `/activar-equipo`, MDTopX ejecuta `/activar-equipo` y no ejecuta `/servidor-licencias`.

## Qué hace la orden

1. Comprueba el formato de la dirección. Si el formato no es válido, termina con el código 112 sin escribir en el registro.
2. Escribe la dirección en el valor de texto `ServidorLocal` de la clave `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\LicenciasDeSoftware` del registro de Windows (vista de 64 bits). Con `/quitar`, borra ese valor. Digi3D.AI, MDTopX y Topcal21 leen el mismo valor.
3. Con una dirección, consulta el servidor y comprueba que responde con un certificado válido. La orden guarda la dirección aunque el servidor no responda o su certificado no sea válido.

## Requisitos

El proceso tiene que ejecutarse con el grupo Administradores habilitado: abre la consola con **Ejecutar como administrador**. Si el grupo no está habilitado, la orden no escribe en el registro y termina con el código 113.

## Resultado

La orden escribe una línea de texto con el resultado, en el idioma de la interfaz de MDTopX. Escribe en la salida estándar del proceso o, si el proceso no tiene salida estándar, en la consola del proceso que lo ha iniciado. Si el proceso no tiene salida estándar ni acceso a la consola del proceso padre, la orden no escribe nada. Cuando la salida está redirigida a un archivo o a una tubería, la orden escribe en UTF-8.

El código de salida del proceso indica el resultado. Los códigos de salida, del 110 al 117, están descritos en [MDTopX y Topcal21](../../licencias-de-software/servidor-de-licencias.md#mdtopx-y-topcal21).

## Ejemplo

MDTopX es una aplicación de ventanas. Para esperar a que termine el proceso y leer su código de salida, ejecuta la orden con PowerShell abierto con **Ejecutar como administrador**:

```powershell
$proceso = Start-Process -FilePath 'C:\Ruta\de\instalación\MDTopX.exe' -ArgumentList '/servidor-licencias', 'http://servidor01:21021' -Wait -PassThru
$proceso.ExitCode
```

Sustituye la ruta del ejemplo por la ruta absoluta de `MDTopX.exe` y la dirección por la de tu servidor. Para borrar la dirección guardada, sustituye `'http://servidor01:21021'` por `'/quitar'`.
