# Ruta al archivo de LOG
<!-- id: ruta-al-archivo-de-log -->

Permite indicar la ubicación y el nombre del archivo de LOG que Digi3D.AI creará cuando la opción [Crear archivo de LOG](crear-archivo-de-log.md) esté configurada como **Sí**.

Se espera la ruta completa de un archivo de texto \(con extensión _.txt_\). Si la opción **Crear archivo de LOG** está configurada como **No**, este valor no se utiliza.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Texts` |
| Valor | `RutaArchivoLog` |
| Valor por defecto | (vacío) |

Estas sentencias SQL asignan el texto `C:\Registros\Digi3D.log`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Texts WHERE Value = 'RutaArchivoLog' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RutaArchivoLog', 'C:\Registros\Digi3D.log' FROM Keys WHERE Path = 'App\Configuration';
```

</details>
