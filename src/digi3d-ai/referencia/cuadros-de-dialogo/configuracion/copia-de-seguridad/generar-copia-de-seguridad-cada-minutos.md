# Generar copia de seguridad cada (minutos)
<!-- id: generar-copia-de-seguridad-cada-minutos -->

Indica cada cuánto tiempo, en minutos, se genera una copia de seguridad del archivo de dibujo. Para deshabilitar las copias de seguridad automáticas, introduce **0**.

La comprobación del tiempo transcurrido entre copias de seguridad se realiza únicamente al almacenar una geometría: cada vez que se almacena una geometría se comprueba si se ha superado el número de minutos indicado y, en caso afirmativo, se genera la copia de seguridad y se reinicia el contador. Esta opción no genera copias de seguridad si no se almacena ninguna geometría, aunque dejes el programa abierto.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `MinutosCopiaSeguridad` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'MinutosCopiaSeguridad' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MinutosCopiaSeguridad', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
