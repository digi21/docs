# Remedir múltiple
<!-- id: remedir-multiple -->

Si está activo, al remedir un punto la orden vuelve a solicitar que se remida el mismo punto hasta que se pulse Esc o se acepte o cancele el cuadro de diálogo.

## Valores posibles

* **Sí**.
* **No**.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\AbsoluteOrientation` |
| :--- | :--- |
| Valor | `RemedirMultiple` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1. Si el valor no existe, el cuadro de diálogo **Configuración** muestra 0 y lo guarda al pulsar **Aceptar**. |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
