# Preferences, instruments and reference systems
<!-- id: topcal21-web-preferencias -->
<!-- origen: ef5c65f0ebe2283fcf9c1c160e5f3d78ac56304d -->

The preferences, the surveying instruments, the reference systems and the code library of each user are stored in the `.topcal21` folder of the file space. "My files" does not show that folder and rejects operations on it. Preferences, surveying instruments and reference systems are edited with the workspace dialog boxes described on this page. When the website creates the file space of a user, it copies into that folder an initial list of instruments and reference systems and a code library.

| Data | File in the `.topcal21` folder | Dialog box |
|---|---|---|
| Preferences | `Preferencias.json` | Edit › Preferences... |
| Surveying instruments | `Instrumentos.dat` | Edit › Topographic instruments... (**Instrum** button) |
| Reference systems | `Sistema de Referencia.dat` | Edit › Reference systems... (**RefSist** button) |
| Code library | `Libreria de Codigos.ini` | Not yet edited in the website |

## Preferences

**Edit › Preferences...** opens the "Preferences" dialog box, which works like the dialog box of [Topcal21 for Windows](../menus-de-la-aplicacion/menu-editar.md) with these options:

* **Data default folder**: the folder of "My files" that the "New project" dialog box proposes as the location. The initial value is the root of "My files". The folder button opens the folder selector.
* **Automatically load the last project**: with the check box selected, the workspace opens the most recent project in **Recent projects** when you access `https://topcal21.ai` with a signed-in session without choosing a file. The check box is selected by default.
* **Show deleted records**: the check box appears selected and disabled because the website always shows deleted records.
* **Allow duplicate observations**: allows adding observations with the same station and the same target.
* **Setting HTML...**: opens the "Setting HTML output files" dialog box with the background color, the font and the **Bold** check box of listings in HTML (Hypertext Markup Language). The font name accepts letters, digits, spaces, periods, hyphens and underscores, up to 64 characters.
* **Viewer programs...**: disabled button, because the website shows the listings in the browser.
* **Data points shown** and **Data observations shown**: visible columns of each [grid](rejillas-de-puntos-y-de-visuales.md). By default, all columns are visible.
* **Default number of decimal places of the data**, for angular data (4 by default) and linear data (3 by default). The number of angular decimal places and the number of linear decimal places must be integers from 0 to 10, both ends included. New projects and files opened outside a project use these values; a project uses the decimal places of its "Project properties" dialog box.

**OK** saves `Preferencias.json`. If another process modified the file after you opened the dialog box, the website reports it and does not save. If `Preferencias.json` cannot be read, the dialog box does not save and shows an error message. If it cannot be read when the website saves the data of a wizard, the website shows a message with the **Reset the preferences** button, which, after a confirmation, replaces the file with the default values and deletes the last data saved by the wizards. With a suspended account, the dialog box does not let you save. **Exit** closes the dialog box without saving. The **Help** button of the dialog box is disabled.

The website does not use a dongle: the dialog box does not have the dongle search options.

## Topographic instruments

The "Topographic instruments" dialog box lists the instruments in `Instrumentos.dat` and shows the features of the chosen instrument: angle accuracy, magnification and level sensitivity of the theodolite, and the accuracy of the distance meter. The **Edit...**, **New...**, **Duplicate...** and **Delete...** buttons work as in [Topcal21 for Windows](../otros-comandos/instrumentos-topograficos/README.md). A double-click on an instrument edits it.

## Reference systems

The "Reference systems" dialog box lists the systems in `Sistema de Referencia.dat` and shows the projection features of the chosen system. The **Edit...**, **New...**, **Duplicate...** and **Delete...** buttons work as in [Topcal21 for Windows](../otros-comandos/sistemas-de-referencia/README.md).

## Saving, importing and downloading

In both dialog boxes, changes are saved only when you click **OK**; **Exit** discards the changes. **OK** writes the `.dat` file. If another process modified the file after you opened the dialog box, the website shows a message and does not write.

* **Import from the desktop version…** loads a `.dat` file from the user's computer, for example the `Instrumentos.dat` or `Sistema de Referencia.dat` of Topcal21 for Windows.
* **Download** downloads the saved `.dat` file, to use it in Topcal21 for Windows.
