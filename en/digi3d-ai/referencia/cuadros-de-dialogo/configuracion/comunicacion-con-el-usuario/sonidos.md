# Sounds
<!-- id: sonidos -->
<!-- origen: 7866c28f62ca9ccee4eaa228ca6a0248c0ab8e98 -->

Configures the device used to play program sounds.

Digi3D.AI plays sounds to indicate what is happening in the program. The error sound indicates that an operation was not completed correctly.

## Possible values

* **System loudspeaker (synchronous)**. Sounds play through the system speaker synchronously (the program may be blocked while a sound plays).
* **System loudspeaker (asynchronous)**. Sounds play through the system speaker asynchronously.
* **Sound card**. Sounds play through the sound card (requires specifying WAV file paths for each event: Data, End command, etc.).

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `SonidosAltavoz` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
