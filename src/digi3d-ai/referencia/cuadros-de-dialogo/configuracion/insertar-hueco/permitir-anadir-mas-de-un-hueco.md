# Permitir añadir más de un hueco
<!-- id: permitir-anadir-mas-de-un-hueco -->

Indica si la orden [INSERTAR\_HUECO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-hueco.md) permite añadir varios huecos al mismo polígono.

## Valores posibles

* **Sí**. La orden permite añadir huecos hasta que pulsas la barra espaciadora.
* **No** \(valor por defecto\). La orden añade un único hueco.

<details>
<summary>Dónde se almacena</summary>

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Ext` |
| :--- | :--- |
| Valor | `InsHuecoPermitirAnadirMasDeUnHueco` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.

</details>
