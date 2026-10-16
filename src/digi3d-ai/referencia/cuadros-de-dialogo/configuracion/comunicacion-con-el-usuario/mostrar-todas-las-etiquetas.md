# Mostrar todas las etiquetas
<!-- id: mostrar-todas-las-etiquetas -->

Si se activa, se muestran todas las etiquetas de la tabla de códigos, en lugar de mostrar únicamente las etiquetas asociadas a los códigos de las entidades cargadas en el archivo de dibujo.

## Valores posibles

* **Sí**. Se muestran todas las etiquetas de la tabla de códigos.
* **No**. Se muestran solo las etiquetas de los códigos presentes en el archivo de dibujo.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `MostrarTodasLasEtiquetas` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'MostrarTodasLasEtiquetas' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MostrarTodasLasEtiquetas', 1 FROM Keys WHERE Path = 'App\Configuration';
```
