# Al remedir, ir a
<!-- id: al-remedir-ir-a -->

Indica a qué coordenadas se desplazará la vista estereoscópica al remedir un punto: a las coordenadas medidas o a las calculadas.

## Valores posibles

* **El punto medido**.
* **El punto calculado**.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\Digi3D\Extensiones\Digi3D.ConicSensor\InnerOrientation` |
| :--- | :--- |
| Valor | `TipoIr` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
