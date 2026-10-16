# Precisión planimétrica del apoyo
<!-- id: precision-planimetrica-del-apoyo -->

Indica la precisión planimétrica de los puntos de apoyo, en unidades de medida del usuario. Antes del ajuste, Digi3D.AI la convierte a las unidades del sistema de referencia de coordenadas del sensor.

El valor por defecto es 0,1.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA` |
| Tabla | `Doubles` |
| Valor | `PrecisionPlanimetricaApoyo` |
| Valor por defecto | 0.1 |

Estas sentencias SQL asignan el valor 0.1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
DELETE FROM Doubles WHERE Value = 'PrecisionPlanimetricaApoyo' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'PrecisionPlanimetricaApoyo', 0.1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA';
```

</details>
