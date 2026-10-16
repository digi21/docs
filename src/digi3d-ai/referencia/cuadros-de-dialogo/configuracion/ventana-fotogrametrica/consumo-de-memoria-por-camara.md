# Consumo de memoria por cámara
<!-- id: consumo-de-memoria-por-camara -->

Indica la memoria máxima, en MB, que consumirá cada una de las cámaras al cargar un modelo estereoscópico.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `MaxMemv2` |
| Valor por defecto | 256 |

Estas sentencias SQL asignan el valor 256, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'MaxMemv2' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MaxMemv2', 256 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```
