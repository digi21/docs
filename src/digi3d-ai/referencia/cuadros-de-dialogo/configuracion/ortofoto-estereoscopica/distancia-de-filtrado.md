# Distancia de filtrado
<!-- id: distancia-de-filtrado -->

Indica la diferencia de Z con respecto a la Z media de la tesela a partir de la cual se filtra un punto del MDT.

Solo se utiliza si la opción [Filtrar MDT](filtrar-mdt.md) está activada. El valor por defecto es 100.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto` |
| Tabla | `Doubles` |
| Valor | `DistanciaFiltrado` |
| Valor por defecto | 100 |

Estas sentencias SQL asignan el valor 100, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
DELETE FROM Doubles WHERE Value = 'DistanciaFiltrado' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'DistanciaFiltrado', 100 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto';
```
