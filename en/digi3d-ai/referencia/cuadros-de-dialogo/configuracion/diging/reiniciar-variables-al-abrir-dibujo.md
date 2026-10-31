# Reset variables when a drawing file is opened
<!-- id: reiniciar-variables-al-abrir-dibujo -->
<!-- origen: ba1b70fe3359fc20fb0debb4d67f7cd89f98cf93 -->

Specifies whether opening or creating a drawing file resets drawing window variables to their initial values.

Variables are shared by all open drawing files, so changing their values also affects files that were already open.

## Possible values

* **Yes** \(default\). Opening or creating a drawing file resets variables to their initial values: [BEEPS](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/pita.md), [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md), AUTO, AUTO\_MOUSE, AUTOSMODE, GOTO\_SNAP, SPATTERN, FIJA\_Z, FIJA\_XY, Z, the FORZAR\_\* variables, VER\_MDT, THICKNESS, STHICKNESS, DISTMAX, and COD\_HEIGHTS.
* **No**. Variables retain their current values. They only take their initial values when opening the first drawing file.

Scale, [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md), [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md), [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), and [EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) do not depend on this option: they always take the values specified when opening the drawing file.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Configuration` |
| :--- | :--- |
| Value | `ReiniciarVariablesAlAbrirDibujo` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
