# Idioma
<!-- id: idioma -->

Permite configurar el idioma en el que se muestra la interfaz de usuario de Digi3D.AI, así como el de los nombres de las órdenes.

## Valores posibles

Uno de los idiomas instalados (por ejemplo, **Español** o **English**).

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Texts` |
| Valor | `PreferredLanguage` |
| Valor por defecto | `en-US` |

Estas sentencias SQL asignan el texto `es-ES`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Texts WHERE Value = 'PreferredLanguage' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'PreferredLanguage', 'es-ES' FROM Keys WHERE Path = 'App\Configuration';
```
