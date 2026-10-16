# Omega
<!-- id: omega -->

Nombre del campo con el ángulo Omega.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access` |
| Tabla | `Texts` |
| Valor | `o` |
| Valor por defecto | `OM` |

Estas sentencias SQL asignan el texto `OM`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access');
DELETE FROM Texts WHERE Value = 'o' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'o', 'OM' FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access';
```

</details>
