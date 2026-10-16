# Tipo de zoom
<!-- id: tipo-de-zoom -->

Indica qué hace la ventana de dibujo cuando la orden [BUSCAR\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide.md) localiza un centroide.

## Valores posibles

* **Centrar la ventana en el centroide** \(valor por defecto\). La ventana se desplaza hasta el centroide sin cambiar el factor de zoom.
* **Zoom al centroide**. La ventana hace un zoom sobre el centroide.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesStandard\DigiNG.OrdenesTopologia\BuscarCentroide` |
| :--- | :--- |
| Valor | `TipoZoom` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 0 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
