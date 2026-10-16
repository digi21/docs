# Máximo de puntos
<!-- id: maximo-de-puntos -->

Especifica el número máximo de vértices que tendrá un arco.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `MaxPuntosArco` |
| Valor por defecto | 200 |

Estas sentencias SQL asignan el valor 200, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'MaxPuntosArco' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MaxPuntosArco', 200 FROM Keys WHERE Path = 'DigiNG\Configuration';
```
