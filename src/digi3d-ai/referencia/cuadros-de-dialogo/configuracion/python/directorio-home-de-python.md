# Directorio Home de Python
<!-- id: directorio-home-de-python -->

Especifica el directorio donde Digi3D.AI localizará las librerías de Python.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Texts` |
| Valor | `DirectorioPythonDigi3DAI` |
| Valor por defecto | carpeta del ejecutable |

Estas sentencias SQL asignan el texto `C:\Python\Digi3D`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Texts WHERE Value = 'DirectorioPythonDigi3DAI' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'DirectorioPythonDigi3DAI', 'C:\Python\Digi3D' FROM Keys WHERE Path = 'App\Configuration';
```

</details>
