# Auto remedir peor
<!-- id: auto-remedir-peor -->

Si está activo, al pulsar el botón Peor se localizará el punto con mayor residuo y se solicitará automáticamente que se remida dicho punto.

## Valores posibles

* **Sí**.
* **No**.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\AbsoluteOrientation` |
| :--- | :--- |
| Valor | `AutoRemedirAlLocalizarPeor` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
