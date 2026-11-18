# Filter points
<!-- id: linea-de-comando-filtrar-puntos -->
<!-- origen: d325dcddafae47c9e8a805bce42ab81d0d06f0a2 -->

[Filter points](/mdtopx/modulo-laser/editar/filtrar-puntos.md)

This tool reduces the density of a point cloud. MDTopX divides the cloud into cells with side **PasoRejilla** and replaces the points of each cell with a single point. To run it from the command line, enter:

```bash
MDTopX [input file] /FILTRADO
```

The tool has no output file. MDTopX replaces the points of the input file with the filtered points and saves the result in the same file and in the same format. Make a copy of the input file if you need to keep the original cloud.

MDTopX takes the first string on the command line that is not an option (an option starts with `/` or `-`) as the input file. That string can come before or after `/FILTRADO`, which takes no arguments.

## License

At startup, the `/FILTRADO` command does not ask for the MDTopX module license, and the tool does not check any license before filtering or before saving the result in the input file. To save the result, MDTopX requires the Laser module license if the cloud is LiDAR (light detection and ranging) or comes from a terrestrial scanner, and the MDTopX module license for any other point file. If the license is missing, MDTopX filters the cloud, writes the message "Licencia no válida: Imposible salvar fichero." (in English, "Invalid license: Can not save the file") to the MDTopX.LOG file and does not save the file.

## Configuration

MDTopX reads the **\[FiltrarPuntos]** section of the MDTopX.ini file. If a key is not in the section, MDTopX uses the value saved in the user configuration, which is the last value accepted in the dialog box of the [Filter points](/mdtopx/modulo-laser/editar/filtrar-puntos.md) tool. If that value was never saved, MDTopX uses the default value shown for each key.

* **Dimensiones**: 0 (2D: the cells are squares in the XY plane, for aerial clouds) or 1 (3D: the cells are cubes, for terrestrial scanner clouds). Default value: 0.
* **PasoRejilla**: side of the cell in meters. It must be greater than 0: with a value of 0 or less, MDTopX writes the error "Error en la distancia" (in English, "Invalid distance") to the MDTopX.LOG file and ends without filtering. With **Dimensiones** = 1, MDTopX produces the same error if the value is less than the coordinate resolution of the cloud. Default value: 1.
* **CalculoCota**: criterion MDTopX uses to calculate the elevation (Z coordinate) of the point of each cell. It is used only with **Dimensiones** = 0; with **Dimensiones** = 1, MDTopX always calculates the mean of the elevations in the cell. Default value: 0. Allowed values:
  * **0**: elevation of the first point found in the cell.
  * **1**: arithmetic mean of the elevations of the points in the cell.
  * **2**: mean of the elevations weighted with the weight 1 / d, where d is the distance in the XY plane from the point to the center of the cell.
  * **3**: mean of the elevations weighted with the weight 1 − |a| / 90, where a is the scan angle of the point in degrees.
  * **4**: lowest elevation in the cell.
  * **5**: highest elevation in the cell.

MDTopX also reads the **DistanciMax** key (spelled without the final "a") and the **SegunClasificacion** key, but this tool does not use them.

```ini
[FiltrarPuntos]
Dimensiones = 0
PasoRejilla = 0.5
CalculoCota = 4
```

Key names are case-insensitive.

See also:

* [Introduction to the command line](./)
