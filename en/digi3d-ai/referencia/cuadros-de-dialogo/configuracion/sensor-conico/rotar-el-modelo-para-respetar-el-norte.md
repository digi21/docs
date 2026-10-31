# Keep north up
<!-- id: rotar-el-modelo-para-respetar-el-norte -->
<!-- origen: 6ae4ab4305c8ba194de3d17f3a8cc2f77d4af569 -->

Specifies whether Digi3D.AI rotates the model so north is at the top of the screen.

Digi3D.AI evaluates this option according to each model orientation when opening the model and switching models with the photogrammetric project pane. The option applies whether images are displayed projected or orthogonally \(the [Image presentation mode](modo-de-presentacion-de-imagenes.md) option\).

In a flight with strips flown in alternating directions, without this option north is at the top in strips flown in one direction and at the bottom in those flown in the opposite direction.

## Possible values

* **Yes**. If north is more than 100 sexagesimal degrees from the top of the screen, both images are rotated by 180 sexagesimal degrees, and left and right images are swapped so relief is not inverted. If north is between 90 and 100 sexagesimal degrees from the top of the screen, the model is not rotated, so orientation does not change from one model to the next in a north-south strip. When images are projected, an oblique pair is rotated according to [Obliques with the horizon at the top](oblicuas-con-el-horizonte-arriba.md), rather than Keep north up.
* **No** \(default\). Models are displayed without rotation.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\AbsoluteOrientation` |
| :--- | :--- |
| Value | `RotarParaQueElNorteSeVeaArriba` |
| Type | `REG_DWORD` |
| Default value | 0 |

This is a per-user _Windows_ value: it is not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify it.

</details>
