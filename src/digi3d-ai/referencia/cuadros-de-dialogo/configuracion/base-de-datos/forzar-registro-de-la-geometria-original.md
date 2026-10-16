# Forzar registro de la geometría original
<!-- id: forzar-registro-de-la-geometria-original -->

Si se activa, las geometrías obtenidas a partir de otra existente (al mover, copiar, partir, duplicar, etc.) apuntarán al mismo registro de la base de datos que la geometría original.

## Valores posibles

* **Sí**. Las geometrías derivadas comparten el registro de base de datos de la geometría original.
* **No**. Las geometrías derivadas no conservan el registro de la geometría original.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `ForzarRegistroGeometriaOriginal` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'ForzarRegistroGeometriaOriginal' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ForzarRegistroGeometriaOriginal', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
