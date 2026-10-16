# Color de relleno (polígonos sin centroide)
<!-- id: color-de-relleno-poligonos-sin-centroide -->

Indica el color con el que se rellenan los polígonos que **no tienen** centroide, en las topologías que no están definidas en la tabla de códigos (como las que se crean con BINTOP o con CREAR_TOPOLOGIA_CODIGOS_VISIBLES).

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Texts` |
| Valor | `RellenoPoligonosSinCentroide` |
| Valor por defecto | `255 00 00` |

Estas sentencias SQL asignan el texto `255 00 00`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Texts WHERE Value = 'RellenoPoligonosSinCentroide' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RellenoPoligonosSinCentroide', '255 00 00' FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
