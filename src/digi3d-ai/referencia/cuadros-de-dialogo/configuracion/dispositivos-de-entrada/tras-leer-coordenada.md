# Tras leer coordenada
<!-- id: tras-leer-coordenada -->

Indica si el hilo de lectura de coordenadas cede el control a la aplicación principal después de analizar una coordenada, o si continúa analizando coordenadas sin cederlo.

## Valores posibles

* **El hilo cede el control**. Tras analizar una coordenada, el hilo devuelve el control a la aplicación principal.
* **El hilo continúa analizando coordenadas**. El hilo sigue analizando coordenadas sin ceder el control.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\IO\TarjDigi3D` |
| Tabla | `Ints` |
| Valor | `CederControl` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\IO\TarjDigi3D');
DELETE FROM Ints WHERE Value = 'CederControl' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CederControl', 0 FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D';
```
