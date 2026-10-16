# Mínimo de puntos
<!-- id: minimo-de-puntos -->

Especifica el número mínimo de vértices que tendrá un arco.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `MinPuntosArco` |
| Valor por defecto | 20 |

Estas sentencias SQL asignan el valor 20, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'MinPuntosArco' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MinPuntosArco', 20 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
