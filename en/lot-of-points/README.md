# Lot Of Points
<!-- id: lot-of-points -->
<!-- origen: af8405066dae084aefd695cb449a0b0da43e3cb6 -->

<img src="../images/lot-of-points-icono.png" alt="Lot Of Points icon" width="128">

**Lot Of Points** is a point cloud viewer and editor for Windows. It lets you explore a cloud in three dimensions, view its accompanying spherical photographs and measure its points. You can open several clouds in the same view and combine them with GeoPackage vector layers to draw on them.

Start in the **Layers** panel, where you can open local files and clouds published on Azure with [Lot Of Points Studio](../lot-of-points-studio/README.md). After opening clouds, you can adjust how points are displayed, zoom to an area of interest or save a view to return to it. The [introduction](introduccion.md) explains how to open clouds, adjust their display and save views, and introduces navigation, measurement and editing tools.

To correct a cloud, select a region or use the points selected by a command and apply Delete, Classify or Isolate. Lot Of Points saves edits separately from the original, supports undo, and can export the edited original of a local cloud to a new LAS file (a point cloud interchange format). Edits to remote clouds are stored on the user's computer.

[Tile-based commands](algoritmos/README.md) can query clouds, change classifications or delete points. Each command chooses the clouds and can also process hidden ones. The [extension manager](gestor-de-extensiones.md) lets you enable installed commands.

Lot Of Points also provides [programming](programacion/README.md) tools. The [Python](programacion/python/README.md) panel lets you write scripts that control the viewer and run its commands; the [C and C++](programacion/c-cpp/README.md) software development kit (SDK) and Python commands let you request points, select points, process tiles and load GeoPackage layers.

## Computer licenses

The **Licenses** page in **Settings** registers the computer with a digi21.net account through the digi21.net licensing system. The program displays a code and opens the activation page in the browser so the user can approve or deny the computer's registration. Registration continues if Settings is closed; if the user reopens **Settings** during registration, they can cancel it from that window.

The page shows the authorization status, key provider and each module's license type (purchase, rental or trial), use end date and support end date. **My licenses on digi21.net** opens the account's licenses in the browser. Authorization is bound to a nonexportable signing key on the computer, created in the Trusted Platform Module (TPM) or, if that provider is unavailable, in the Windows software key store.

The program saves the authorization credential in `%LOCALAPPDATA%\lop\argos\token.jwt` and uses `reloj.json` to store the signed time record. The credential expires at the end of the license revalidation period, 30 days by default. Its expiration date determines how long the program can be used offline. The program requests renewal when less than a third of the credential's validity period remains. If the credential has expired or time must be synchronized with the licensing server, the program retries renewal every 5 minutes.

Authorization requires time synchronization with the licensing server if there is no valid time record or if the estimated server time is more than 5 minutes earlier than the stored minimum time. If a Windows clock error of more than 5 minutes present when the credential was received is corrected, authorization may continue to require time synchronization with the licensing server until the next credential renewal.

## About

**About**, in **Settings**, shows the version of the EPSG (*European Petroleum Survey Group*) dataset, its attribution, links to epsg.org and its terms of use, and the warranty disclaimer. The text states that the application does not charge for EPSG data. Credits include Digi21.WinUI.CrsPicker, Digi21.CrsKit.Interop, crskit and SQLite.
