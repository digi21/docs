# Tipo de conexión
<!-- id: tipo-de-conexion -->

Permite configurar el tipo de conexión a Internet de Digi3D.AI: sin proxy o con la configuración de proxy de Windows.

## Valores posibles

Si no se ha configurado, el valor es **Directa**.

* **Directa**. Digi3D.AI se conecta a Internet directamente, sin usar ningún proxy.
* **Configuración de proxy de Windows**. Digi3D.AI se conecta a Internet con la configuración de proxy de Windows del equipo. Si Windows no tiene un proxy configurado, la conexión es directa.

Este ajuste lo usan las conexiones de los sensores y conectores WMS (Web Map Service, servicio de mapas web) y WMTS (Web Map Tile Service, servicio de teselas de mapas web), el importador de OpenStreetMap (Slippy Map) y las órdenes de catastro (abrir catastro, ir a referencia catastral y rotular referencia catastral).

Una configuración guardada con la opción **Servidor proxy** de versiones anteriores usa la opción **Configuración de proxy de Windows**. Digi3D.AI ya no almacena la dirección, el usuario ni la contraseña de un proxy: se configuran en Windows.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `TipoConexionInternet` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'TipoConexionInternet' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoConexionInternet', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
