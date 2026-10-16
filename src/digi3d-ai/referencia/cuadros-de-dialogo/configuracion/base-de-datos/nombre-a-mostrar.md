# Nombre a mostrar
<!-- id: nombre-a-mostrar -->

Indica qué texto se utilizará como nombre de los campos de la base de datos.

## Valores posibles

* **Nombre**. Muestra el nombre interno del campo.
* **Título**. Muestra el título descriptivo del campo.
* **Nombre y título**. Muestra el nombre interno y el título descriptivo.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Configuration\DatabaseEditor` |
| Tabla | `Ints` |
| Valor | `TipoTitulosCampos` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Configuration\DatabaseEditor');
DELETE FROM Ints WHERE Value = 'TipoTitulosCampos' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoTitulosCampos', 1 FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor';
```

</details>
