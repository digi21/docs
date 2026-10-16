# Solo lectura silencioso
<!-- id: solo-lectura-silencioso -->

Si está activo, el importador/exportador de PostGIS no almacena ni elimina geometrías en la base de datos, pero comunica a Digi3D.AI que la operación se ha realizado correctamente.

## Valores posibles

* **Sí**. Las geometrías nuevas, modificadas o eliminadas no se guardan en PostGIS y no se muestra ningún error.
* **No** \(valor por defecto\). Las geometrías se almacenan y se eliminan en PostGIS.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.PostGIS` |
| Tabla | `Ints` |
| Valor | `SoloLecturaSilencioso` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.PostGIS');
DELETE FROM Ints WHERE Value = 'SoloLecturaSilencioso' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'SoloLecturaSilencioso', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS';
```

</details>
