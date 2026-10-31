# Extension manager
<!-- id: lot-of-points-gestor-de-extensiones -->
<!-- origen: a754f07a7e37deeeb04fb2a8d24f6342d280f3ea -->

Extensions add commands to Lot Of Points through dynamic-link libraries (DLLs) or Python files. A command can request points, select points or [process clouds by tiles](algoritmos/README.md). The manager lets you enable or disable each extension and its commands.

## Open the manager

1. Click **Settings**, the gear on the title bar.
2. Select **Extensions** in the side menu.

The page appears when the program knows of an extension. The manager groups commands by file and shows an **Enabled** switch and a switch for each command. Disabling an extension removes all its buttons; disabling a command removes that button. Command controls remain disabled while the extension is disabled.

The program applies changes without restarting and rebuilds the affected tabs. Lot Of Points keeps a command's DLL loaded while that command runs. A running Python command retains the global variables of its loaded file.

## Install extensions

To install a DLL:

1. Close Lot Of Points.
2. Create `%AppData%\lop\algorithms` if the folder does not exist.
3. Copy the DLL and its dependencies into that folder.
4. Open Lot Of Points.

The program searches that folder first, then `algorithms` in its installation. It loads DLLs alphabetically within each folder. DLLs must export `lop_register_commands`; Lot Of Points does not load extensions that export only `lop_register`. See [Install and check a DLL](programacion/c-cpp/instalar-y-comprobar.md).

To install Python commands:

1. Create `%AppData%\lop\commands` if the folder does not exist.
2. Copy the `.py` files and their icons into that folder.
3. Restart Lot Of Points.

The program loads enabled files on a background thread and adds their commands after the DLL commands. Python commands declaring the same section on the same tab share that section. See [Python](programacion/python/README.md).

## Extension store

The digi21.net store publishes extensions from Digi21 and other developers. Digi21 reviews each version before publishing it. To use the store, the computer must be registered with a digi21.net account (**Settings** > **Licenses** > **Activate this computer**).

1. Click **Settings**, the gear on the title bar.
2. Select **Store** in the side menu. The page downloads the catalog from digi21.net.
3. Click **Install** on an extension and confirm installation.
4. Close and reopen Lot Of Points. The program loads installed extensions at startup.

A paid extension needs a license for its module activated on the computer. Until the store supports payments, **Request a demo** creates a trial license for the computer if the extension offers one. Each account and each computer can have one trial of each module. The computer's licenses appear in **Settings** > **Licenses** and in **My Lot Of Points licenses**, on digi21.net.

Lot Of Points stores each installed version in `%LocalAppData%\lop\extensions\<extensión>\<versión>`. At each startup, it checks the digi21.net signature of each version's manifest and the cryptographic hash of every file, and does not load a version with modified, added or deleted files. For each extension, the program loads the newest verified version that supports the installed Lot Of Points version and that Digi21 has not withdrawn from the store.

A purchase permits use of extension versions published up to the end date of the support included in that purchase. If support ended before the installed version was published, the program does not show that version's command buttons.

**Uninstall** deletes all installed versions of the extension. If Lot Of Points has files from the extension loaded, it deletes them at the next startup.

## Enabling and configuration

New extensions are enabled. The program remembers disabled extensions and commands. Each extension is identified by its filename; keeping that name preserves its state when updating. At startup, the program removes settings for extensions that no longer exist in its folders.

A command enabled in the manager can have a disabled button if its declared requirements are not met. For example, a command requiring a visible cloud cannot start when all clouds are hidden. Built-in command buttons that require a document are disabled when no cloud is open.

## Diagnostics and shutdown

The **Output** panel shows loading problems with the prefix “Extensions:”. Lot Of Points keeps the first valid declaration of each identifier and displays a warning if it finds another declaration with that identifier. Each warning is issued once per session.

When closing Lot Of Points with extension command threads running, the program requests cancellation and waits up to 3 seconds. During this wait it displays “Cancelling the extension commands before closing Lot Of Points…”.
