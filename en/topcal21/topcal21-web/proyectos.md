# Projects
<!-- id: topcal21-web-proyectos -->
<!-- origen: 06e4da85f69dedf66e455d904e2942d37244f6e2 -->

A Topcal21 web project is a `.prt` file that lists the point files (`.pts`), observation files (`.obs`) and sketch files (`.crq`) of the job, as in [Topcal21 for Windows](../estructura-de-archivos/fichero-de-proyecto.md). The project files are in a folder of [My files](mis-archivos.md). The Tools menu and bottom toolbar wizards, except "Closure of triangles", need an open project whose group is active in the project panel. "Closure of triangles" needs an observation file as the active document.

Files opened without a project (with **Open...**) appear in the **Other files** group of the project panel.

## Creating a project

**File › New...** (**New** button) opens the "New project" dialog box. The website always creates a project; it does not create individual point, observation or sketch files.

1. Type the **Project name**. The name cannot contain the characters `\ / : * ? " < > |` or end in a period or a space.
2. Click **Choose folder…** and choose the folder of "My files" where the project is created (**Folder**). The initial value is the "Data default folder" of the [preferences](preferencias-instrumentos-y-sistemas-de-referencia.md).
3. Drag to the files area, or choose with the browser file selector, the files on your computer that will make up the project. The list indicates, for each file, whether it "Will be added to the project" (`.pts`, `.obs` and `.crq` files) or is "Only uploaded to the folder" (any other type). A file can be up to 20 MiB and the files in the list can add up to 100 MiB. The button in the row removes a file from the list.
4. Click **Create**.

The website creates the folder `Folder/Project name/` with the `.prt` file and the files in the list, and opens the project. If the folder already exists, the website does not create the project. The file list can be empty; files are added later with **Insert files...**.

## Opening a project

* **File › Open project...** (**OpenProj** button) opens the "My files" selector with the `.prt` files in the current folder. Choose a file.
* **File › Recent projects** lists the last 5 projects opened. A project that no longer exists in "My files" is removed from the list when you try to open it.
* The **Open in Topcal21** button of a `.prt` file in "My files" opens the project when the workspace loads.
* With the **Automatically load the last project** preference selected, the workspace opens the most recent project when you enter without choosing a file.

An opened project replaces the previous project. If the previous project has unsaved changes, the website asks for confirmation and, if you accept, discards those changes.

If a file listed in the project is not in "My files", the project panel shows its icon as "not found". If the file is not a valid Topcal21 file, the panel marks it as not valid and the grid shows the reason.

## Opening a single file

**File › Open...** (**OpenFile** button) opens the "My files" selector with the `.pts` and `.obs` files in the current folder. The file is added to the "Other files" group. **File › Close** closes the active document of the "Other files" group; with unsaved changes, the website asks for confirmation. To remove a file from a project, use **Delete files...**.

## Project properties

**View › Project properties...**, **File › Insert files...** and **File › Delete files...** (and their **Insert** and **Delete** buttons) open the "Project properties" dialog box. With a suspended account, the dialog box only shows the data and does not let you change it.

The dialog box contains:

* **Job name**, editable. **File name** and **Project folder** (the project folder in "My files") cannot be edited.
* **Number of files** and **Number of elements**: the number of point, observation and sketch files and the number of points and observations in the project.
* **Number of decimal places of the data**: decimal places of the angular data and of the linear data, from 0 to 10.
* **Project files**: a table with the file, the type, the status ("Not found", "Not valid", "With unsaved changes", "In the project", "Uploaded on OK" or "Added on OK") and a selection check box.

To insert files, use one of these procedures and click **OK**:

* Click **Choose from the container…** and choose a `.pts`, `.obs` or `.crq` file that is already in "My files".
* Drag files from your computer to the files area. The website uploads those files to the project folder when you click **OK**.

To remove files, select the check boxes of the files and click **Remove from the project**. The website removes the files from the project list. If you select the **Also delete from the container the files removed from the project** check box, the website deletes those files from "My files" when you save the project; this operation cannot be undone. If a removed file has unsaved changes, the website warns that those changes will be lost.

**OK** applies the changes to the open project, but it does not save the `.prt` file: the project keeps unsaved changes until you run **Save project**. **Cancel** changes nothing.

## Saving and closing

* **Save project** (**SaveProj** button) saves the `.prt` file. It is enabled only if the project has changes.
* **Save all** saves the project and all the modified files.
* **Save** (**Save** button) saves the active document. **Save as...** saves it with another name in the same folder.
* **Close project** closes the project and the files of "Other files". If there are unsaved changes, the website asks for confirmation and discards them if you accept.

New point or observation files created by [computations](calculos.md) have unsaved changes. Save the new files with **Save** or **Save all** to keep them.
