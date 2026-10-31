# Tile-based algorithms
<!-- id: lot-of-points-algoritmos -->
<!-- origen: 56b17b798701ed7c3b1957db08fa8b68fa838d13 -->

Extension commands can process clouds by tiles using `process_tiles`. The command chooses the clouds and options; Lot Of Points prepares the tiles, calls the `process_tile` function to process each tile, and records the classification and deletion changes committed by the calculation.

A tile is a square region in plan view spanning the cloud's full height. The program divides points so the calculation can traverse clouds in parts.

## Where to find the buttons

Extensions add commands through dynamic-link libraries (DLLs) or Python files. Each command declares an existing tab or the title of a new one, and the section where its button appears. New tabs appear after the built-in Lot Of Points tabs.

The example DLL `lop_examples.dll` distributes its buttons as follows:

| Tab | Section | Commands |
|---|---|---|
| Visualization | Basic algorithms | Information and Point data. |
| Selection tools | Basic algorithms | Select object. |
| Point classification | Basic algorithms | Remove classification and Classify by height. |

The [extension manager](../gestor-de-extensiones.md) lets you enable or disable commands. The [Programming](../programacion/README.md) section explains how to create extensions.

## Run a command

1. Open the clouds you want to process.
2. Review the command's parameters in **Settings**, on the page for its extension section.
3. Click the command button.
4. Read the messages in **Output**.

The command reads parameters when execution starts. Its button stays pressed while it is active. If the command declares requirements, the program disables its button when they are not met. **Information** requires an open cloud; both classification commands require a cloud with an edit log and original-file indices.

During `process_tiles`, the program shows progress over the view with the message “*command*: *percentage*. Esc to cancel.” The viewer displays classes and deletions as tiles are processed. If the contents of **Output** are hidden when the command writes, its tab flashes until the user shows the panel. Each command determines its summary messages.

## Which clouds an algorithm processes

The command selects clouds by their identifiers; `process_tiles` can also process **hidden clouds**. Clearing a cloud's checkbox in **Layers** changes its visibility, but does not exclude it from commands that selected it.

**Information** reads all open clouds, local and remote, without requiring an edit log or original indices. **Remove classification** and **Classify by height** choose clouds with an edit log and original indices, including hidden ones, and report skipped clouds.

A command can request Global Positioning System (GPS) time and the flight line identifier. `process_tiles` fails if any requested cloud lacks a required attribute. The call also fails if a cloud is no longer open or does not meet editing conditions, unless the command requests read-only mode.

During processing, the user cannot close reserved clouds. Other clouds can be opened and unreserved ones closed. If a scene would remove a reserved cloud, the program does not open that scene and displays a notice asking the user to cancel the command with **Esc** or wait for it to finish.

## Results and history

Each `process_tiles` call that commits point changes records an editing event. The log stores the command identifier; **History** shows the command's current name if available, or the event code. A call with no changes adds no event.

Click **Undo** or **Redo** on the title bar to move through edits. The buttons are disabled when there is no edit to undo or redo. **History**, beside those buttons, displays events; if there are none, it displays “No edits recorded yet.”

The original file retains its contents. To generate a LAS file (a point cloud interchange format) with the changes to a local cloud, use **Export edited**. A command can load a GeoPackage as layers through `load_geopackage`.

A calculation failure discards the results of that call. A saving error can leave the event committed in some clouds; the program retains those changes and allows undo.

## Cancel or close the program

Press **Esc** to request cancellation. During processing, the message changes to “*command*: cancelling. Running tiles stop at their next step.” Each calculation must check for cancellation to stop. Clicking another command's button also requests cancellation of the active command.

A cancelled `process_tiles` call discards that call's results. Cancellation does not undo an earlier call already committed by the same command.

When closing Lot Of Points with extension command threads running, the program requests cancellation and displays “Cancelling the extension commands before closing Lot Of Points…”. It waits up to 3 seconds for the threads to finish and prevents commands from starting during this wait.

## Parameters and tiles

**Settings** creates one page per section of each extension and groups parameters by command and `settings_group`. Sections of the same extension with the same title share a page even if they appear on different tabs. The program shows names, units and descriptions, saves changes as controls are modified, and uses the values on the next run. A saved value outside its declared range is replaced with the default.

An extension's controls can report errors from asynchronous operations in the status bar.

Each tile has a **core** and can include an **overlap** band. The calculation uses neighboring points in the overlap, but the program saves results only for core points. The grid starts at multiples of the core side length. Lengths use the cloud coordinate units; these can be degrees if the cloud uses geographic coordinates.

The program supplies edited classes and excludes deleted points. When points are isolated, only points within the isolation are supplied. Tiles with no core points are skipped. If the command enables concurrency, the program can calculate several tiles at once.
