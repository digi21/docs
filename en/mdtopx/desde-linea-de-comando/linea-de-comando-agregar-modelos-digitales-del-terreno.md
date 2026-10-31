# Add digital terrain models
<!-- id: linea-de-comando-agregar-modelos-digitales-del-terreno -->
<!-- origen: 8270f9c01f8aa430bba7472be516082d45874cdc -->

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /AGREGA [archivo 1 a agregar] [archivo 2 a agregar] o [archivo n a agregar]
```

The input file must be the digital model to modify by adding the other files.

To configure export, MDTop.INI must also contain the mandatory **\[Preferencias]** line followed by:

* **ModoSuma**: 0 (do not insert new points), 1 (delete original points), 2 (join all points), 3 (insert new points with projected elevations), 4 (calculate mean elevations for new points), 5 (calculate mean elevations for all points), 6 (calculate elevations according to distance from the DTM for new points) or 7 (calculate elevations according to distance from the DTM for all points).

```ini
[Preferencias]
ModoSuma=7
ModoSuma=7
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
