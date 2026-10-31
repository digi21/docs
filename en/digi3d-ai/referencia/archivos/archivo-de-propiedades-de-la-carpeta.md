# Folder properties file
<!-- id: archivo-de-propiedades-de-la-carpeta -->
<!-- origen: 62a769345ae175878fc8aaecf793c532a2240eb7 -->

Digi3D.AI saves property values in `Digi3D.properties.json` in each drawing file's folder. All drawing files in that folder share it: opening any of them restores the last values used there, without rerunning commands.

## What it saves

* Properties in [Properties](../paneles/propiedades.md): Digi3D.AI and extension variable commands.
* Drawing window background color, changed with [BACKGROUND\_COLOR](../ventana-de-dibujo/variables/c/color-fondo.md).

Time- or device-dependent properties are not saved: active Z coordinate, drawing scale, GOTO\_START, ROTATE, SpaceMouse speeds and digital terrain model movement speeds.

## Reading and writing

* **Opening a drawing file**: code table startup commands run first, then the folder file's values override them.
* **Switching drawing windows**: applies values from that drawing file's folder. If the folder has no properties file, current values remain and background color becomes that drawing file's code table color.
* **After each command**: if any property changed, writes the active drawing file folder's properties file. It is not created until a property changes.

The folder is fixed when the drawing file opens: switching drawing files within that window continues using the original folder's file.

A damaged file is treated as empty. If it cannot be written, for example in a read-only folder, no message appears; a warning is recorded in Windows Event Viewer.

## Format

JSON with one `propiedades` element. Each property is identified by its command's language-independent internal name. Background color is saved as red, green and blue components:

```json
{
  "propiedades": {
    "{A9B0F9A1-04E7-45ce-943B-7D17EF6C3F72}": false,
    "{D8D7E7B7-322C-4bbb-9BCD-43B0E71DD457}": 2,
    "{CC84B0E0-EFB8-48bc-97A2-DEF9AB885021}": [0, 0, 0]
  }
}
```

Properties absent from the file retain their values. Unknown properties are ignored and preserved when rewriting it.
