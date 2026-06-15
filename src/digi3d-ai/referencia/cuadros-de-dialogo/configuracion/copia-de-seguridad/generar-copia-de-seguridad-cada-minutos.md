# Generar copia de seguridad cada (minutos)

Indica cada cuánto tiempo, en minutos, se genera una copia de seguridad del archivo de dibujo. Para deshabilitar las copias de seguridad automáticas, introduce **0**.

La comprobación se realiza únicamente al almacenar una geometría: cada vez que se almacena una geometría se comprueba si se ha superado el número de minutos indicado y, en caso afirmativo, se genera la copia de seguridad y se reinicia el contador. Si no se almacena ninguna geometría no se genera ninguna copia, de modo que si dejas el programa abierto sin interactuar no se acumularán copias de más.
