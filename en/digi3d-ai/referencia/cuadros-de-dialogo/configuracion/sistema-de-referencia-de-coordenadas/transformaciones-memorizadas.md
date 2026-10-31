# Stored transformations
<!-- id: transformaciones-memorizadas-configuracion -->
<!-- origen: dd53f7c5320aea236cd16f80e51bed0406a4db3a -->

Displays how many transformations between reference systems Digi3D.AI applies without asking because **Always use this transformation** was checked when selecting them.

Click the option button to open the **[Stored transformations](../../transformaciones-memorizadas.md)** dialog, where you can view, delete, or change stored transformations.

<details>
<summary>Where it is stored</summary>

This option does not save a value: it displays stored transformations. Digi3D.AI saves each stored transformation in the _Windows_ registry for the user, in a key for each coordinate reference system pair.

Coordinate operation selected for the pair:

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\TransformacionesMemorizadas\<origen>\<destino>` |
| :--- | :--- |
| Value | `Código2` |
| Type | `REG_DWORD` (coordinate operation EPSG code) |
| Default value | 0: no operation is stored and Digi3D.AI asks which one to use |

Vertical transformation selected for the pair:

| Registry | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\TransformacionesMemorizadas\<origen>\<destino>` |
| :--- | :--- |
| Value | `wkt` |
| Type | `REG_SZ` (transformation in WKT) |
| Default value | (empty): no vertical transformation is stored and Digi3D.AI asks which one to use |

`<origen>` and `<destino>` are the names of the source and destination coordinate reference systems. Digi3D.AI does not save each name in a single subkey: it splits it at spaces, commas, `=` signs, and tabs, and creates a subkey for each word. For example, the transformation from `ETRS89 / UTM zone 30N` to `ED50 / UTM zone 30N` is saved in `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\TransformacionesMemorizadas\ETRS89\/\UTM\zone\30N\ED50\/\UTM\zone\30N`.

These are per-user _Windows_ values: they are not in the Digi3DNET.db file, and SQL statements in the [Advanced configuration](../../configuracion-avanzada.md) dialog do not modify them.

</details>
