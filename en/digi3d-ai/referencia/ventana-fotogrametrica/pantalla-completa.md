# Full screen
<!-- id: pantalla-completa-ventana-fotogrametrica -->
<!-- origen: 305921ac9262cf55297e47fab32962af2c089785 -->

The photogrammetric window can fill a whole monitor, without title bar, menus, toolbars, status bar or panels. This mode is intended for 3D glasses and 3D televisions that Windows identifies as one more monitor and that show the image for each eye in one half of the screen: side-by-side (SBS) or top-and-bottom.

## Turn on full screen

1. Open the **Configuration** dialog and go to the **Photogrammetric window** category.
2. Choose the monitor of the glasses or the 3D television in **[Full-screen photogrammetric window on monitor](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/ventana-fotogrametrica-a-pantalla-completa-en-el-monitor.md)**.
3. Choose the layout that matches the display mode of the screen in **[Stereoscopy](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/estereoscopia.md)** (see [3D glasses and televisions](#3d-glasses-and-televisions)).
4. Click **OK**. If you switched between **None (normal window)** and a monitor, the dialog forces Digi3D.AI to restart.
5. Open a model.

If the chosen monitor is connected when you open a model, the photogrammetric window automatically switches to full screen on that monitor, on top of the other windows and covering the entire rectangle of the monitor. Over the image area, Digi3D.AI hides the Windows cursor, because it would be visible to only one of the two eyes.

With a monitor chosen, Digi3D.AI uses independent photogrammetric windows even if the photogrammetric window is configured to appear inside the main window.

## Switch between full screen and normal window

Press **F11** or choose the **Full screen on the configured monitor** option of the **Photogrammetric window** menu to switch between full screen and the normal window. The description of the option is “Show the photogrammetric window full screen on the configured monitor”.

* The option is disabled, and F11 has no effect, if the property is set to **None (normal window)** or the chosen monitor is not connected. While the photogrammetric window is full screen, the option is enabled and restores normal window mode.
* **F11** runs this option only if the [key configuration file](../archivos/archivo-de-configuracion-de-teclas/README.md) does not assign another command to F11.
* When it restores normal window mode, Digi3D.AI restores the position and size of the photogrammetric window and shows the toolbars and panels that were visible before full screen was activated.
* If the photogrammetric window was maximized before full screen was activated, Digi3D.AI saves its state as not maximized when the window closes.
* Only one photogrammetric window is full screen at a time. When one window goes full screen, any other window that was full screen returns to the normal window.
* With two photogrammetric windows open, F11 acts on the one that had the focus last.
* If the monitor changes resolution, Digi3D.AI repositions the window. If the monitor is disconnected, the window returns to the normal window.

## The main window during full screen

While a photogrammetric window is full screen, the main Digi3D.AI window contains these elements:

* The **Photogrammetric window** menu, inserted after the **File** menu, with the options that act on the full-screen window.
* At the end of the status bar, the indicators of the photogrammetric window: zoom, speeds, coordinate type, coordinates, reference system, tentative Z and pedal, with the zoom and coordinate type drop-down lists.
* At the top, a toolbar with a copy of the buttons that the sensor of the model adds to the sensor's toolbar. For example, the 3D models sensor adds **Automatic Z**, **Top** and **Bottom**. Digi3D.AI rebuilds the copy when the model changes and removes it when full screen ends; the copy is not saved in the toolbar layout.
* The buttons of the main window toolbars that the drawing window does not handle act on the full-screen photogrammetric window.

When full screen ends, Digi3D.AI shows the menu and the indicators in the photogrammetric window again and removes the copied toolbar from the main window.

## Close the window

The full-screen window has no close button. To close it, choose **Close photogrammetric window** in the **Photogrammetric window** menu of the main window. The description of the option is “Closes the photogrammetric window”.

The **Close photogrammetric window** option is at the end of the **Photogrammetric window** menu, after a separator, and it exists both with independent photogrammetric windows and with the photogrammetric window inside the main window.

## 3D glasses and televisions

Windows identifies 3D glasses (for example, XREAL glasses in 3D mode) or the 3D television as one more monitor, and each eye sees one half of the image. In the [Stereoscopy](../cuadros-de-dialogo/configuracion/ventana-fotogrametrica/estereoscopia.md) list, choose the layout that matches the display mode of the screen:

| Display mode | **Stereoscopy** layout | Behavior |
| :--- | :--- | :--- |
| Full side-by-side (Full SBS), for example 3840 × 1080 pixels (width × height) on glasses with 1920 × 1080 pixels per eye | **Stereoscope or full 3D side-by-side (Full SBS)** | Each eye receives half of the horizontal pixels without distortion. |
| Half-width side-by-side (Half SBS), for example 1920 × 1080 pixels (width × height) | **Half-width 3D side-by-side (Half SBS)** | The screen stretches each half to twice its width. Digi3D.AI draws each half compressed to half its width so that it appears with the correct proportion. |
| Top-and-bottom | **3D Top and bottom** | The image for one eye fills the top half of the screen and the image for the other eye fills the bottom half. |

The **Stereoscope or full 3D side-by-side (Full SBS)** layout is the same one used with mirror stereoscopes.
