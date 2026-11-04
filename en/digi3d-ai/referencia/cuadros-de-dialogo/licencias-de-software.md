# Software licenses
<!-- id: licencias-de-software -->
<!-- origen: bf3bb021910ad8423e5b2881ee5bd22b9b367e7e -->

<!-- captura pendiente: licencias-de-software.png -->

This dialog shows the status of the software licenses of the computer. The dialog lets you activate the computer, renew the usage authorization and check the licensed modules. The dialog is available only in the version of Digi3D.AI that uses Software licenses instead of the protection dongle.

## Opening the dialog

The dialog appears in two cases:

* When Digi3D.AI starts and the computer has no editing license. Digi3D.AI does not continue startup until the computer has an editing license or you click **Exit**.
* When you select **Help/Software licenses...**. In this case the dialog has a single button, **Close**.

## Information shown

At the top, the dialog shows these lines of text, without a label:

* The **status** of the licenses of the computer, for example "This computer has a valid usage authorization" or "This computer is not registered". If the authorization has expired or the time must be synchronized, the text tells you to connect to the Internet and click **Renew the usage authorization**.
* Whether any of the licenses of the computer allows you to run this version of Digi3D.AI (editing license).
* Where the cryptographic key of the computer is stored. The key identifies the computer to the licensing server. The computer's cryptographic key is protected by the Trusted Platform Module (TPM) or stored in the Windows software key provider. If Windows cannot open or create the key, the dialog says so and does not allow you to activate the computer.
* The date and time before which the computer must connect to the licensing server ("This computer must connect to the licensing server before..."). The connection deadline appears only when the computer has a valid usage authorization.
* The result of the last operation (for example, that the server granted the authorization or that the request failed) or the progress of the operation in progress.

The list of modules appears after the buttons:

* **Licensed modules on this computer**: one row per licensed module, sorted by module name:
  * **Module**: the module name (see [Digi3D.AI modules](#digi3dai-modules)).
  * **Type**: purchase, rental, trial or unknown.
  * **Use permitted until**: the date and time until which you can use the module. The **Use permitted until** column shows "no limit" if the license has no end date.
  * **Versions compiled up to, inclusive**: the most recent build date of the Digi3D.AI versions that can use this module. A version compiled after that date cannot use the module. The **Versions compiled up to, inclusive** column shows "no limit" if the license has no build date limit.

## Activating the computer

1. Click **Activate this computer**. Digi3D.AI requests a user code from the server and opens the verification page in the web browser. The dialog shows the user code and the address of the page.
2. Check that the browser page shows the same user code as the dialog. If the browser did not open, type in the browser the address shown in the dialog.
3. Sign in to digi21.net.
4. Approve the registration of the computer and choose the licenses to activate on it.
5. Return to Digi3D.AI. While Digi3D.AI waits for approval of the computer registration, the program queries the licensing server, detects the approval automatically and updates the license status and the list of modules. You do not need to click any button.

If the user code expires before you approve the registration, the dialog says so; click **Activate this computer** to request a new code. If you reject the registration on the page, the dialog says that it was rejected.

## Buttons

* **Activate this computer**: starts the procedure above when the computer is not registered. If the computer is already registered, the button is named **Activate licenses on this computer** and repeats the same procedure to activate more licenses on the computer. The activation button is disabled while another operation is in progress, while Digi3D.AI starts the licensing service and when Windows cannot open or create the key of the computer.
* **Cancel the registration**: stops waiting for the approval. The **Cancel the registration** button is enabled only while a computer registration is in progress.
* **Renew the usage authorization**: requests a new usage authorization from the server. The renewal button is enabled when the computer has a valid authorization, when the authorization has expired or when the computer's time must be synchronized. The renewal button is disabled while another operation is in progress.
* **My software licenses**: opens in the web browser the digi21.net page with the software licenses of your account.
* **Continue**: closes the dialog that appears when Digi3D.AI starts and continues the startup. The **Continue** button is enabled only when the computer has an editing license.
* **Exit**: closes the dialog and Digi3D.AI does not start. The **Exit** button appears only during Digi3D.AI startup.
* **Close**: closes the dialog opened from the **Help** menu.

## Usage authorization and offline work

The usage authorization lets you work without an Internet connection until the date shown in the line "This computer must connect to the licensing server before...". When a connection is available, Digi3D.AI renews the authorization automatically. If that date passes without the computer connecting, the status changes to indicate that the authorization has expired, and you must connect to the Internet and click **Renew the usage authorization**.

## Digi3D.AI modules

* `digi3d.edicion`: allows you to run Digi3D.AI.
* `digi3d.fotogrametria`: allows you to use the photogrammetric window. Without this module, Digi3D.AI warns that the computer has no photogrammetry license and loads only the Digi3D.Orthophoto and Digi3D.CommonCommands extensions, so the photogrammetric window can open only orthophoto models.
* `digi3d.stereodtm`: enables the commands `dibuja_buffer`, `vaguada_buffer`, `guardar_dem`, `proyecta_dem`, `proyecta_linea_sobre_dem` and `mover_z_dem`.

## Limitations of this version

* The MDTopX digital terrain model commands (triangulation and DTM importer) are not available.
* You cannot open or create encrypted code tables.
