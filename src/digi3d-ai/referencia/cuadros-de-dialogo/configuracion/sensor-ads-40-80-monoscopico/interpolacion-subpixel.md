# Interpolación subpixel
<!-- id: interpolacion-subpixel -->

Indica si los cálculos se realizan con interpolación de subpixel.

## Valores posibles

* **Activada** \(valor por defecto\). Los cálculos se realizan con interpolación de subpixel.
* **Desactivada**. Los cálculos se realizan sin interpolación de subpixel.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ADS40Sensor` |
| :--- | :--- |
| Valor | `InterpolacionSubpixel` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
