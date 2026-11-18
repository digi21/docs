# Activate computer
<!-- id: linea-de-comando-activar-equipo -->
<!-- origen: bcbb58082636a986cf3c4f1c4e7053a4b23e4805 -->

The `/activar-equipo` command activates the computer, for all Windows users, with a software license activation code. The command shows no windows, does not open the MDTopX interface and ends the `MDTopX.exe` process with an exit code that indicates the result. Unlike the calculation tools in this section, the command does not read the command-line configuration file.

Before running `/activar-equipo`, see [Activate computers](../../licencias-de-software/activar-ordenadores.md), which explains what an activation code is and how to get one.

## Syntax

```powershell
MDTopX.exe /activar-equipo <code>
```

| Argument | Description |
| --- | --- |
| `<code>` | Activation code delivered by Digi21. It is the argument that immediately follows `/activar-equipo`. |

The command is not case-sensitive. If the command line contains `/activar-equipo`, MDTopX runs only that command and does not parse the rest of the line: it runs no calculation tool and opens no file.

## Requirements

* The process must run with the Administrators group enabled: open the console with **Run as administrator**. If the group is not enabled, the command sends no request to digi21.net and ends with code 108.
* The computer needs an internet connection to digi21.net.

## Result

The command writes one line of text with the result, in the language of the MDTopX interface. The command writes to the standard output of the process or, if unavailable, to the parent process console. If neither destination is available, the command writes nothing. When the output is redirected to a file or a pipe, the command writes in UTF-8.

The exit code of the process indicates the result. The exit codes, 100 to 109, are described in [With the `/activar-equipo` command](../../licencias-de-software/activar-ordenadores.md#with-the-activar-equipo-command). Code 100 indicates that the computer is activated for all Windows users.

## Example

MDTopX is a windowed application. To wait for the process to end and read its exit code, run the command with PowerShell opened with **Run as administrator**:

```powershell
$process = Start-Process -FilePath 'C:\Path\to\installation\MDTopX.exe' -ArgumentList '/activar-equipo', '<code>' -Wait -PassThru
$process.ExitCode
```

Replace the path in the example with the absolute path of `MDTopX.exe` and `<code>` with the activation code. To save the result text to a file, add `-RedirectStandardOutput 'C:\Path\result.txt'` to `Start-Process`.
