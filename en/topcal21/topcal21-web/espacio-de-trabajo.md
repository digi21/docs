# The workspace
<!-- id: topcal21-web-espacio-de-trabajo -->
<!-- origen: 7dc519d1996067744ed9419b8eb67fa09dbe15dd -->

The workspace reproduces the main window of [Topcal21 for Windows](../introduccion/interfaz-de-usuario.md): menu bar, toolbar, project panel, grid of the active document and status bar.

## Opening the workspace

The website opens the workspace in two ways:

* With the **Open in Topcal21** button of a `.prt`, `.pts` or `.obs` file in [My files](mis-archivos.md). The website opens that file.
* When you go to `https://topcal21.ai` with a signed-in session and an active or suspended account. The website opens the last project used if the **Automatically load the last project** preference is selected (it is selected by default). If the project no longer exists in "My files", the website removes it from "Recent projects" and reports it in the status bar.

Each browser tab keeps its own work session with its open files.

## Window elements

### Menu bar

The menus are File, Edit, View, Tools, Computations, Drawing and Help, with the entries of [Topcal21 for Windows](../menus-de-la-aplicacion/README.md), except Print, Print preview, Printer setup, Open containing folder, Update and Calculator, which the website does not include. An entry that the website does not yet run appears disabled, and its tooltip shows "Not available on the website". The [differences from Windows](diferencias-con-el-escritorio.md) list those entries.

### Top toolbar

The buttons, from left to right, are: **Panel**, **New**, **OpenFile**, **OpenProj**, **SaveProj**, **Save**, **Insert**, **Delete**, **Add**, **Undo**, **Redo**, **Delete**, **Retrieve**, **RefSist** and **Instrum**. Each button runs the same command as its menu entry. **Add** (Add file) is not available yet.

### Project panel

The panel on the left contains one button per group: **Other files** and, if a project is open, the project. When you click a button, the panel shows the icons of the files in the group. A click on an icon activates the document and shows its grid. An asterisk (`*`) after the name indicates that the file or the project has unsaved changes. A different icon marks a project file that is not in "My files" or that is not a valid Topcal21 file.

The **Panel** button of the top toolbar shows or hides the panel. In windows 768 pixels wide or more, the panel is visible when the workspace opens. In windows narrower than 768 pixels, the panel is hidden and the **Panel** button shows it over the grid.

### Active document

The central area shows the [grid](rejillas-de-puntos-y-de-visuales.md) of the active document, which can be a point file or an observation file. With no open documents, the area shows the text "Open a project (.prt), a point file (.pts) or an observation file (.obs) with "OpenProj" or "OpenFile", or from "My files".". A `.crq` file of the project appears in the panel, but the website does not yet open it.

### Bottom toolbar

The buttons of the bottom toolbar open the [computation wizards](calculos.md): **Orienta**, **Closure**, **Stakeout**, **Transfor.** and **Observa**, and then **COGO**, **Intersec**, **3-Resect**, **Hansen**, **2-Resect**, **Altimetry**, **Traverse** and **Comp3D**. **Transfor.** and **Comp3D** are not available yet.

### Status bar

From left to right, the status bar shows the last notice ("Ready" if there is none), "Read-only" with a suspended account, the space used and the maximum space of the account, the name and the number of records of the active document, and "Unsaved changes" when a document has been modified.

## Language, theme and account

There are three controls in the top right corner:

* The language selector (**ES** or **EN**) loads the page in the other language. If there are unsaved changes, the browser asks for confirmation before leaving the page.
* The theme button switches between the light theme and the dark theme. The website stores the choice in a cookie for one year.
* The account menu contains **My files**, **Topcal21 sign-up** (only if the account is neither active nor suspended) and **Sign out**.

## Which commands are enabled

Commands follow the same enabling rules as in Windows. For example, the computation tools need an open project, "Import..." needs an active point or observation document, and "Save" is enabled only if the active document has changes. With a suspended account, the website disables the commands that modify documents or write to "My files".

## Saving the changes

The website keeps edits in the session until you run **Save**, **Save project** or **Save all**. Closing a document or a project with unsaved changes asks for confirmation. Closing or reloading the tab with unsaved changes makes the browser ask for confirmation.

**Save as...** asks for a name and saves the document in the same folder and with the same extension.

If the file changed in "My files" after it was opened, for example because another version was uploaded, **Save** shows the "The file has changed" dialog box with these options:

* **Reload**: discards the changes made in the session and opens the version in "My files".
* **Save as**: saves the changes with another name in the same folder.
* **Overwrite**: replaces the version in "My files" with the version in the session.
* **Cancel**: does not save.

If the file was deleted from "My files" after it was opened, the "The file has been deleted" dialog box offers **Save** (creates the file again with the changes) and **Save as**.

## Help menu

* **Contents** opens this help in a new tab, in the language of the page.
* **Create a technical support ticket** opens the support form of www.digi21.net in a new tab. See [Technical support](soporte-tecnico.md).
* **About TopCal 21...** shows a dialog box with links to www.digi21.net, to the Topcal21 page and to technical support.
