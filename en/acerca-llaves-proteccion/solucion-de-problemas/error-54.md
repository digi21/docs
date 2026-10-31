# Error 54
<!-- id: error-54 -->
<!-- origen: aa86b563c67ab3d3474cefa9b245d97d96a755c6 -->

If you sent us a .v2c file and this error appears when clicking _Apply File_ in step 5 of [Received V2C file](/acerca-llaves-proteccion/procedimientos/recibido-archivo-v2c.md):

**Error 54**: Attempting to install a .v2c file with an update counter out of sequence with the Sentinel dongle's update counter. The .v2c counter is lower than the dongle's.

This occurs when you try updating the dongle after the .v2c receipt date. Our server assumes programming occurred on that date and its programming count increased. Since it did not, a mismatch results. The only solution is to resend the file so we can format the dongle, reset it to 0 and program it again.

## Solution

Send a newly generated .c2v file again.
