# DwgVersion
<!-- id: digi21.diging.io.dwg.dwgversion -->

Espacio de nombres: `Digi21.DigiNG.IO.Dwg`  
Ensamblado: [Digi21.DigiNG.IO.Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/)

Versión de AutoCAD con la que [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md) escribe el archivo. Es el tipo de la propiedad `Version` de [DwgParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgparameters.md). No interviene al leer: un archivo de cualquier versión se lee igual.

```csharp
public enum DwgVersion
```

## Valores

| Valor | Número | Formato del archivo |
| :--- | :--- | :--- |
| `Ac_12` | 0 | AutoCAD R11/R12 (AC1009). `Ac_12` es el valor de la propiedad Version al crear `new DwgParameters()`. |
| `Ac_13` | 1 | AutoCAD R13 (AC1012). |
| `Ac_14` | 2 | AutoCAD R14 (AC1014). |
| `Ac_2000` | 3 | AutoCAD 2000 (AC1015). |
| `Ac_2004` | 4 | AutoCAD 2004 (AC1018). |
| `Ac_2007` | 5 | AutoCAD 2007 (AC1021). |
| `Ac_2010` | 6 | AutoCAD 2010 (AC1024). |

El importador/exportador de Digi3D.AI admite además AutoCAD 2013, que esta enumeración no incluye.

## Ejemplo

El ejemplo de [DwgParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgparameters.md#ejemplo) asigna `DwgVersion.Ac_2010`.
