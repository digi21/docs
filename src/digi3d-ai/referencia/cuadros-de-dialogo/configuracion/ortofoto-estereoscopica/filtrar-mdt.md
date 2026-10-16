# Filtrar MDT
<!-- id: filtrar-mdt -->

Indica si se filtran los puntos del modelo digital del terreno de cada tesela. El filtro calcula la Z media de la tesela y sustituye por esa media la Z de los puntos que se alejan de ella una distancia igual o mayor que la [Distancia de filtrado](distancia-de-filtrado.md).

## Valores posibles

* **Sí**. Se filtran los puntos del MDT.
* **No** \(valor por defecto\). No se filtran los puntos del MDT.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto` |
| Tabla | `Ints` |
| Valor | `FiltrarMdt` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
DELETE FROM Ints WHERE Value = 'FiltrarMdt' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'FiltrarMdt', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto';
```
