# Add digital terrain models
<!-- id: linea-de-comando-agregar-modelos-digitales-del-terreno -->
<!-- origen: a7b39c0cc9c8736248a4900e17942c8c20c91a40 -->

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /AGREGA [archivo 1 a agregar] [archivo 2 a agregar] o [archivo n a agregar]
```

The input file must be the digital model to modify by adding the other files. MDTopX takes all the arguments that follow the command as the files to add, so enter the input file before the command.

To configure how the models are added, MDTopX.ini must also contain the mandatory **\[Preferencias]** line followed by the field below. If the MDTopX interface language is English, the section name is **\[Preferences]**:

* **ModoSuma**: what to do with the points when the models overlap: 0 (do not insert new points), 1 (delete original points), 2 (join all points), 3 (insert new points with projected elevations), 4 (calculate mean elevations for new points), 5 (calculate mean elevations for all points), 6 (calculate elevations according to distance from the DTM for new points) or 7 (calculate elevations according to distance from the DTM for all points). If the file omits the field, MDTopX uses the value stored in its preferences; on an installation with no stored preferences, that value is 2.

```ini
[Preferencias]
ModoSuma=7
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
