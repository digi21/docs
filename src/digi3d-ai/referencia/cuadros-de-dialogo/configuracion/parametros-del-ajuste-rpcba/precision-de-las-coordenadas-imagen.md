# Precisión de las coordenadas imagen
<!-- id: precision-de-las-coordenadas-imagen -->

Indica la precisión, en píxeles, de las coordenadas imagen medidas.

El valor por defecto es 0,5.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA` |
| Tabla | `Doubles` |
| Valor | `PrecisionCoordenadasImagen` |
| Valor por defecto | 0.5 |

Estas sentencias SQL asignan el valor 0.5, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
DELETE FROM Doubles WHERE Value = 'PrecisionCoordenadasImagen' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'PrecisionCoordenadasImagen', 0.5 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.Rpc\Extensions\RPCBA';
```

</details>
