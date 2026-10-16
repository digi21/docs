# Factor de correlación
<!-- id: factor-de-correlacion -->

Indica el factor de correlación por debajo del cual el programa considera que la correlación no ha sido válida y avisa al usuario mediante el sonido de error.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation` |
| :--- | :--- |
| Valor | `MinimoCorrelacionRelativa` |
| Tipo | `REG_BINARY` (número real de 8 bytes, `double`) |
| Valor por defecto | 0.5 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
