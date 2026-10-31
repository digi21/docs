# Changing the photogrammetric window's speed
<!-- id: cambiando-la-velocidad-ventana-foto -->
<!-- origen: 07f26792391a019e09b32cb011c355935d44444c -->

You can change how fast you move in the photogrammetric window to navigate faster or more precisely.

The photogrammetric window has two speeds:

1. Movement speed in the XY plane.
2. Movement speed along the Z axis.

### Viewing the current speed

On the photogrammetric window's message bar, just after the zoom drop-down list, an area displays the XY plane and Z movement speeds.

After the Z speed, you will see `(scaling)` when speed scaling is enabled, which is the default. With scaling enabled, the active speed is multiplied by the display scale factor, so you perceive the same movement at every zoom level.

Without this option, the number of handwheel turns needed to cross the image would be the same at every zoom level. For example, zooming out to 64:1 would require as many turns as at 1:1, making movement feel very slow. With scaling enabled, the speed applied at 64:1 is the active speed multiplied by 64. Thus, if one encoder increment (handwheel or mouse) corresponds to one pixel at pyramid level 1, it also corresponds to one pixel at level 64.

### Using the keyboard

The following keys have commands assigned that change movement speed without opening the menu:

1. Press **+** on the numeric keypad to increase movement speed in the XY plane.
2. Press **-** on the numeric keypad to reduce movement speed in the XY plane.
3. Press **\*** on the numeric keypad to increase movement speed along the Z axis.
4. Press **/** on the numeric keypad to reduce movement speed along the Z axis.
