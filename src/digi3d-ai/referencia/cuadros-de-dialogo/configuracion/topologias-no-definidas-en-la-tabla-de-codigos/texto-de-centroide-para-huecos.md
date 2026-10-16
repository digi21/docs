# Texto de centroide para huecos
<!-- id: texto-de-centroide-para-huecos -->

Indica los textos que, si se localizan en el centroide de un polígono, hacen que el polígono se considere un hueco, en las topologías que no están definidas en la tabla de códigos (como las que se crean con BINTOP o con CREAR_TOPOLOGIA_CODIGOS_VISIBLES).

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Texts` |
| Valor | `TextoCentroidesHuecos` |
| Valor por defecto | `*` |

Estas sentencias SQL asignan el texto `*`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Texts WHERE Value = 'TextoCentroidesHuecos' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'TextoCentroidesHuecos', '*' FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
