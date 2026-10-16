# Precisión altimétrica del apoyo
<!-- id: precision-altimetrica-del-apoyo -->

Indica la precisión altimétrica de los puntos de apoyo, en metros.

El valor por defecto es 0,5.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA` |
| Tabla | `Doubles` |
| Valor | `PrecisionAltimetricaApoyo` |
| Valor por defecto | 0.5 |

Estas sentencias SQL asignan el valor 0.5, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
DELETE FROM Doubles WHERE Value = 'PrecisionAltimetricaApoyo' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'PrecisionAltimetricaApoyo', 0.5 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA';
```

</details>
