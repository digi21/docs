# Confidence for speech recognition
<!-- id: confidencia-reconocimiento-voz -->
<!-- origen: 38fcd9842f4d87fca8014a7c64cbb28fc7a9194a -->

Configures, using a value between 0 and 1, the confidence factor for recognizing voice commands when the [SPEECH_RECOGNITION](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/reconocer-voz.md) variable is active.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration` |
| :--- | :--- |
| Value | `ConfidenciaReconocimientoVoz` |
| Type | `REG_BINARY` (8-byte floating-point number, `double`) |
| Default value | 0.6 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
