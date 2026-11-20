# Local license server
<!-- id: servidor-de-licencias -->
<!-- origen: 4cd91b6f4e519444a0001d75b50df9a352671602 -->

The local license server is a Windows service that distributes the [simultaneous sessions](sesiones-simultaneas.md) of a license among the computers of the network of an organization. The computers request the session from the server on the local network instead of requesting it from digi21.net. This page is aimed at the IT department that installs and administers the server.

The server handles the licenses that Digi21 configures in "local license server" mode. For each license, the server grants at most the number of simultaneous sessions of the license. The server connects to digi21.net to activate itself and to renew its certificate every hour, and does not need a connection to digi21.net to grant each session.

## Requirements

* A 64-bit Windows computer: Windows 10, Windows Server 2016 or a later version.
* An account of the Administrators group of the server, to install the server and run its commands.
* Access of the server through the Hypertext Transfer Protocol Secure (HTTPS), on port 443 of the Transmission Control Protocol (TCP), to `https://www.digi21.net`, to activate the server and renew its certificate.
* That the client computers can connect through TCP to the port of the server (21021 by default).
* The server installer (see [Get the installer](#get-the-installer)) and an activation code of the license server, which Digi21 delivers. Digi21 configures the license in "local license server" mode before you activate the server. A computer activation code does not activate the server.
* One active server per license. A server can handle several licenses of the same holder, for example the Topcal21 one and the MDTopX one, by activating it with the code of each license.
* On the client computers, a version of Digi3D.AI, MDTopX or Topcal21 that supports simultaneous sessions, with the license activated on the computer (see [Activate computers](activar-ordenadores.md)).

## Installation

### Get the installer

Download the signed installer (a Windows Installer MSI file) in the language you prefer. Both installers install the same service. The language you choose determines the language of the installer texts and of the visible names of the service, of the firewall rule and of the installed application (for example, "Servidor de licencias de Digi21" with the Spanish installer and "Digi21 License Server" with the English installer).

* Spanish: [SetupServidorLicencias_es-ES.msi](https://digi21.blob.core.windows.net/download/SetupServidorLicencias_es-ES.msi)
* English: [SetupServidorLicencias_en-US.msi](https://digi21.blob.core.windows.net/download/SetupServidorLicencias_en-US.msi)

The installer is also in the **Downloads** menu of [www.digi21.net](https://www.digi21.net) with the name **License server** (**Servidor de licencias** on the Spanish site).

### Interactive installation

1. Sign in to the server with an account of the Administrators group.
2. Copy the installer (`SetupServidorLicencias_es-ES.msi` or `SetupServidorLicencias_en-US.msi`) to the server and run it by double-clicking it.
3. Select the check box to accept the license and click **Install**. The installer uses port 21021. If an earlier server installation exists, the installer reuses the port configured by that installation.
4. Check that the service is running with PowerShell:

```powershell
Get-Service Digi21ServidorLicencias
```

To use another port, install with the command line described below.

### Unattended installation

Run in a console opened with **Run as administrator**:

```powershell
msiexec /i "C:\Installers\SetupServidorLicencias_en-US.msi" /qn PUERTO=21021
```

* `PUERTO` is the TCP port of the server and must be between 1 and 65535, both included; if it is not, the installation stops with a message. If you omit `PUERTO`, the installer uses the port configured by the previous installation, or 21021 if there was no previous installation.
* `/qn` installs without a user interface. Add `/l*v C:\Temp\installation.log` to save a log of the installation.
* To change the port of an installed server, run the command again with the new value of `PUERTO`. The installer updates the address reservation, the firewall rules and the `Puerto` registry value.

## What the server installer installs

* **Program:** `C:\Program Files\Digi21\ServidorLicencias\Digi21.ServidorLicencias.exe`, with the Visual C++ libraries it needs. The same executable works as a Windows service and as an administration command-line program.
* **Windows service "Digi21 License Server"** ("Servidor de licencias de Digi21" with the Spanish installer; internal name `Digi21ServidorLicencias` in both installers):
  * Delayed automatic start: Windows starts the **Digi21 License Server** service after the services configured for normal automatic startup.
  * Virtual account `NT SERVICE\Digi21ServidorLicencias`, which has no password.
  * The installer starts the **Digi21 License Server** service when installation completes and stops the service during updates and uninstallation.
  * If the service fails or stops with an error, Windows restarts it one minute later. The failure counter resets to zero after one day without failures.
* **Address reservation** `http://+:<port>/` in the name of the service account, which covers the communication with the programs and the web panel.
* **Inbound rules of Windows Firewall** "Digi21 License Server (TCP)" ("Servidor de licencias de Digi21 (TCP)" with the Spanish installer) for the TCP port of the server: one rule for the domain network profile and another for the private profile. Each rule only allows connections from the local subnet. No rule covers the public profile.
* **Data folder** `C:\ProgramData\Digi21.ServidorLicencias`, with access for the system (SYSTEM), the Administrators group and the service account, and no access for standard users:
  * `certificado.jwt`: certificate of the server that digi21.net issues.
  * `generacion.dat` and `reloj.json`: renewal data of the server and of its internal clock.
  * `sesiones.json`: open sessions, which the service saves when it stops and recovers when it starts.
  * `servicio.log`: log of the service. When the service log exceeds 1 MiB, the service renames it to `servicio.log.1`, replacing the previous one, and starts a new one. The service log records the start and stop of the service, the administration commands, the releases from the panel and the errors. The service always writes the log in Spanish.
* **Registry value** `Puerto` in `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\ServidorLicencias` (64-bit view), which the service reads when it starts. To change the port, run the installer again with `PUERTO`.

The service stores its cryptographic key in the Trusted Platform Module (TPM) of the server if the server has one; if not, it stores it in the Windows software key provider. The "Clave del servidor abierta en el proveedor …" line of `C:\ProgramData\Digi21.ServidorLicencias\servicio.log`, which the service writes when it starts, indicates whether the key is in the TPM ("del TPM") or in the Windows software key provider ("de software").

## Activate the server

The server grants sessions when it is activated. Activate the server with the code that Digi21 delivers:

1. Open a PowerShell console on the server with **Run as administrator**.
2. Run the `activar` command with the activation code of the server:

```powershell
& 'C:\Program Files\Digi21\ServidorLicencias\Digi21.ServidorLicencias.exe' activar <code>
```

3. Check that the command writes "The server has been activated." and that `$LASTEXITCODE` is 100.
4. Run the `estado` command and check that the status is **Active** and that the list of licenses shows the licenses of the code.

The server sends digi21.net the code, the name of the server and an identifier of its hardware. To handle another license of the same holder, run `activar` with the code of that license; the server keeps handling the licenses it already had.

The possible responses of `activar` are in the table of [exit codes](#exit-codes).

## Administration commands

The commands are run on the server itself, with a console opened with **Run as administrator**. If the console has no administrator permissions, the command ends with code 108. The commands send the request to the service through a local connection, so the service must be started. The messages are in Spanish if the Windows interface language is Spanish and in English otherwise. The command names are the same in both languages.

Syntax: `Digi21.ServidorLicencias.exe <command>`

| Command | What it does |
| --- | --- |
| `activar <code>` | Activates the server on digi21.net with an activation code of the license server. |
| `renovar` | Renews the certificate of the server with digi21.net now. |
| `estado` | Shows the computer name, the version, the status of the server, the certificate dates, the last renewal attempt and, for each license, the seats in use and the maximum. |
| `sesiones` | Shows the open sessions: session identifier, license, computer, Windows user, program, Windows session, process, IP address, opening date, date of the last renewal and seconds of validity left. |
| `liberar <session>` | Closes the sessions of the same license that share with the indicated session the client key fingerprint, the hardware fingerprint and the Windows session, and frees their seat. The session identifier is the one that `sesiones` shows. |
| `desactivar [--si]` | Deletes the certificate, the renewal data and the sessions of the server, which is left not activated. Without `--si`, the `desactivar` command asks for confirmation: the affirmative answers are `y` and `yes` if the Windows interface language is English, and `s`, `si` and `sí` in Spanish. The command does not notify digi21.net of the deactivation; the activation of the server remains registered on digi21.net. |
| `--ayuda` | Shows the help of the commands. |

Example of the output of `estado` with an activated server:

```text
Computer: SERVER01
Version: <version>
Status: Active
Certificate expiration: <date and time>
Certificate issue time (last successful activation or renewal): <date and time>
Last renewal attempt since the service started: <date and time> The certificate has been renewed.
Licenses:
  <license identifier>: 12 of 20 seats in use
```

The statuses that `estado` and the panel show are: **Active**, **Not activated**, **Certificate expired** (the server does not grant sessions until a renewal with digi21.net completes) and **Revoked by digi21.net** (the server does not grant sessions until you activate it again with `activar`).

### Exit codes

| Code | Meaning |
| --- | --- |
| 100 | The command completed successfully. With `activar`, the server has been activated. With `renovar`, the certificate has been renewed. |
| 101 | `activar`: digi21.net did not accept the code. The code is not valid, has expired or has been revoked; it is not an activation code of the license server; or its license is not in "local license server" mode or has ended. |
| 102 | `activar`: the license does not allow activations from the public IP address of the server. |
| 103 | `activar`: the license already has another active license server that renewed its certificate in the last 7 days. |
| 107 | Error. Any result other than the previous ones: unrecognized command, run without arguments, service not started, communication error with the service, `renovar` that does not get a new certificate, `liberar` with a session that does not exist, `desactivar` canceled, or `activar` with a result not included in 101 to 103. |
| 108 | The console has no administrator permissions. |

The command writes the reason for code 107. The most common reasons of `activar` and `renovar` are the following (HTTP is the Hypertext Transfer Protocol):

* "No response was received from digi21.net, or it replied with an HTTP 5xx error. Check the internet connection of the server."
* "digi21.net rejected the request because of too many requests (HTTP 429). Wait a minute and try again."
* "digi21.net replied program_not_licensed: the license of the code cannot be used with a local license server."
* `renovar`: "The server is not activated."
* `renovar`: "digi21.net has revoked this server (invalid_grant). To use it again, run "activar <code>"."
* `renovar`: "digi21.net replied server_cloned: another copy of this server has renewed the certificate. The service has canceled the scheduled automatic renewal; to activate it again, run "activar <code>"." (see [The `server_cloned` warning](#the-server_cloned-warning))

## Web panel

The service includes a web administration panel at `http://<server>:<port>/`, for example `http://servidor01:21021/`. With the default port, the web administration panel is also available on the server at `http://localhost:21021/`.

* The panel uses Windows integrated authentication. Only accounts that are members of the Administrators group of the server can use it. The browser can ask for the user name and password of one of those accounts. An account that is not in the group receives the response "Access denied".
* The server serves the panel over HTTP, without encryption.
* The panel is shown in Spanish if the browser prefers Spanish and in English otherwise. The panel does not refresh automatically: reload the page to see the current status. The **Help** button of the header opens the documentation page "Local license server".

The panel shows:

* **Server status:** computer, version, status, certificate expiration, last successful activation or renewal (certificate issue time) and last renewal attempt since the service started, with its result.
* **Warnings:** a `server_cloned` response from digi21.net, and that the command line is not available (see [Troubleshooting](#troubleshooting)).
* **Licenses:** one row per license of the certificate, with the license identifier, the maximum seats and the seats in use.
* **Sessions:** one row per open session, with the license, the computer, the Windows user, the program, the Windows session, the IP address, the opening date, the last renewal and the seconds of validity left.

The **Release** button of each session does the same as the `liberar` command: it closes the sessions of the same license that share the client key fingerprint, the hardware fingerprint and the Windows session with the selected session, and frees their seat. If the program is still open, it requests a seat again on its next renewal (every 60 seconds).

## Configure the client computers

Each client computer needs the address of the server, which is stored in the text value `ServidorLocal` of the key `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\LicenciasDeSoftware` of the Windows registry (64-bit view). The address has the format `http://server:port` or `https://server:port`, without a path. Always write the port of the server. Digi3D.AI, MDTopX and Topcal21 read the same value, so a computer with several of those programs only needs to configure it once.

You need administrator permissions on each client computer to write that value.

### MDTopX and Topcal21

Run in a console opened with **Run as administrator**:

```powershell
$process = Start-Process -FilePath 'C:\Program Files\Digi21\Topcal21\Topcal21.exe' -ArgumentList '/servidor-licencias', 'http://servidor01:21021' -Wait -PassThru
$process.ExitCode
```

Replace `C:\Program Files\Digi21\Topcal21\Topcal21.exe` with the absolute path of the installed Topcal21 or MDTopX executable.

The `/servidor-licencias <address>` command writes the address to the registry and queries the server to check that it responds with a valid certificate. To delete the configuration, use `/servidor-licencias /quitar`. The command and `/quitar` are not case-sensitive. The command shows no window and writes one line of text with the result to the standard output of the process or, if the process has no standard output, to the console of the process that started it. MDTopX.exe supports the same commands. If the address does not have a valid format, the command ends with code 112 before checking the administrator permissions. The page of each program describes the command in more detail: [MDTopX](../mdtopx/desde-linea-de-comando/linea-de-comando-servidor-licencias.md) and [Topcal21](../topcal21/opciones-de-la-linea-de-ordenes.md).

| Code | Meaning |
| --- | --- |
| 110 | Address configured. The server responds with a valid certificate. |
| 111 | The address is missing after the command. |
| 112 | The address is not valid. Use the format `http://server:port`, without a path. |
| 113 | The command requires administrator permissions. |
| 114 | Address configured. The server does not respond, responds with an HTTP 5xx error or does not return a valid response. |
| 115 | Address configured. The certificate of the server is not valid or has expired. |
| 116 | The server configuration could not be written to or deleted from the registry. |
| 117 | Configuration deleted. |

With codes 114 and 115 the address stays saved. Solve the connection or certificate problem and repeat `/servidor-licencias <address>` to check that the server responds with a valid certificate.

### Digi3D.AI

Digi3D.AI has no command to configure the server. Set the value with the `SERVIDOR_LICENCIAS` property of the installer (see [With the installer](#with-the-installer)) or write the registry value with PowerShell, opened as administrator and in a 64-bit process:

```powershell
$registryKeyPath = 'HKLM:\SOFTWARE\Digi21\LicenciasDeSoftware'
New-Item -Path $registryKeyPath -Force | Out-Null
Set-ItemProperty -Path $registryKeyPath -Name ServidorLocal -Value 'http://servidor01:21021' -Type String
```

If the computer also has MDTopX or Topcal21, the `/servidor-licencias` command of those programs writes the same value and also works for Digi3D.AI. Digi3D.AI reads the value every time it requests a session.

To distribute the address to many computers, use the `SERVIDOR_LICENCIAS` property of the installer, or write the same value with a script or with the administration tool you use in the organization.

#### With the installer

If the `SERVIDOR_LICENCIAS` property is specified, the Digi3D.AI installer writes the `ServidorLocal` registry value during the installation. To configure the server address when deploying Digi3D.AI through group policies, use this property. Run the following command in a console opened with **Run as administrator**:

```powershell
msiexec /i SetupDigi3DAIx64_en-US.msi SERVIDOR_LICENCIAS=http://server:21021
```

* The installer writes the address as it is, without checking or correcting it. The server address has to start with `http://` or `https://` and cannot include a path (one trailing slash is accepted); Digi3D.AI, MDTopX and Topcal21 reject the value if it does not have that format.
* If you omit the property, the installer does not change the `ServidorLocal` value.
* Uninstalling Digi3D.AI does not delete the `ServidorLocal` value, because Digi3D.AI, MDTopX and Topcal21 share it.

If a client computer does not have the address configured, the program shows a message that explains how to configure it.

## Operation without an internet connection

* The server renews its certificate with digi21.net every 60 minutes. If the renewal fails because digi21.net does not respond, responds with an HTTP 5xx error or asks to reduce the request rate, the server retries every 5 minutes.
* The certificate that digi21.net issues is valid for 7 days from the last successful renewal. The server keeps granting sessions without an internet connection while the certificate has not expired. When the server certificate expires, the status changes to **Certificate expired** and the server does not grant sessions until a renewal completes.
* Each client computer also needs a current activation and a current usage authorization, which the program renews with digi21.net (see [Periodic renewal of the usage authorization](activar-ordenadores.md#periodic-renewal-of-the-usage-authorization)). A client computer that does not connect to digi21.net before the period of its usage authorization ends can no longer use the program, even if the local server is active.
* Each client computer checks that the certificate of the server has not expired using the clock of the client itself. If the client rejects the certificate, the program shows "The license server *server* does not have a valid license for this computer. Notify the administrator."

## Update and uninstallation

* **Update.** Run the MSI of the new version. The installer replaces the installed version if the installation package has the same version as the installed version or a higher version; the installer rejects packages with a lower version than the installed version. During the update, the service stops, saves the open sessions in `sesiones.json` and, when it starts again, recovers those that are still valid. The activation, the certificate and the port are kept.
* **Uninstallation.** Uninstall **Digi21 License Server** (**Servidor de licencias de Digi21** with the Spanish installer) from **Installed apps**, or run `msiexec /x "C:\Installers\SetupServidorLicencias_en-US.msi" /qn` with the same MSI file you used to install. The uninstallation stops and removes the service, the address reservation and the firewall rules. The `C:\ProgramData\Digi21.ServidorLicencias` folder is not removed: it contains the certificate and the renewal data of the server, so, if you install the server again on the same computer, the server stays activated.
* **Change of computer.** Install and activate the new server with an activation code of the server. The `desactivar` command only deletes the data of the old server and does not notify digi21.net: while the old server has a certificate that it renewed in the last 7 days, `activar` on the new server returns code 103. To activate the new server without waiting for the seven-day period since the old server's last certificate renewal to end, ask Digi21 to revoke the old server.

## Troubleshooting

### The service does not start

1. Check the status with `Get-Service Digi21ServidorLicencias`.
2. Read the last lines of the log:

   ```powershell
   Get-Content 'C:\ProgramData\Digi21.ServidorLicencias\servicio.log' -Tail 50
   ```

3. Look for a line that starts with "Error del servicio:". The text indicates the Windows function that failed and the error code. Windows restarts the service one minute after the failure.
4. If `Get-Service` does not find the service, run the MSI again.

When it starts after the installation, the service writes the lines "Inicio del servicio, versión …", "Clave del servidor abierta en el proveedor …" and "Servicio en ejecución." to `C:\ProgramData\Digi21.ServidorLicencias\servicio.log`.

### The port is busy

If another application uses the same port, the service stops when it starts and `servicio.log` records an "Error del servicio:" line with the name of the Windows function that failed and the Windows error code. To check what uses the port:

```powershell
Get-NetTCPConnection -LocalPort 21021 -State Listen
netsh http show urlacl
```

Close the application that uses the port or run the MSI again with another value of `PUERTO`. If you change the port of the server, update the address of the server on the client computers.

### The panel asks for credentials or responds "Access denied"

The panel only supports accounts of the Administrators group of the server. If the browser shows a sign-in dialog box, type the user name and password of one of those accounts. If the panel responds "Access denied", the account does not belong to that group on the server.

### The panel says "The command line is not available"

The warning means that the service could not create the local connection that the administration commands use. The service retries every 30 seconds and, when it succeeds, the warning disappears when you reload the page. Meanwhile, the administration commands return an error. `servicio.log` contains the line "No se ha podido crear la tubería de administración" with the Windows error code. If the warning continues, restart the service with `Restart-Service Digi21ServidorLicencias`. The panel and the client computers keep working while the command line is not available.

### A command shows "The Digi21ServidorLicencias service is not started"

Start the service with `Start-Service Digi21ServidorLicencias` and repeat the command. If the message is "Access to the administration pipe denied", open the console with **Run as administrator**.

### The client computers do not connect

1. On a client computer with MDTopX or Topcal21 installed, run `/servidor-licencias <address>` to check the address (see [Configure the client computers](#configure-the-client-computers)). Code 114 indicates that the server does not respond. On a computer with only Digi3D.AI, check the `ServidorLocal` registry value as described in [Configure the client computers](#configure-the-client-computers).
2. Check the access to the port from the client: `Test-NetConnection servidor01 -Port 21021`.
3. Check that the firewall rules of the server are enabled and that the active network profile of the server is domain or private. The rules do not cover the public profile, and only allow connections from the local subnet of the server: a client on another subnet needs its own rule.
4. Check that the status of the server is **Active** and that the license of the client is in the list of licenses of the server.
5. Check that the client has the license activated and that the date and time of the client are correct.

### The status is "Certificate expired" or "Revoked by digi21.net"

* **Certificate expired:** the server has not renewed its certificate in the last 7 days. Run `renovar` and read the reason if the command fails. If the reason is a failed connection of the server to digi21.net, check that connection.
* **Revoked by digi21.net:** run `activar <code>` with a current activation code of the server. If `activar <code>` fails to activate the server, contact Digi21.

### The `server_cloned` warning

The panel shows "digi21.net replied server_cloned" when digi21.net receives a renewal that does not correspond to the last one it granted to this server. Check whether another copy of the server exists, for example a cloned virtual machine, that renews with digi21.net, and turn it off. A `server_cloned` response cancels the scheduled automatic renewal. To reactivate the server and resume the automatic renewal of the certificate, contact the Digi21 technical support, who will give you a new activation code to run `activar <code>`.
