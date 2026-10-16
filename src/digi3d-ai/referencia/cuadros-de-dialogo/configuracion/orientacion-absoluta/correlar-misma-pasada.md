# Correlar misma pasada
<!-- id: correlar-misma-pasada -->

Si está activo, se correlará automáticamente un punto si ya había sido medido en una foto de la misma pasada.

## Valores posibles

* **Sí**.
* **No**.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\AbsoluteOrientation` |
| :--- | :--- |
| Valor | `CorrelarAbsolutaMismaPasada` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
