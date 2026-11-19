# Project pane
<!-- id: panel-proyecto -->
<!-- origen: efd611f87c99e79f06998cb797add71214ad9cf5 -->

[Application panes](/mdtopx/introduccion/paneles-de-la-aplicacion/)

This pane displays the open projects and the files in each of them.

Each open project is a branch of the tree, in the order in which they were opened. Within each project, files are grouped by type:

* TIN
* DEM
* Drawings
* Images
* Roads

Files appear in the order they were inserted. Change this order with **Sort elements** on the [Edit Project](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-proyecto/editar-proyecto.md) ribbon.

The toolbar provides:

* **Insert element**: inserts new elements, grouped by type. For a point cloud, inserting a file opens a [dialog](../../otras-herramientas/division-por-hojas.md) offering preliminary subdivision.
* **Delete element**: removes selected elements.
* **View**: displays selected elements in the project document window. They must also be loaded to appear. A visible element's icon includes a light bulb.
* **Load**: reads selected elements and keeps them active in memory. Loading a file does not necessarily display it. Loaded elements have bold names.
* **Open**: opens the selected element in a new window independent of the project.
* [**Element information**](../../otras-herramientas/editar-elementos/informacion-de-elemento-de-proyecto.md): displays information about the selected element.

Right-clicking an element also offers options to make it visible, load it, open it, remove it or display information.

Use \[CTRL] and \[SHIFT] to select multiple list elements.

## Several open projects

* The **current project** is the one whose name is in bold. The pane toolbar and the ribbon tools act on it.
* Clicking a file of another project makes that project the current one and clears the selection in the others. The selection never mixes files from different projects.
* Activating a project window (for example, from its tab) makes that project the current one and marks its selection again.
* Closing a project removes its branch from the tree. With no project open, the tree is disabled.
* The tree keeps each project's expanded groups when its contents change (when files are inserted or deleted).

## The pane and the active document

* Clicking the pane (a file, an empty area of the tree or the pane tab) activates the project document, even if the selection does not change. Keyboard focus stays in the pane, so you can keep using the arrow keys, \[DEL] or \[INSERT].
* Double-clicking a file opens it, activates its window and gives it the focus, so the selected tool can be used straight away.
* When a tool run from the project creates a new document (for example, a drawing), that document becomes active, receives the focus, and the pane for its type is shown (for example, the [LiDAR pane](panel-lidar.md)).
* The file of the **active document** is highlighted in blue on a light blue background in every project that contains it. When it is selected, it is shown with the selection colours.

## Dragging files onto the pane

Files dragged from Windows Explorer and dropped on the pane are inserted into the project of the branch they are dropped on (outside the branches, into the current project), just as with **Insert element**. If no project is open, the files are opened as documents.
