# DwgVersion
<!-- id: digi21.diging.io.dwg.dwgversion -->
<!-- origen: 619039b588e1cb16123252a5c0dfe36a9dc6df22 -->

Namespace: `Digi21.DigiNG.IO.Dwg`  
Assembly: [Digi21.DigiNG.IO.Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/)

AutoCAD version used by [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md) to write the file. This is the type of the `Version` property of [DwgParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgparameters.md). It does not affect reading: files of any version are read in the same way.

```csharp
public enum DwgVersion
```

## Values

| Value | Number | File format |
| :--- | :--- | :--- |
| `Ac_12` | 0 | AutoCAD R11/R12 (AC1009). `Ac_12` is the Version property value when creating `new DwgParameters()`. |
| `Ac_13` | 1 | AutoCAD R13 (AC1012). |
| `Ac_14` | 2 | AutoCAD R14 (AC1014). |
| `Ac_2000` | 3 | AutoCAD 2000 (AC1015). |
| `Ac_2004` | 4 | AutoCAD 2004 (AC1018). |
| `Ac_2007` | 5 | AutoCAD 2007 (AC1021). |
| `Ac_2010` | 6 | AutoCAD 2010 (AC1024). |

The Digi3D.AI importer/exporter also supports AutoCAD 2013, which this enumeration does not include.

## Example

The [DwgParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgparameters.md#example) example assigns `DwgVersion.Ac_2010`.
