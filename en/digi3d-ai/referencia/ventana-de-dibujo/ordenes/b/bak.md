# BAK
<!-- id: bak -->
<!-- origen: e00d35ecd2fd27b8699c6828ee84839f9bfdf85e -->

Create a backup copy of the active drawing file.

## Parameters

Does not accept parameters.

## Notes

The command copies the active drawing file without prompting for data. A beep sounds when it finishes.

The backup path and name come from **Tools/Configuration/Back-up copy/Destination for backup copies**, which supports substitutors. The default value is `$(PathOfDrawingFile)Copia de seguridad de $(DrawingFileName) con fecha $(DateUnderscore) a las $(TimeUnderscore)$(DrawingFileExtension)`: the copy is saved in the drawing file folder with the same extension, and its name includes the date and time.

DigiNG can create a backup automatically at regular intervals. Enable this using **Tools/Configuration/Back-up copy/Create back-up copy every \(minutes\)** and specify the interval in minutes; 0 disables it. An automatic backup is created when an entity is added, if the interval has elapsed since the previous backup.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | File/Tools/Save a back-up copy |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | _No related variables_ |
| Related commands | [SAVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/salvar.md) |
| Internal name | {B826AC47-F6A5-4d4b-8FE5-1DCDE8DA0FB0} |
