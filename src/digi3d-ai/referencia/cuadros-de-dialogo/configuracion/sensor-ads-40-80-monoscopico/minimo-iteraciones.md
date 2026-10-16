# Mínimo iteraciones
<!-- id: minimo-iteraciones -->

Indica el número mínimo de iteraciones en la búsqueda de la mejor orientación exterior. Los valores pequeños aumentan la velocidad del proceso, pero pueden hacer que no se seleccione la ecuación correcta.

El valor por defecto es 10.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ADS40Sensor` |
| :--- | :--- |
| Valor | `MinIteracionesB` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 10 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
