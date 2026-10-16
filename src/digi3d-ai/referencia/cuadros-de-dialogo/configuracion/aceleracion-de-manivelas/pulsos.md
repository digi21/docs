# Pulsos
<!-- id: pulsos -->

Indica el número mínimo de pulsos que, al superarse dentro del tiempo definido en [Tiempo de muestreo para aceleración](tiempo-de-muestreo-para-aceleracion.md), desencadena el proceso de aceleración del desplazamiento de las imágenes.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\IO` |
| :--- | :--- |
| Valor | `PulsosAceleracion` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 150 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
