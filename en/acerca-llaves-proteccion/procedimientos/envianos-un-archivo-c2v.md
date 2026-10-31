# Send us a C2V file
<!-- id: envianos-un-archivo-c2v -->
<!-- origen: 061639a564756544186959a71305aee756bdf3f9 -->

**C**lient**2V**endor files contain your dongle's state and are needed for remote changes.

After modifying the dongle, we send a **V**endor**2C**lient file to update it as explained in [Received C2V file](recibido-archivo-v2c.md).

Generate the C2V **on the machine hosting the dongle**. If on a server, you or the system administrator must follow this procedure through a remote desktop session on that server. A local dongle can be handled on your own machine:

1. Download and run [ActualizarLlaveLDK.exe](http://digi21.blob.core.windows.net/download/ActualizarLlaveLDK.exe).\
   It analyzes the dongle and creates a file allowing remote reprogramming.
2. _Sentinel HASP RUS_ appears with _Collect Key Status Information_ and _Apply License Update_ tabs.
3. On _Collect Key Status Information_, click _Collect Information._
4. _Save Key Status As_ appears.\
   Specify the location and name of the _.c2v_ file to send us.
5. Enter the location and name of the _.c2v_ file to create.
6. Send it to [info@digi21.net](mailto:info@digi21.net) or the email address that requested the C2V file.
