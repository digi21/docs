# EXT puede extender fuera de límites
<!-- id: ext-puede-extender-fuera-de-limites -->

Indica si la orden [EXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ext.md) puede extender una línea más allá de los extremos de la línea seleccionada.

## Valores posibles

* **Sí**. La orden considera que el primer y el último segmento de la línea seleccionada son infinitos.
* **No** \(valor por defecto\). La orden solo tiene en cuenta los segmentos de la línea seleccionada tal como están.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\Ext` |
| :--- | :--- |
| Valor | `ExtPuedeExtenderFueraLimiteLineas` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
