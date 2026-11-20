# Servidor de licencias local
<!-- id: servidor-de-licencias -->

El servidor de licencias local es un servicio de Windows que reparte las [sesiones simultáneas](sesiones-simultaneas.md) de una licencia entre los ordenadores de la red de una organización. Los ordenadores piden la sesión al servidor de la red local en lugar de pedirla a digi21.net. Esta página va dirigida al servicio informático que instala y administra el servidor.

El servidor atiende las licencias que Digi21 configura en modo «servidor de licencias local». Para cada licencia, el servidor concede como máximo el número de sesiones simultáneas de la licencia. El servidor se conecta con digi21.net para activarse y para renovar cada hora su certificado, y no necesita conexión con digi21.net para conceder cada sesión.

## Requisitos

* Un ordenador con Windows de 64 bits: Windows 10, Windows Server 2016 o una versión posterior.
* Una cuenta del grupo Administradores del servidor, para instalar el servidor y ejecutar sus órdenes.
* Acceso del servidor mediante el protocolo seguro de transferencia de hipertexto (HTTPS), por el puerto 443 del protocolo de control de transmisión (TCP), a `https://www.digi21.net`, para activar el servidor y renovar su certificado.
* Que los ordenadores cliente puedan conectarse por TCP al puerto del servidor (21021 de forma predeterminada).
* El instalador del servidor (consulta [Obtener el instalador](#obtener-el-instalador)) y un código de activación del servidor de licencias, que entrega Digi21. Digi21 configura la licencia en modo «servidor de licencias local» antes de que actives el servidor. Un código de activación de ordenadores no activa el servidor.
* Un solo servidor activo por licencia. Un servidor puede atender varias licencias del mismo titular, por ejemplo la de Topcal21 y la de MDTopX, activándolo con el código de cada licencia.
* En los ordenadores cliente, una versión de Digi3D.AI, MDTopX o Topcal21 que admita sesiones simultáneas, con la licencia activada en el ordenador (consulta [Activar ordenadores](activar-ordenadores.md)).

## Instalación

### Obtener el instalador

Descarga el instalador firmado (un archivo MSI de Windows Installer) en el idioma que prefieras. Los dos instaladores instalan el mismo servicio. El idioma elegido determina el idioma de los textos del instalador y el de los nombres visibles del servicio, de la regla del cortafuegos y de la aplicación instalada (por ejemplo, «Servidor de licencias de Digi21» en el instalador en español y «Digi21 License Server» en el instalador en inglés).

* Español: [SetupServidorLicencias_es-ES.msi](https://digi21.blob.core.windows.net/download/SetupServidorLicencias_es-ES.msi)
* Inglés: [SetupServidorLicencias_en-US.msi](https://digi21.blob.core.windows.net/download/SetupServidorLicencias_en-US.msi)

El instalador también está en el menú **Descargas** de [www.digi21.net](https://www.digi21.net) con el nombre **Servidor de licencias**.

### Instalación interactiva

1. Inicia sesión en el servidor con una cuenta del grupo Administradores.
2. Copia el instalador (`SetupServidorLicencias_es-ES.msi` o `SetupServidorLicencias_en-US.msi`) al servidor y ejecútalo con doble clic.
3. Marca la casilla de aceptación de la licencia y pulsa **Instalar**. El instalador usa el puerto 21021. Si ya había una versión instalada, usa el puerto de esa instalación.
4. Comprueba que el servicio está en ejecución con PowerShell:

```powershell
Get-Service Digi21ServidorLicencias
```

Para usar otro puerto, instala con la línea de órdenes que se describe a continuación.

### Instalación desatendida

Ejecuta en una consola abierta con **Ejecutar como administrador**:

```powershell
msiexec /i "C:\Instaladores\SetupServidorLicencias_es-ES.msi" /qn PUERTO=21021
```

* `PUERTO` es el puerto TCP del servidor y tiene que estar entre 1 y 65535, ambos incluidos; si no lo está, la instalación se detiene con un mensaje. Si omites `PUERTO`, el instalador usa el de la instalación anterior y, si no existe, 21021.
* `/qn` instala sin interfaz. Añade `/l*v C:\Temp\instalacion.log` para guardar un registro de la instalación.
* Para cambiar el puerto de un servidor instalado, ejecuta de nuevo la orden con el valor nuevo de `PUERTO`. El instalador actualiza la reserva de la dirección, las reglas del cortafuegos y el valor de registro `Puerto`.

## Qué instala el instalador del servidor

* **Programa:** `C:\Program Files\Digi21\ServidorLicencias\Digi21.ServidorLicencias.exe`, con las bibliotecas de Visual C++ que necesita. El mismo ejecutable funciona como servicio de Windows y como programa de línea de órdenes de administración.
* **Servicio de Windows «Servidor de licencias de Digi21»** («Digi21 License Server» con el instalador en inglés; nombre interno `Digi21ServidorLicencias` en ambos instaladores):
  * Inicio automático diferido: Windows lo inicia después de los servicios de inicio automático normales, poco después de terminar el arranque del sistema.
  * Cuenta virtual `NT SERVICE\Digi21ServidorLicencias`, que no tiene contraseña.
  * El instalador lo inicia al terminar y lo detiene durante la actualización y la desinstalación.
  * Si el servicio falla o se detiene con un error, Windows lo reinicia un minuto después. El contador de fallos vuelve a cero tras un día sin fallos.
* **Reserva de la dirección** `http://+:<puerto>/` a nombre de la cuenta del servicio, que cubre la comunicación con los programas y el panel web.
* **Reglas de entrada del Firewall de Windows** «Servidor de licencias de Digi21 (TCP)» («Digi21 License Server (TCP)» con el instalador en inglés) para el puerto TCP del servidor: una regla para el perfil de red de dominio y otra para el perfil privado. Cada regla solo admite conexiones desde la subred local. Ninguna regla cubre el perfil público.
* **Carpeta de datos** `C:\ProgramData\Digi21.ServidorLicencias`, con acceso del sistema (SYSTEM), del grupo Administradores y de la cuenta del servicio, y sin acceso para los usuarios estándar:
  * `certificado.jwt`: certificado del servidor que emite digi21.net.
  * `generacion.dat` y `reloj.json`: datos de renovación del servidor y de su reloj interno.
  * `sesiones.json`: sesiones abiertas, que el servicio guarda al detenerse y recupera al iniciarse.
  * `servicio.log`: registro del servicio. Cuando supera 1 MiB, el servicio lo renombra a `servicio.log.1`, sustituyendo el anterior, y empieza uno nuevo. Registra el inicio y la parada del servicio, las órdenes de administración, las liberaciones desde el panel y los errores. El servicio escribe el registro siempre en español.
* **Valor de registro** `Puerto` en `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\ServidorLicencias` (vista de 64 bits), que lee el servicio al iniciarse. Para cambiar el puerto, ejecuta de nuevo el instalador con `PUERTO`.

El servicio guarda su clave criptográfica en el módulo de plataforma segura (TPM) del servidor si el servidor tiene uno; si no, la guarda en el proveedor de claves de software de Windows. La línea «Clave del servidor abierta en el proveedor …» de `C:\ProgramData\Digi21.ServidorLicencias\servicio.log`, que el servicio escribe al iniciarse, indica si la clave está en el TPM («del TPM») o en el proveedor de claves de software de Windows («de software»).

## Activar el servidor

El servidor concede sesiones cuando está activado. Activa el servidor con el código que entrega Digi21:

1. Abre en el servidor una consola de PowerShell con **Ejecutar como administrador**.
2. Ejecuta la orden `activar` con el código de activación del servidor:

```powershell
& 'C:\Program Files\Digi21\ServidorLicencias\Digi21.ServidorLicencias.exe' activar <código>
```

3. Comprueba que la orden escribe «El servidor se ha activado.» y que `$LASTEXITCODE` vale 100.
4. Ejecuta la orden `estado` y comprueba que el estado es **Activo** y que la lista de licencias muestra las licencias del código.

El servidor envía a digi21.net el código, el nombre del servidor y un identificador de su hardware. Para atender otra licencia del mismo titular, ejecuta `activar` con el código de esa licencia; el servidor sigue atendiendo las licencias que ya tenía.

Las respuestas posibles de `activar` están en la tabla de [códigos de salida](#códigos-de-salida).

## Órdenes de administración

Las órdenes se ejecutan en el propio servidor, con una consola abierta con **Ejecutar como administrador**. Si la consola no tiene permisos de administrador, la orden termina con el código 108. Las órdenes envían la petición al servicio a través de una conexión local, así que el servicio tiene que estar iniciado. Los mensajes están en español si el idioma de la interfaz de Windows es el español y en inglés en los demás casos.

Sintaxis: `Digi21.ServidorLicencias.exe <orden>`

| Orden | Qué hace |
| --- | --- |
| `activar <código>` | Activa el servidor en digi21.net con un código de activación del servidor de licencias. |
| `renovar` | Renueva ahora el certificado del servidor con digi21.net. |
| `estado` | Muestra el nombre del equipo, la versión, el estado del servidor, las fechas del certificado, el último intento de renovación y, para cada licencia, las plazas en uso y el máximo. |
| `sesiones` | Muestra las sesiones abiertas: identificador de la sesión, licencia, ordenador, usuario de Windows, programa, sesión de Windows, proceso, dirección IP, fecha de alta, fecha de la última renovación y segundos de vigencia restante. |
| `liberar <sesión>` | Cierra las sesiones de la misma licencia que comparten con la sesión indicada la huella de la clave del cliente, la huella del hardware y la sesión de Windows, y deja libre su plaza. El identificador de la sesión es el que muestra `sesiones`. |
| `desactivar [--si]` | Borra el certificado, los datos de renovación y las sesiones del servidor, que queda sin activar. Sin `--si`, pide confirmación: las respuestas afirmativas son `s`, `si` y `sí` si el idioma de la interfaz de Windows es el español, y `y` y `yes` en los demás casos. La orden no comunica la desactivación a digi21.net; la activación del servidor permanece registrada en digi21.net. |
| `--ayuda` | Muestra la ayuda de las órdenes. |

Ejemplo de la salida de `estado` con un servidor activado:

```text
Equipo: SERVIDOR01
Versión: <versión>
Estado: Activo
Caducidad del certificado: <fecha y hora>
Emisión del certificado (última activación o renovación correcta): <fecha y hora>
Último intento de renovación desde que se inició el servicio: <fecha y hora> El certificado se ha renovado.
Licencias:
  <identificador de la licencia>: 12 de 20 plazas en uso
```

Los estados que muestran `estado` y el panel son: **Activo**, **No activado**, **Certificado caducado** (el servidor no concede sesiones hasta que una renovación con digi21.net se complete) y **Revocado por digi21.net** (el servidor no concede sesiones hasta que lo actives de nuevo con `activar`).

### Códigos de salida

| Código | Significado |
| --- | --- |
| 100 | La orden ha terminado correctamente. Con `activar`, el servidor se ha activado. Con `renovar`, el certificado se ha renovado. |
| 101 | `activar`: digi21.net no ha aceptado el código. El código no es válido, ha caducado o se ha revocado; no es un código de activación del servidor de licencias; o su licencia no está en modo «servidor de licencias local» o ha terminado. |
| 102 | `activar`: la licencia no admite activaciones desde la dirección IP pública del servidor. |
| 103 | `activar`: la licencia ya tiene otro servidor de licencias activo que ha renovado su certificado en los últimos 7 días. |
| 107 | Error. Cualquier resultado distinto de los anteriores: orden no reconocida, ejecución sin argumentos, servicio no iniciado, error de comunicación con el servicio, `renovar` que no obtiene un certificado nuevo, `liberar` con una sesión que no existe, `desactivar` cancelado, o `activar` con un resultado no incluido en 101 a 103. |
| 108 | La consola no tiene permisos de administrador. |

La orden escribe el motivo del código 107. Los motivos más habituales de `activar` y de `renovar` son los siguientes (HTTP es el protocolo de transferencia de hipertexto):

* «No se ha recibido respuesta de digi21.net o ha respondido con un error HTTP 5xx. Compruebe la conexión a internet del servidor.»
* «digi21.net ha rechazado la petición por exceso de peticiones (HTTP 429). Espere un minuto y vuelva a intentarlo.»
* «digi21.net ha respondido program_not_licensed: la licencia del código no se puede usar con un servidor de licencias local.»
* `renovar`: «El servidor no está activado.»
* `renovar`: «digi21.net ha revocado este servidor (invalid_grant). Para volver a usarlo, ejecute «activar <código>».»
* `renovar`: «digi21.net ha respondido server_cloned: otra copia de este servidor ha renovado el certificado. El servicio ha cancelado la renovación automática programada; para volver a activarlo, ejecute «activar <código>».» (consulta [El aviso «server_cloned»](#el-aviso-server_cloned))

## Panel web

El servicio incluye un panel web de administración en `http://<servidor>:<puerto>/`, por ejemplo `http://servidor01:21021/`. Desde el propio servidor también está en `http://localhost:21021/` si el puerto es el predeterminado.

* El panel usa la autenticación integrada de Windows. Solo pueden usarlo las cuentas que son miembros del grupo Administradores del servidor. El navegador puede pedir el nombre de usuario y la contraseña de una de esas cuentas. Una cuenta que no es del grupo recibe la respuesta «Acceso denegado».
* El servidor atiende el panel por HTTP, sin cifrado.
* El panel se muestra en español si el navegador prefiere el español y en inglés en los demás casos. El panel no se actualiza automáticamente: vuelve a cargar la página para ver el estado actual. El botón **Ayuda** de la cabecera abre la página de documentación «Servidor de licencias local».

El panel muestra:

* **Estado del servidor:** equipo, versión, estado, caducidad del certificado, última activación o renovación correcta (emisión del certificado) y último intento de renovación desde que se inició el servicio, con su resultado.
* **Avisos:** una respuesta `server_cloned` de digi21.net, y que la línea de órdenes no está disponible (consulta [Solución de problemas](#solución-de-problemas)).
* **Licencias:** una fila por licencia del certificado, con el identificador de la licencia, el máximo de plazas y las plazas en uso.
* **Sesiones:** una fila por sesión abierta, con la licencia, el equipo, el usuario de Windows, el programa, la sesión de Windows, la dirección IP, la fecha de alta, la última renovación y los segundos de vigencia restante.

El botón **Liberar** de cada sesión hace lo mismo que la orden `liberar`: cierra las sesiones de la misma licencia que comparten la huella de la clave del cliente, la huella del hardware y la sesión de Windows con la sesión seleccionada, y deja libre su plaza. Si el programa sigue abierto, vuelve a pedir una plaza en su siguiente renovación (cada 60 segundos).

## Configurar los ordenadores cliente

Cada ordenador cliente necesita la dirección del servidor, que se guarda en el valor de texto `ServidorLocal` de la clave `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\LicenciasDeSoftware` del registro de Windows (vista de 64 bits). La dirección tiene el formato `http://servidor:puerto` o `https://servidor:puerto`, sin ruta. Escribe siempre el puerto del servidor. Digi3D.AI, MDTopX y Topcal21 leen el mismo valor, así que un ordenador con varios de esos programas solo necesita configurarlo una vez.

Se necesitan permisos de administrador en cada ordenador cliente para escribir ese valor.

### MDTopX y Topcal21

Ejecuta en una consola abierta con **Ejecutar como administrador**:

```powershell
$proceso = Start-Process -FilePath 'C:\Program Files\Digi21\Topcal21\Topcal21.exe' -ArgumentList '/servidor-licencias', 'http://servidor01:21021' -Wait -PassThru
$proceso.ExitCode
```

La ruta del ejemplo es solo un ejemplo: sustitúyela por la ruta del ejecutable instalado.

La orden `/servidor-licencias <dirección>` escribe la dirección en el registro y consulta el servidor para comprobar que responde con un certificado válido. Para borrar la configuración, usa `/servidor-licencias /quitar`. La orden y `/quitar` no distinguen mayúsculas de minúsculas. La orden no muestra ninguna ventana y escribe una línea de texto con el resultado en la salida estándar del proceso o, si el proceso no tiene salida estándar, en la consola del proceso que lo ha iniciado. MDTopX.exe admite las mismas órdenes. Si la dirección no tiene un formato válido, la orden termina con el código 112 antes de comprobar los permisos de administrador. La página de cada programa describe la orden con más detalle: [MDTopX](../mdtopx/desde-linea-de-comando/linea-de-comando-servidor-licencias.md) y [Topcal21](../topcal21/opciones-de-la-linea-de-ordenes.md).

| Código | Significado |
| --- | --- |
| 110 | Dirección configurada. El servidor responde con un certificado válido. |
| 111 | Falta la dirección después de la orden. |
| 112 | La dirección no es válida. Usa el formato `http://servidor:puerto`, sin ruta. |
| 113 | La orden requiere permisos de administrador. |
| 114 | Dirección configurada. El servidor no responde, responde con un error HTTP 5xx o no devuelve una respuesta válida. |
| 115 | Dirección configurada. El certificado del servidor no es válido o ha caducado. |
| 116 | No se ha podido escribir o borrar la configuración del servidor en el registro. |
| 117 | Configuración borrada. |

Con los códigos 114 y 115 la dirección queda guardada. Resuelve el problema de conexión o del certificado y repite `/servidor-licencias <dirección>` para comprobar que el servidor responde con un certificado válido.

### Digi3D.AI

Digi3D.AI no tiene una orden para configurar el servidor. Configura el valor con la propiedad `SERVIDOR_LICENCIAS` del instalador (consulta [Con el instalador](#con-el-instalador)) o escribe el valor del registro con PowerShell, abierto como administrador y en un proceso de 64 bits:

```powershell
$clave = 'HKLM:\SOFTWARE\Digi21\LicenciasDeSoftware'
New-Item -Path $clave -Force | Out-Null
Set-ItemProperty -Path $clave -Name ServidorLocal -Value 'http://servidor01:21021' -Type String
```

Si el ordenador también tiene MDTopX o Topcal21, la orden `/servidor-licencias` de esos programas escribe el mismo valor y también sirve para Digi3D.AI. Digi3D.AI lee el valor cada vez que solicita una sesión.

Para distribuir la dirección a muchos ordenadores, usa la propiedad `SERVIDOR_LICENCIAS` del instalador, o escribe el mismo valor con un guion o con la herramienta de administración que uses en la organización.

#### Con el instalador

Si se indica la propiedad `SERVIDOR_LICENCIAS`, el instalador de Digi3D.AI escribe el valor `ServidorLocal` del registro durante la instalación. Para configurar la dirección del servidor al desplegar Digi3D.AI mediante directivas de grupo, usa esta propiedad. Ejecuta el siguiente comando en una consola abierta con **Ejecutar como administrador**:

```powershell
msiexec /i SetupDigi3DAIx64_es-ES.msi SERVIDOR_LICENCIAS=http://servidor:21021
```

* El instalador escribe la dirección tal cual, sin comprobarla ni corregirla. La dirección del servidor tiene que empezar por `http://` o `https://` y no puede llevar ruta (se admite una barra final); Digi3D.AI, MDTopX y Topcal21 rechazan el valor si no cumple ese formato.
* Si omites la propiedad, el instalador no cambia el valor `ServidorLocal`.
* Desinstalar Digi3D.AI no borra el valor `ServidorLocal`, porque lo comparten Digi3D.AI, MDTopX y Topcal21.

Si un ordenador cliente no tiene la dirección configurada, el programa muestra un mensaje que explica cómo configurarla.

## Funcionamiento sin conexión a internet

* El servidor renueva su certificado con digi21.net cada 60 minutos. Si la renovación falla porque digi21.net no responde, responde con un error HTTP 5xx o pide reducir la frecuencia de peticiones, el servidor reintenta cada 5 minutos.
* El certificado que emite digi21.net vale 7 días desde la última renovación correcta. El servidor sigue concediendo sesiones sin conexión a internet mientras el certificado no caduca. Cuando caduca, el estado pasa a **Certificado caducado** y el servidor no concede sesiones hasta que una renovación se completa.
* Cada ordenador cliente necesita además una activación vigente y una autorización de uso vigente, que el programa renueva con digi21.net (consulta [Renovación periódica de la autorización de uso](activar-ordenadores.md#renovación-periódica-de-la-autorización-de-uso)). Un ordenador cliente que no se conecta a digi21.net antes de que termine el plazo de su autorización de uso deja de poder usar el programa, aunque el servidor local esté activo.
* Cada ordenador cliente comprueba que el certificado del servidor no ha caducado con la hora del propio cliente. Si el cliente rechaza el certificado, el programa muestra «El servidor de licencias *servidor* no tiene una licencia válida para este ordenador».

## Actualización y desinstalación

* **Actualización.** Ejecuta el MSI de la versión nueva. El instalador sustituye la versión instalada si el paquete de instalación tiene la misma versión que la instalada o una posterior, y rechaza los paquetes con una versión anterior a la instalada. Durante la actualización, el servicio se detiene, guarda las sesiones abiertas en `sesiones.json` y, cuando se inicia de nuevo, recupera las que siguen vigentes. La activación, el certificado y el puerto se conservan.
* **Desinstalación.** Desinstala **Servidor de licencias de Digi21** desde **Aplicaciones instaladas**, o ejecuta `msiexec /x "C:\Instaladores\SetupServidorLicencias_es-ES.msi" /qn` con el mismo archivo MSI que usaste para instalar. La desinstalación detiene y elimina el servicio, la reserva de la dirección y las reglas del cortafuegos. La carpeta `C:\ProgramData\Digi21.ServidorLicencias` no se elimina: contiene el certificado y los datos de renovación del servidor, así que, si vuelves a instalar el servidor en el mismo ordenador, el servidor sigue activado.
* **Cambio de ordenador.** Instala y activa el servidor nuevo con un código de activación del servidor. La orden `desactivar` solo borra los datos del servidor antiguo y no avisa a digi21.net: mientras el servidor antiguo tenga un certificado que renovó en los últimos 7 días, `activar` en el servidor nuevo devuelve el código 103. Si no quieres esperar, solicita a Digi21 que revoque el servidor antiguo.

## Solución de problemas

### El servicio no arranca

1. Comprueba el estado con `Get-Service Digi21ServidorLicencias`.
2. Lee las últimas líneas del registro:

   ```powershell
   Get-Content 'C:\ProgramData\Digi21.ServidorLicencias\servicio.log' -Tail 50
   ```

3. Busca una línea que empiece por «Error del servicio:». El texto indica la función de Windows que ha fallado y el código de error. Windows reinicia el servicio un minuto después del fallo.
4. Si `Get-Service` no encuentra el servicio, vuelve a ejecutar el MSI.

Al iniciarse tras la instalación, el servicio escribe en `C:\ProgramData\Digi21.ServidorLicencias\servicio.log` las líneas «Inicio del servicio, versión …», «Clave del servidor abierta en el proveedor …» y «Servicio en ejecución.».

### El puerto está ocupado

Si otra aplicación usa el mismo puerto, el servicio se detiene al iniciarse y `servicio.log` registra una línea «Error del servicio:» con el nombre de la función de Windows que ha fallado y su código. Para comprobar qué usa el puerto:

```powershell
Get-NetTCPConnection -LocalPort 21021 -State Listen
netsh http show urlacl
```

Cierra la aplicación que usa el puerto o ejecuta de nuevo el MSI con otro valor de `PUERTO`. Si cambias el puerto del servidor, actualiza la dirección del servidor en los ordenadores cliente.

### El panel pide credenciales o responde «Acceso denegado»

El panel solo admite cuentas del grupo Administradores del servidor. Si el navegador muestra un cuadro de inicio de sesión, escribe el usuario y la contraseña de una de esas cuentas. Si el panel responde «Acceso denegado», la cuenta no pertenece a ese grupo en el servidor.

### El panel indica «La línea de órdenes no está disponible»

El aviso significa que el servicio no ha podido crear la conexión local que usan las órdenes de administración. El servicio vuelve a intentarlo cada 30 segundos y, cuando lo consigue, el aviso desaparece al recargar la página. Mientras tanto, las órdenes de administración devuelven un error. `servicio.log` contiene la línea «No se ha podido crear la tubería de administración» con el código de Windows. Si el aviso continúa, reinicia el servicio con `Restart-Service Digi21ServidorLicencias`. El panel y los ordenadores cliente siguen funcionando mientras la línea de órdenes no está disponible.

### Una orden muestra «El servicio Digi21ServidorLicencias no está iniciado»

Inicia el servicio con `Start-Service Digi21ServidorLicencias` y repite la orden. Si el mensaje es «Acceso denegado a la tubería de administración», abre la consola con **Ejecutar como administrador**.

### Los ordenadores cliente no se conectan

1. En un ordenador cliente con MDTopX o Topcal21 instalado, ejecuta `/servidor-licencias <dirección>` para comprobar la dirección (consulta [Configurar los ordenadores cliente](#configurar-los-ordenadores-cliente)). El código 114 indica que el servidor no responde. En un ordenador que solo tiene Digi3D.AI, comprueba el valor de registro `ServidorLocal` como se describe en [Configurar los ordenadores cliente](#configurar-los-ordenadores-cliente).
2. Comprueba el acceso al puerto desde el cliente: `Test-NetConnection servidor01 -Port 21021`.
3. Comprueba que las reglas del cortafuegos del servidor están habilitadas y que el perfil de red activo del servidor es de dominio o privado. Las reglas no cubren el perfil público, y solo admiten conexiones desde la subred local del servidor: un cliente de otra subred necesita una regla propia.
4. Comprueba que el estado del servidor es **Activo** y que la licencia del cliente figura en la lista de licencias del servidor.
5. Comprueba que el cliente tiene la licencia activada y que la fecha y la hora del cliente son correctas.

### El estado es «Certificado caducado» o «Revocado por digi21.net»

* **Certificado caducado:** el servidor no ha renovado su certificado en los últimos 7 días. Ejecuta `renovar` y, si la orden falla, lee el motivo. Si el motivo es un fallo de la conexión del servidor con digi21.net, comprueba esa conexión.
* **Revocado por digi21.net:** ejecuta `activar <código>` con un código de activación del servidor vigente. Si el código no sirve, contacta con Digi21.

### El aviso «server_cloned»

El panel muestra «digi21.net ha respondido server_cloned» cuando digi21.net recibe una renovación que no corresponde a la última que concedió a este servidor. Comprueba si existe otra copia del servidor, por ejemplo una máquina virtual clonada, que renueve con digi21.net, y apágala. Una respuesta `server_cloned` cancela la renovación automática programada. Para reactivar el servidor y reanudar la renovación automática del certificado, ponte en contacto con el soporte técnico de Digi21, que te dará un código de activación nuevo para ejecutar `activar <código>`.
