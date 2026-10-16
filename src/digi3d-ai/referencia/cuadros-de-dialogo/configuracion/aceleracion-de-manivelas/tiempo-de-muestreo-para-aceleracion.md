# Tiempo de muestreo para aceleración
<!-- id: tiempo-de-muestreo-para-aceleracion -->

Indica el tiempo, en milisegundos, que se utiliza para los cálculos de aceleración. Durante este intervalo se cuentan los pulsos generados por las manivelas para decidir si debe activarse la aceleración.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\IO` |
| :--- | :--- |
| Valor | `TiempoMuestreoAceleracion` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 100 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
