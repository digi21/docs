# Transformaciones memorizadas
<!-- id: transformaciones-memorizadas-configuracion -->

Muestra cuántas transformaciones entre sistemas de referencia aplica Digi3D.AI sin preguntar, porque se marcó **Utilizar siempre esta transformación** al elegirlas.

Pulsa el botón de la opción para abrir el cuadro de diálogo **[Transformaciones memorizadas](../../transformaciones-memorizadas.md)**, en el que se pueden ver, eliminar o cambiar.

<details>
<summary>Dónde se almacena</summary>

Esta opción no guarda ningún valor: muestra las transformaciones memorizadas. Digi3D.AI guarda cada transformación memorizada en el registro de _Windows_, para el usuario, en una clave por cada par de sistemas de referencia de coordenadas.

Operación de coordenadas elegida para el par:

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\TransformacionesMemorizadas\<origen>\<destino>` |
| :--- | :--- |
| Valor | `Código2` |
| Tipo | `REG_DWORD` (código EPSG de la operación de coordenadas) |
| Valor por defecto | 0: no hay operación memorizada y Digi3D.AI pregunta cuál usar |

Transformación vertical elegida para el par:

| Registro | `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\TransformacionesMemorizadas\<origen>\<destino>` |
| :--- | :--- |
| Valor | `wkt` |
| Tipo | `REG_SZ` (transformación en WKT) |
| Valor por defecto | (vacío): no hay transformación vertical memorizada y Digi3D.AI pregunta cuál usar |

`<origen>` y `<destino>` son los nombres de los sistemas de referencia de coordenadas de origen y de destino. Digi3D.AI no guarda cada nombre en una sola subclave: lo corta por los espacios, las comas, los signos `=` y los tabuladores, y crea una subclave por cada palabra. Por ejemplo, la transformación de `ETRS89 / UTM zone 30N` a `ED50 / UTM zone 30N` se guarda en la clave `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\TransformacionesMemorizadas\ETRS89\/\UTM\zone\30N\ED50\/\UTM\zone\30N`.

Son valores de cada usuario de _Windows_: no están en el archivo Digi3DNET.db y las sentencias SQL del cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) no los modifican.

</details>
