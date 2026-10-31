# Polygon order
<!-- id: orden-de-los-poligonos -->
<!-- origen: 8b5fe889c73812a4494d6cac80a93f28d7069ae6 -->

Specify how [GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md) sorts topology polygons.

## Possible values

* **Sort from smallest to largest area** \(default\).
* **Sort from largest to smallest area**.

<details>
<summary>Where it is stored</summary>

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\DigiNG\Extensiones\DigiNG.OrdenesTopologia\GenerarTopologiaInundacion` |
| :--- | :--- |
| Value | `OrdenarTopologiasInundacionMenorAMayorArea` |
| Type | `REG_DWORD` |
| Default value | 1 |

This is a per-user _Windows_ value: it is not in Digi3DNET.db, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog box do not modify it.

</details>
