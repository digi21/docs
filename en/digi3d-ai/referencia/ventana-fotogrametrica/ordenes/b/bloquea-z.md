# LOCK_Z
<!-- id: bloquea-z -->
<!-- origen: 337988e92606d360eed5df1a2d9380db2bc78e90 -->

LOCK_Z locks the photogrammetric window's _Z_ coordinate at its exact value when the command runs, so it stays unchanged as you move.

Unlike [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) in the drawing window, which locks _Z_ to the nearest multiple of the contour interval, **LOCK_Z** keeps your exact _Z_ coordinate. The photogrammetric window does not handle contours or contour intervals.

The command toggles the lock: running it while _Z_ is locked unlocks the coordinate so it can change again.

## Parameters

None.

## Command characteristics

| Command type | Conmutador |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Photogrammetric window/Block Z |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | Digi3D.CommonCommands.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
