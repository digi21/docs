# Rectificación epipolar
<!-- id: rectificacion-epipolar -->

Especifica el tipo de rectificación epipolar a realizar.

## Valores posibles

* **Solución que modifica menos la foto izquierda**.
* **Solución que modifica menos la foto derecha**.
* **Solución que busca la mayor verticalidad**.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\EpipolarRectification` |
| :--- | :--- |
| Valor | `TipoAjuste` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
