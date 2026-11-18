# License server
<!-- id: linea-de-comando-servidor-licencias -->
<!-- origen: 376102c316755e837e2396ea8acd095d5c33d85a -->

The `/servidor-licencias` command saves in the Windows registry the address of the local license server that the computer uses, or deletes that address. The command shows no windows, does not open the MDTopX interface and ends the `MDTopX.exe` process with an exit code that indicates the result. Unlike the calculation tools in this section, the command does not read the command-line configuration file.

Before running `/servidor-licencias`, see [Local license server](../../licencias-de-software/servidor-de-licencias.md), which explains what the server is and on which computers you must configure its address.

## Syntax

```powershell
MDTopX.exe /servidor-licencias <address>
MDTopX.exe /servidor-licencias /quitar
```

| Argument | Description |
| --- | --- |
| `<address>` | Server address in the format `http://server:port` or `https://server:port`, without a path. It is the argument that immediately follows `/servidor-licencias`. |
| `/quitar` | Deletes the saved address. |

The command and `/quitar` are not case-sensitive. If the command line contains `/servidor-licencias` and does not contain `/activar-equipo`, MDTopX runs only `/servidor-licencias` and does not parse the rest of the line. If it also contains `/activar-equipo`, MDTopX runs `/activar-equipo` and does not run `/servidor-licencias`.

## What the command does

1. It checks the format of the address. If the format is not valid, it ends with code 112 without writing to the registry.
2. It writes the address to the `ServidorLocal` text value of the `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\LicenciasDeSoftware` key of the Windows registry (64-bit view). With `/quitar`, it deletes that value. Digi3D.AI, MDTopX and Topcal21 read the same value.
3. With an address, it queries the server and checks that it responds with a valid certificate. The command saves the address even if the server does not respond or its certificate is not valid.

## Requirements

The process must run with the Administrators group enabled: open the console with **Run as administrator**. If the group is not enabled, the command does not write to the registry and ends with code 113.

## Result

The command writes one line of text with the result, in the language of the MDTopX interface. The command writes to the standard output of the process or, if unavailable, to the parent process console. If neither destination is available, the command writes nothing. When the output is redirected to a file or a pipe, the command writes in UTF-8.

The exit code of the process indicates the result. The exit codes, 110 to 117, are described in [MDTopX and Topcal21](../../licencias-de-software/servidor-de-licencias.md#mdtopx-and-topcal21).

## Example

MDTopX is a windowed application. To wait for the process to end and read its exit code, run the command with PowerShell opened with **Run as administrator**:

```powershell
$process = Start-Process -FilePath 'C:\Path\to\installation\MDTopX.exe' -ArgumentList '/servidor-licencias', 'http://servidor01:21021' -Wait -PassThru
$process.ExitCode
```

Replace the path in the example with the absolute path of `MDTopX.exe` and the address with the address of your server. To delete the saved address, replace `'http://servidor01:21021'` with `'/quitar'`.
