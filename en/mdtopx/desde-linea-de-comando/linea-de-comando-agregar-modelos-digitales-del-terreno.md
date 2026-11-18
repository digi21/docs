# Add digital terrain models
<!-- id: linea-de-comando-agregar-modelos-digitales-del-terreno -->
<!-- origen: 8dd26b1f5ad4d041e55e7e3f643c6c078a7653cb -->

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /AGREGA [archivo 1 a agregar] [archivo 2 a agregar] o [archivo n a agregar]
```

The command merges into the input file the files that you enter after the command. The input file can be a drawing file (including point clouds), a triangulated irregular network (TIN) digital model, a grid digital model (DEM), a project or a road alignment file. Each file to merge must be readable as the same type of file as the input file. With a DEM, the files to merge must be DEM or ESRI ASCII Grid files with the same cell size and with cells aligned with those of the input file.

MDTopX takes all the arguments that follow the command as the files to add, so enter the input file before the command. If you enter no file after the command, MDTopX does not run it and writes to MDTopX.LOG the message that states that the command has missing or invalid required arguments and that MDTopX ends without processing the file.

## Result

* If MDTopX merges at least one file and the user does not cancel the merge, MDTopX saves the result in the input file, which is overwritten. Work on a copy if you need to keep the original input file.
* For each file that MDTopX does not merge, it writes to MDTopX.LOG the line "MDTopX no ha unido el archivo \<path\>." (with MDTopX in English, "MDTopX has not merged the file \<path\>."), followed by the cause when MDTopX knows it. The files that are not merged include, for example, those that MDTopX cannot read, those that are not of the same type as the input file and, with drawings and TIN models, those that are equal to the input file. MDTopX continues with the next file.
* With drawings, TIN models and projects, if MDTopX starts merging a file and the merge fails with an error that is not a cancellation, the model of the input file may keep in memory part of the changes of the failed merge. In that case MDTopX writes to MDTopX.LOG that it has not merged the file, does not process the following files and does not save the input file.
* If MDTopX merges no file, it does not save the input file and writes to MDTopX.LOG the line "Error: MDTopX no ha unido ningún archivo y no guarda el archivo de entrada." (with MDTopX in English, "Error: MDTopX has not merged any file and does not save the input file.").

To configure how TIN and DEM digital models are added, add to MDTopX.ini the **\[Preferencias]** section and the field below. Drawings, projects and road alignments do not use this field. If the MDTopX interface language is English, the section name is **\[Preferences]**:

* **ModoSuma**: what to do with the points when the models overlap: 0 (do not insert new points), 1 (delete original points), 2 (join all points), 3 (insert new points with projected elevations), 4 (calculate mean elevations for new points), 5 (calculate mean elevations for all points), 6 (calculate elevations according to distance from the DTM for new points) or 7 (calculate elevations according to distance from the DTM for all points). If the file omits the field, MDTopX uses the value stored in its preferences; on an installation with no stored preferences, that value is 2.

```ini
[Preferencias]
ModoSuma=7
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
