# Valor que indica que la geometría NO está eliminada
<!-- id: valor-que-indica-que-la-geometria-no-esta-eliminada -->

Indica el valor del [campo de marca de eliminado](campo-en-el-que-almacenar-marca-de-eliminado.md) que identifica una geometría no eliminada.

* Al guardar, se almacena este valor en el campo de las geometrías que no están eliminadas.
* Al cargar, una geometría cuyo campo tiene un valor distinto de este se considera eliminada.

El valor por defecto es `99999999`.

Solo se utiliza si en [Modo de eliminación de geometrías](modo-de-eliminacion-de-geometrias.md) has seleccionado **Almacenando un valor en un campo en el archivo DBF**.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.Shp` |
| Tabla | `Texts` |
| Valor | `ValorGeometriaNoEliminada` |
| Valor por defecto | `99999999` |

Estas sentencias SQL asignan el texto `99999999`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Shp');
DELETE FROM Texts WHERE Value = 'ValorGeometriaNoEliminada' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'ValorGeometriaNoEliminada', '99999999' FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp';
```

</details>
