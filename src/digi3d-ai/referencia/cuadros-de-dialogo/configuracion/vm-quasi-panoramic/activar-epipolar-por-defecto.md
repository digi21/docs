# Activar epipolar por defecto
<!-- id: activar-epipolar-por-defecto-2 -->

Si está activo, Digi3D.AI activará la rectificación epipolar automáticamente al cargar el par estereoscópico.

## Valores posibles

* **Sí**. La rectificación epipolar se activa automáticamente al cargar el par.
* **No**. La rectificación epipolar no se activa automáticamente.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.VMQuasiPanoramic\EpipolarRectification` |
| :--- | :--- |
| Valor | `ActivarEpipolarPorDefecto` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
