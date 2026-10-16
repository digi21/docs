# Almacenar instantánea
<!-- id: almacenar-instantanea -->

Si está activo, al medir un punto se almacenará una instantánea de dicho punto.

## Valores posibles

* **Sí**.
* **No**.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\AbsoluteOrientation` |
| :--- | :--- |
| Valor | `AlmacenarInstantaneaAbsoluta` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
