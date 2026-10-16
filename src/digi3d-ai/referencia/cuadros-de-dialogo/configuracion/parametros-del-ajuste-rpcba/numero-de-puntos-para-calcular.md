# Número de puntos para calcular
<!-- id: numero-de-puntos-para-calcular -->

Indica el número mínimo de puntos medidos en la imagen izquierda para que se calcule el ajuste. Con menos puntos medidos no se calcula.

El valor por defecto es 1.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA` |
| Tabla | `Ints` |
| Valor | `NumeroPuntosMedidosParaCalcularRpcba` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
DELETE FROM Ints WHERE Value = 'NumeroPuntosMedidosParaCalcularRpcba' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'NumeroPuntosMedidosParaCalcularRpcba', 0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA';
```

</details>
