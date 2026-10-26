# Remedir múltiple
<!-- id: remedir-multiple -->

Si activas esta opción, al remedir un punto la orden de orientación absoluta te solicita que vuelvas a medir ese punto hasta que pulses Esc o aceptes o canceles el cuadro de diálogo de orientación absoluta.

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
