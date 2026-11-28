# Stereoscopy
<!-- id: estereoscopia -->
<!-- origen: 756ef5a7bf5f005e1d616a771758c9727feced34 -->

Specifies the method used to display stereoscopy.

## Possible values

One of the stereoscopic display methods available on your computer (depending on the hardware and installed modules). If the sensor of the model does not support stereoscopy, Digi3D.AI displays the model monoscopically, whatever the value of this option.

* **Controlled by driver**: the graphics card driver generates the stereo (quad-buffer stereo).
* **Stereoscope or full 3D side-by-side (Full SBS)**: the image for each eye fills one horizontal half of the screen, without distortion. It is used for mirror stereoscopes and for 3D glasses or televisions in full side-by-side (SBS) mode.
* **3D Top and bottom**: the image for one eye fills the top half of the screen and the image for the other eye fills the bottom half.
* **Horizontally interlaced**: for monitors or screens with alternate polarized rows.
* **Vertically interlaced**: for monitors or screens with alternate polarized columns.
* **Anaglyph**: for glasses with a different color filter for each eye.
* **Half-width 3D side-by-side (Half SBS)**: for 3D glasses or televisions in half-width side-by-side mode. The screen stretches each half to twice its width, and Digi3D.AI draws each half compressed to half its width.

The [Full screen](../../../ventana-fotogrametrica/pantalla-completa.md) page explains how to choose the layout according to the display mode of 3D glasses or a 3D television.

<details>
<summary>Where it is stored</summary>

| File | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Folder | `App\Configuration\Scroll` |
| Table | `Ints` |
| Value | `TipoEstereo` |
| Default value | 0 |

These SQL statements set the value 1, whether or not the row exists. Run them in the [Advanced configuration](../../configuracion-avanzada.md) dialog and restart Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'TipoEstereo' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoEstereo', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
