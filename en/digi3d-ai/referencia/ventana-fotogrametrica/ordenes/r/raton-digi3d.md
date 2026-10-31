# DIGI3D\_MOUSE
<!-- id: raton-digi3d -->
<!-- origen: 1f6f0672bdbbce015661e519d5c37f40b8af1234 -->

Captures and releases the Windows mouse in the photogrammetric window.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic mode | With no parameter, toggles the Boolean variable on or off.<br>**0**: disables the Boolean variable.<br>**1**: enables the Boolean variable.<br>**?**: queries its value. A balloon indicates whether the command is enabled or disabled. | Yes |

## Notes

Regardless of the selected input device \(topo-mouse, handwheels, etc.\), you can always use any mouse connected to the system as an input device in the photogrammetric window.

When the photogrammetric window captures the mouse, it hides the pointer until the mouse is released. Mouse movements become movements of the images displayed in the photogrammetric window.

With no parameters, toggles mouse capture: releases a captured mouse or captures a released mouse.

DIGI3D_MOUSE cannot release mice configured for exclusive use in the photogrammetric window.

There are two ways to capture the mouse:

1. Click in the photogrammetric window \(if _Click to capture mouse_ is enabled under _Stereoscopy_ in _Configuration_\).
2. Run _DIGI3D\_MOUSE_.

There are three ways to release the mouse:

1. Hold _Ctrl_. The mouse remains released while you hold the key, so you can use menus, toolbars and other interface elements. Releasing _Ctrl_ captures the mouse again.
2. Run _DIGI3D\_MOUSE_.
3. Press _Enter_, then _Esc_. _Enter_ opens the command entry window; _Esc_ closes it. This sequence releases the mouse if it was captured.

## Command characteristics

| Command type | [Boolean variable]() |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | Digi3D.CommonCommands.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {D14B2F4A-B798-4670-A7C7-E64489ED1A1D} |
