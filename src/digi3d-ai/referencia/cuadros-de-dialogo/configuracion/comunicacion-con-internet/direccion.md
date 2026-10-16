# Dirección
<!-- id: direccion -->

Permite indicar la dirección del servidor _PROXY_.

Solo se utiliza cuando en [Tipo de conexión](tipo-de-conexion.md) has seleccionado la opción **Servidor proxy**.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Texts` |
| Valor | `DirecciónProxy` |
| Valor por defecto | (vacío) |

Estas sentencias SQL asignan el texto `proxy.miempresa.com:8080`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Texts WHERE Value = 'DirecciónProxy' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'DirecciónProxy', 'proxy.miempresa.com:8080' FROM Keys WHERE Path = 'App\Configuration';
```
