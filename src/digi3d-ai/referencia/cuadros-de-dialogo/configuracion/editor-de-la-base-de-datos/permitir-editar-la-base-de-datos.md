# Permitir editar la base de datos
<!-- id: permitir-editar-la-base-de-datos -->

Indica si se le permitirá al usuario editar la base de datos con el editor de la base de datos.

## Valores posibles

* **Sí**. El usuario puede editar la base de datos desde el editor.
* **No**. El editor de la base de datos es de solo lectura.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Configuration\DatabaseEditor` |
| Tabla | `Ints` |
| Valor | `PermitirEditar` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Configuration\DatabaseEditor');
DELETE FROM Ints WHERE Value = 'PermitirEditar' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PermitirEditar', 1 FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor';
```
