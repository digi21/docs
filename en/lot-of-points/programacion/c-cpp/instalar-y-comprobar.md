# Install and check a DLL
<!-- id: lot-of-points-sdk-instalar -->
<!-- origen: af757c962ccf7e65d6431b16da06b19b617c918f -->

A command dynamic-link library (DLL) must use the software development kit's (SDK) current `lop_sdk.h` header and export `lop_register_commands`.

## Install

1. Compile the DLL for 64-bit Windows.
2. Close Lot Of Points before replacing a loaded DLL.
3. Create `%AppData%\lop\algorithms` if the folder does not exist.
4. Copy the DLL and its dependencies into it.
5. Open Lot Of Points.

Lot Of Points searches each DLL's dependencies with Windows loading options including the DLL's folder and default system directories. It loads DLLs from `%AppData%\lop\algorithms` first, then from the installation's `algorithms`, alphabetically within each folder. The first valid declaration of an identifier takes priority.

## Check

1. Open **Settings** and select **Extensions**.
2. Check that the extension and its commands are enabled.
3. Check buttons on the declared tabs.
4. Open a cloud meeting the command requirements.
5. Run the command and read **Output**.
6. Click **Undo** on the title bar if the command committed an edit you want to undo.

The `lop_examples.dll` **Basic algorithms** section appears on **Visualization**, **Selection tools** and **Point classification**. A button enabled in the manager can be disabled in the ribbon by `LOP_REQUIRES_*` requirements.

## If the DLL does not appear

1. Check the file location and 64-bit architecture.
2. Check that the DLL exports `lop_register_commands` without name decoration.
3. Check that registration returns `LOP_OK` and at least one valid command.
4. Read **Output** warnings.

To inspect exports, run `dumpbin /exports mi_dll.dll` in an environment with that tool. In C++, use `extern "C"` or `LOP_SDK_COMMANDS` as explained on the [C++ page](cpp.md).

Warnings contain the “Extensions:” prefix and file path. Some catalog diagnostics have no accents; these fragments reproduce the code:

| Warning fragment | Cause |
|---|---|
| `no se puede cargar (error 126)` | Windows cannot find a dependency. |
| `no se puede cargar (error 193)` | Windows rejects the executable format; check its architecture. |
| `lop_register_commands no acepta la version 1 del SDK` | Registration returns a value other than `LOP_OK`. |
| `devuelve commands nulo` | Registration declares commands but returns a null array. |
| `declara algoritmos por teselas con lop_register, que esta version no carga` | The DLL uses the removed interface; it must declare commands and call `process_tiles`. |
| `ya esta declarado, en esta DLL o en otra` | A command identifier is duplicated. |
| `no declara exactamente uno de los campos existing_tab_id y new_tab_title` | The declaration does not choose exactly one way of specifying the tab. |
| `no tiene run` | The declaration lacks an execution function. |

A DLL exporting neither `lop_register_commands` nor `lop_register` is treated as a dependency and produces no missing-registration warning.

If the extension appears but its button is missing, check the manager switches and declared tab. The program warns if `existing_tab_id` names a nonexistent or contextual tab.

## If processing fails

Read the reason logged by `process_tiles` in **Output**. The command chooses clouds; the function does not automatically skip an invalid cloud in the requested list. Processing fails if a cloud is not open, lacks a requested attribute or does not meet editing conditions. Read-only mode requires neither an edit log nor original indices.

If each point's original-file index is missing, regenerate the level of detail: close the local cloud, delete its cache folder and open the original. For a remote cloud, prepare and publish the level of detail again with Lot Of Points Studio; deleting the downloaded cache does not add attributes to published data.
