# Valor a asignar cuando se elimina la geometría
<!-- id: valor-a-asignar-cuando-se-elimina-la-geometria -->

Indica el valor que se almacena en el [campo de marca de eliminado](campo-en-el-que-almacenar-marca-de-eliminado.md) al eliminar una geometría.

Admite los valores especiales del esquema de la base de datos. El valor por defecto es `%DATETIME%`, que se sustituye por la fecha y la hora en que se elimina la geometría.

Solo se utiliza si en [Modo de eliminación de geometrías](modo-de-eliminacion-de-geometrias.md) has seleccionado **Almacenando un valor en un campo en el archivo DBF**.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.Shp` |
| Tabla | `Texts` |
| Valor | `ValorGeometriaEliminada` |
| Valor por defecto | `%DATETIME%` |

Estas sentencias SQL asignan el texto `%DATETIME%`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Shp');
DELETE FROM Texts WHERE Value = 'ValorGeometriaEliminada' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'ValorGeometriaEliminada', '%DATETIME%' FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp';
```

</details>
