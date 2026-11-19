# Point and observation grids
<!-- id: topcal21-web-rejillas -->
<!-- origen: be78c65e091cf5d570c1c3e7c215028f282b6c70 -->

The workspace shows each point file (`.pts`) and each observation file (`.obs`) in an editable grid, similar to a spreadsheet. The grids follow the rules of [Topcal21 for Windows](../introduccion/interfaz-de-usuario.md) to validate and save the values you type.

## Columns and rows

The columns of the point grid are **Number**, **X**, **Y**, **Z**, **Orientation**, **Name** and **Code**. The columns of the observation grid are **Station**, **Target**, **Horizontal**, **Vertical**, **Distance**, **Target height**, **Instrument** and **Code**. Choose the visible columns in the [Preferences](preferencias-instrumentos-y-sistemas-de-referencia.md) dialog box. Numbers are shown with the decimal places of the project, if the file belongs to a project, or with the decimal places of the preferences in all other cases.

The grid shows one row per record followed by numbered empty rows. The number of rows is 100 with 0 to 100 records, the smallest multiple of 100 that is not less than the number of records with 101 to 50,000 records, and the number of records with more than 50,000 records. Deleted records are shown in red; the website always shows deleted records.

## Selecting

* A click on a cell makes it the active cell and selects only that cell.
* **Shift** + click on a cell selects the range of cells between the cell at the start of the selection and the cell clicked. **Shift** + arrow key extends the range with the keyboard.
* **Ctrl** + click on a cell adds or removes its row from the selection and extends the column range to include the column of the cell.
* A click on a row number selects the whole row. **Ctrl** + click on a row number adds or removes that row, and **Shift** + click selects the rows between the row at the start of the selection and the row clicked.
* **Ctrl** + **A** and **Ctrl** + **E** select all rows. **Select all** and **Invert selection** in the Edit menu select all rows and the rows that were not selected, respectively.

The arrow keys move the active cell. **Ctrl** + arrow key moves the active cell to the end of the row or of the column. **Tab** and **Shift** + **Tab** move to the next cell and to the previous one; **Tab** in the last cell of the last row moves to a new row. **Page Up**, **Page Down**, **Home** and **End** move the active cell by pages and to the beginning and to the end of the grid.

## Editing cells

To edit the active cell, type a character, press **Enter**, **Backspace** or the space bar, double-click the cell or click the cell that is already the active one. The cell shows a text editor:

* **Enter** accepts the value.
* **Esc** cancels the edit.
* **Tab**, the arrow keys, **Page Up** and **Page Down** accept the value and move the active cell.

Each edit is validated as in Topcal21 for Windows. The website rejects an edit and shows a message in these cases:

* "Cannot add or update the point: another point has the same number.": another undeleted point has the same number, in the point file.
* "Cannot add or update the observation: another observation has the same station and target point.": another undeleted observation has the same station and target, in the observation file, unless the **Allow duplicate observations** preference is selected.

The website converts the text of a numeric cell into a number with the same rule as Topcal21 for Windows: it reads the leading characters that form a number and discards the rest. The decimal separator is the period; the text `1,5` is saved as `1`.

The texts of the **Name** and **Code** columns are trimmed to 29 bytes when you edit the cell, which is the maximum size that the file admits.

### New records

A value typed in an empty row adds a record at the end of the file. If a record is left with all its fields at zero or empty, the website removes it from the file.

### Deleting and retrieving records

* **Delete record** (Edit menu) and the **Delete** button mark the records of the selected rows as deleted. The record stays in the file and is shown in red.
* **Retrieve record** and the **Retrieve** button remove the deletion mark. The website does not retrieve a record if another undeleted record has the same point number, or the same station and target.
* **Del** with complete rows selected runs **Delete record**. **Del** with a range of cells selected clears those cells. **Del** with no selection clears the active cell.

### Undo and redo

**Undo** (**Ctrl** + **Z**) and **Redo** (**Ctrl** + **Y**) step through the edit history of the active document. Each paste, each deletion or retrieval of records and each import into an existing document is a single step of the history.

## Copy, cut and paste

**Copy** (**Ctrl** + **C**) copies the selected cells to the clipboard as tab-separated text, with one line of text for each row of the grid. **Cut** (**Ctrl** + **X**) copies the cells and clears them.

**Paste** (**Ctrl** + **V**) accepts the text separated by tabs and line breaks that Microsoft Excel copies. The block is pasted with its top left corner in the first cell of the selection or, with no selection, in the active cell. The cells of the block are validated as a normal edit, and the whole paste is a single **Undo** step. The order of the text copied from Excel must be the order of the visible columns of the grid.

With the Edit menu or with the menu button, the browser may ask for permission to read the clipboard. If the browser denies it, the website shows a notice and you paste with **Ctrl** + **V** over the grid.

## Sorting

A click on a column header sorts the records by that column in ascending order. Another click on the same column sorts it in descending order. **Sort data...** in the View menu lets you choose the column and the direction. Sorting is a step of the history and, like any edit, it is saved with the file.
