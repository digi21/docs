# Update your Hasp HL dongle
<!-- id: actualizando-llave-hasp-hl -->
<!-- origen: 180572d71fd79f470e4d678efb3bf7513247f0d8 -->

Follow these instructions if you already have a _Hasp HL_ dongle.

\
After these steps, the dongle driver will be installed and we will have added the parameters required to run programs released after October 1, 2014.

This does not delete dongle information: for example, an existing Digi3D 2007 license remains. Nothing relating to earlier versions is changed; the dongle is only prepared for applications released after October 1, 2014.

1. Install the desired program if not already installed:\

    * [Digi3D.AI](/digi3d-ai/referencia/)
    * [MDTopX](/mdtopx/)
    * [Topcal21](https://www.digi21.net/Topcal21/Download)

    These installers include the **Licenses Application Suite**. If using an older installer without it, download and install the [Licenses Application Suite](https://digi21.blob.core.windows.net/download/SetupSuiteLicencias\_es-ES.exe).
2. Click [http://localhost:1947/\_int\_/devices.html](http://localhost:1947/\_int\_/devices.html). _Sentinel Admin Control Center_ appears.\
   The main table has _Location, Vendor, Key ID, Key Type, Configuration, Version, Sessions_ and _Actions_ columns.
3. Connect the dongle to its _USB_ port. Its indicator should be lit. If not, unplug and reconnect it. Wait for driver installation. If still unlit, try another USB port. If that fails, contact _Digi21_ technical support at [https://www.digi21.net/Soporte](https://www.digi21.net/Soporte).
4. The table lists dongles found on your computer and company network, if connected.
5. Find your dongle. It is the only one with these characteristics:\

    | Location | Local |
    |---|---|
    | Vendor | 78585 |
6. Check that _Version_ is **3.25** or higher.\
   If lower, follow [Update your Hasp HL dongle firmware](/acerca-llaves-proteccion/obtener-una-llave-de-proteccion/actualizando-tu-llave-de-proteccion/actualizando-llave-hasp-hl/actualizando-firmware.md).
7. Download and run [ActualizarLlaveLDK.exe](http://digi21.blob.core.windows.net/download/ActualizarLlaveLDK.exe).\
   It analyzes the dongle and creates a file allowing remote reprogramming.
8. _Sentinel HASP RUS_ appears with _Collect Key Status Information_ and _Apply License Update_ tabs.
9. On _Collect Key Status Information_, click _Collect Information._
10. _Save Key Status As_ appears.\
    Specify the location and name of the _.c2v_ file to send us.
11. Enter the location and name of the _.c2v_ file to create.
12. Send it to [info@digi21.net](mailto:info@digi21.net) or the address that requested these files, with:
    * Company name.
    * Tax identification number (N.I.F.).
    * Address.
    * Postal code.
    * Contact person.
    * Telephone.
    * Email address.

We will reply by email with further instructions.
