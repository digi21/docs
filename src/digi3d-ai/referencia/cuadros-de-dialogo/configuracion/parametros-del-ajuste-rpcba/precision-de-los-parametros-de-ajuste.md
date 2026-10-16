# Precisión de los parámetros de ajuste
<!-- id: precision-de-los-parametros-de-ajuste -->

Indica la precisión a priori de los parámetros del ajuste.

El valor por defecto es 20.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA` |
| Tabla | `Doubles` |
| Valor | `PrecisionParametrosAjuste` |
| Valor por defecto | 20.0 |

Estas sentencias SQL asignan el valor 20.0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
DELETE FROM Doubles WHERE Value = 'PrecisionParametrosAjuste' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'PrecisionParametrosAjuste', 20.0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA';
```
