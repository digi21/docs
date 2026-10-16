# Orden de los polígonos
<!-- id: orden-de-los-poligonos -->

Indica el criterio con el que la orden [GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md) ordena los polígonos de la topología.

## Valores posibles

* **Ordenar de menor a mayor área** \(valor por defecto\).
* **Ordenar de mayor a menor área**.

## Dónde se almacena

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesTopologia\GenerarTopologiaInundacion` |
| :--- | :--- |
| Valor | `OrdenarTopologiasInundacionMenorAMayorArea` |
| Tipo | `REG_DWORD` |
| Valor por defecto | 1 |

Es un valor de cada usuario de _Windows_: no está en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no lo modifican.
