# Programming examples
<!-- id: ejemplos-2 -->
<!-- origen: a48fe10ac41fc7e715abf661fd623dfc06535758 -->

Scripts and commands described here are in the GitHub repository [**ComandosDigi3DPython**](https://github.com/digi21/ComandosDigi3DPython).

Run them in two ways:

- As **commands**: enter the file name without `.py` on the command line. Commands with parameters use `NOMBRE=parámetro1 parámetro2 ...`. Digi3D.AI installs them in `OrdenesPython` under its installation folder. To modify one, copy its `.py` to your macro directory and edit that copy, which takes precedence. [Python commands from ComandosDigi3DPython](../../ordenes-python.md) lists search folders and summarizes each command.
- Paste or open a script in the [Python script pane](../README.md). This method supports only scripts without parameters.

Each page shows complete code and explains it step by step. Each group progresses from easier to harder examples.

Missing parameters or invalid numbers cause the command to play the error sound and display the reason and usage.

## Scripts without parameters

- [Removing database links](borra-atr.md)

## Commands with parameters

- [Transforming complexes into points](transforma-complejo-a-punto.md)
- [Rounding contour Z elevations](redondea-z.md)
- [Creating tasks for small areas](crea-tareas-con-areas-inferior-a-valor.md)
- [Connecting nearby contours](crear-tramos-para-unir-curvas.md)
- [Deleting contours by interval](elimina-curvas-por-equidistancia.md)
- [Filtering intermediate and index contours](filtrar.md)
- [Renaming a code while retaining attributes](renomcod-manteniendo-atributos.md)

## Interactive commands

- [Text from the Cadastre street directory](dibuja-texto-extraido-callejero-catastro.md)
- [Text from Azure Maps](dibuja-texto-extraido-servicio-mapas-azure.md) (parameter: Azure Maps key)
- [Prefixing the selected geometry's codes](prefija-cod.md) (parameter: prefix)

> Digi3D.AI's embedded interpreter provides only the **standard library**, without third-party packages such as `numpy` or `requests`. Web service examples use `urllib.request`, which belongs to the standard library.

## See also

- [Scripts in the Digi3D.AI pane](../README.md)
- [Python API reference](../../referencia/README.md)
