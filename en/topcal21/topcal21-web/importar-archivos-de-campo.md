# Importing field files
<!-- id: topcal21-web-importar -->
<!-- origen: 9177d02dcd357ce1343b26a5b2a76d35ef6041b0 -->

**File › Import...** reads a field file (points or observations from a total station, a data collector or another program) and adds its records to a point file or an observation file. The command works like **Import** in [Topcal21 for Windows](../menus-de-la-aplicacion/menu-archivo.md), with these conditions:

* The file you import must be in [My files](mis-archivos.md). Upload the file to "My files" before running "File › Import...", without converting it.
* The command is enabled when the active document is a point file or an observation file and the account is not suspended.
* The type of the active document decides what is imported: with a point file active, the website imports points; with an observation file active, it imports observations.

## The "Import file" dialog box

1. Choose the **File format** in the list. The website does not infer the format from the file extension.
2. Choose the **Overwrite option**, which decides what the import does with a record of the file that already exists in the document (a point with the same number or an observation with the same station and the same target):
    * **Do not overwrite**: the website does not modify the existing record.
    * **Overwrite**: the website replaces the existing record with the record in the file.
    * **Add**, only with observations: the website adds another record if the document admits duplicate observations.
3. With the **ASCII** format, select the **Included fields** that each line of the file contains. With the **Leica GSI** format for points, the **Import also station points** check box imports the stations as points.
4. Choose **Where to import the data**: the active document, or a new document with the name you type, in the same folder as the active document. With an open project, the **Add the new document to the project** check box adds that document to the project.
5. Click **Choose file...** and choose the file in the "My files" selector. With the formats that have their own extension, the selector shows only the files with that extension; with the "any extension" formats, it shows all the files.

When it finishes, the website shows the number of records imported and the "Import completed" dialog box with "Records read from the file" and "New records". An import into an existing document is a single **Undo** step. In a new document, the imported records remain as unsaved changes. In both cases, save the file to keep the data.

If the website cannot import the file, it shows a message and does not import any records. For example, an empty SDR file or a TopCal DOS file containing fewer records than it declares.

## Point formats

* TopCal DOS point files (`.pto`, `.pts`).
* ASCII files (any extension).
* Leica GSI files (`.gsi`).
* SDR files (`.sdr`).
* Nikon files (`.pol`).
* ZAS files (`.p05`).
* Leica HDS PTS files (`.pts`).

## Observation formats

* TopCal DOS observation files (`.obs`).
* ASCII, GeoRed, Kern, GeoDat, Topcon, Pentax, Psion, Psion Sokkisa, Psion GeoDat, Psion Tacor and TCP ET files (any extension).
* Leica GSI files (`.gsi`).
* SDR files (`.sdr`).
* Nikon files (`.pol`).
* ZAS files (`.p01`).

The website does not import DIGI (BIN or ASCII), DXF or DGN files, which Topcal21 for Windows does import.

## Mixing observations

When you import observations with the **Add** option, the website shows the **Mixing observations** dialog box once for each station that the observation file already has. The dialog box works as in Windows; see [Joining observations](../otros-comandos/fundir-vuelta-de-horizonte.md).
