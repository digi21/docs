# Select dongle
<!-- id: selecciona-llave -->
<!-- origen: 45bac0df80301c5462551f6f008fef33a222e3ae -->

This program specifies which dongle a particular program connects to.

All our applications (_Digi3D.AI, Topcal21, MDTopX_,...) install **Select dongle** for this purpose.

If you have several dongles and configure none for a program, it connects to the first available, which may lack a license for that program.

Suppose dongle _A_ has a purchased _Digi3D.AI_ license and _B_ has an _MDTopX_ rental.\
Without configuration telling _MDTopX_ to use _B_, it may find _A_ first and display [Technical support expired](/acerca-llaves-proteccion/solucion-de-problemas/soporte-tecnico-finalizado.md).

Tell _MDTopX_ to use _B_ with **Select dongle**, under _Start/All Programs/Digi21.net/MDTopX_.\
For Digi3D.AI, find it under _Start/All Programs/Digi21.net/Digi3D.AI_.\
For Topcal21, find it under _Start/All Programs/Digi21.net/Topcal21_.

The program lists connected dongles with the configured one selected. Choose the desired dongle and click **OK**.

A checkbox specifies that no particular dongle should be configured. Checking it and clicking **OK** removes the specific configuration; the program connects to the first available dongle.

Administrator permissions are needed to save configuration: Windows asks for confirmation on startup.

This screenshot shows _Digi3D.AI_'s **Select dongle**:

![Select dongle program screenshot](../../images/selecciona-llave.png)
