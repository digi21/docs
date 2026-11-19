# Differences from Topcal21 for Windows
<!-- id: topcal21-web-diferencias -->
<!-- origen: 1440b2263781187c68e0784241413efef617f846 -->

Topcal21 web does not yet include all the functions of [Topcal21 for Windows](../README.md). This page lists the functions that are missing and the behaviors that change.

## Commands that are not available yet

The following menu entries and buttons appear disabled, and their tooltip shows "Not available on the website".

| Menu or toolbar | Commands |
|---|---|
| File | Export..., Add file... |
| Edit | Compact file..., Renumber points..., Renumber observations..., Preferences of sketch..., Drawing codes list..., Sketching codes list..., Symbols library..., Link Point files... |
| View | Status bar (the website always shows the status bar) and Object properties... |
| Tools | Observations sketches..., Least squares..., Least squares 3D... and Coordinates transformations... |
| Computations | Maximum and minimum...; Profiles (Longitudinals... and Cross sections...); Transformations (Helmert/Affine..., Geographic coordinates..., Manual geographic coordinates..., Struve to Hayford..., Between reference systems..., Between reference systems using NTV2 grid..., of units... and Change height using grid...); Generate data information (Stations... and Control points...); Compute average Face1/Face2...; Compute average of series...; Compute accidental errors...; Levelling...; Compensation levelling network least squares... |
| Drawing | All the entries of the menu: the website does not yet open or edit sketches |
| Bottom toolbar | **Transfor.** and **Comp3D** |

The website also does not include the Print, Print preview, Printer setup, Open containing folder, Update and Calculator commands of Windows. To print a listing, use the **Print** button of the listing viewer.

The pages of [Topcal21 for Windows](../README.md) explain these functions. To use them, open the project files with Topcal21 for Windows, which reads the same files.

## Functions that change

### Files and projects

* **File › New...** always creates a project. It does not create individual point, observation or sketch files.
* Files are chosen among the files uploaded to [My files](mis-archivos.md); the website does not read files from the computer disk, except the files you drag to the "New project" and "Project properties" dialog boxes, and the `.dat` files of **Import from the desktop version…**.
* Each file can be up to 20 MiB and each account can occupy up to 200 MiB.
* The website does not import DIGI (BIN or ASCII), DXF or DGN files. See [Importing field files](importar-archivos-de-campo.md).
* Instruments and reference systems are saved when you click **OK** in their dialog box; Topcal21 for Windows writes them when the program closes.
* The website does not use a dongle.

### Grids

* The grid always shows deleted records.
* When pasting text from Microsoft Excel, the website separates cells only by tabs and keeps empty cells. Topcal21 for Windows also separates by commas and discards empty cells, so it shifts the following cells.
* Pasting a single cell with several rows selected writes the value only in the selected rows, even if they are not contiguous. Topcal21 for Windows writes it in all the rows between the first and the last selected row.
* If a cell of a pasted block is rejected (for example, a point with a number that already exists), the website skips the rest of the cells of that row and continues with the following rows. Topcal21 for Windows writes only the first cell of each following row.
* A click on a column header sorts by that column. With hidden columns, Topcal21 for Windows interprets the position of the clicked column as the position in the fixed order of all the fields (for points: number, X, Y, Z, orientation, name and code), so it can sort by another field.
* The website trims the text of the Name and Code columns to 29 bytes when the cell edit ends; Topcal21 for Windows trims it when the file is saved.

### Computations

* The website runs each computation on the server. A computation that does not finish in 60 seconds is interrupted, and the website allows at most 2 simultaneous computations per server instance. Topcal21 for Windows does not limit the time.
* The **Help** button of the wizards and of the preferences, instruments and reference systems dialog boxes is disabled.
* The website shows the listings in a viewer inside the page, not in an external viewer program.
* The results dialog box of **Area computation** does not include the plot in a sketch, and the **Adjust...** button is disabled. The Hansen, 2-point resection and traverse wizards show the "Include into sketch" group disabled.
* When you enter an invalid number in a dialog box, the website shows "Please enter a number." or "Please enter an integer.", with the title "Error".

## Numeric results

The computation engine of Topcal21 web is a port to C# of the Topcal21 for Windows engine. The port keeps the order of the operations, the constants and the convergence criteria.

The Topcal21 web server runs Linux, whereas Topcal21 for Windows uses the Windows C library. With the same data, an intermediate result can differ from the one Windows computes in the last digit of its binary representation. Listings with the usual decimal places (for example, 3 linear and 4 angular decimal places) do not show that difference.

## What to do about an unavailable function

If a missing function is necessary for a job, use Topcal21 for Windows with the same files. To tell us about a function you miss, create a [technical support ticket](soporte-tecnico.md).
