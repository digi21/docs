# Carga de registros
<!-- id: carga-de-registros -->

Permite configurar el momento en el que se cargan de la base de datos los atributos de cada código.

## Valores posibles

* **Cuando sea necesario**. Los atributos se cargan bajo demanda, cuando se necesitan.
* **Al cargar la geometría del archivo de dibujo**. Los atributos se cargan junto con la geometría.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.BinDouble` |
| Tabla | `Ints` |
| Valor | `CargarRegistrosAsincrono` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.BinDouble');
DELETE FROM Ints WHERE Value = 'CargarRegistrosAsincrono' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.BinDouble');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CargarRegistrosAsincrono', 0 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.BinDouble';
```
