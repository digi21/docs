# Porcentaje de RAM a consumir
<!-- id: porcentaje-de-ram-a-consumir -->

Indica el porcentaje máximo de la RAM total del ordenador que se le permite consumir al algoritmo.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Tabla | `Ints` |
| Valor | `PorcentajeMaximoConsumoMemoriaCrearLod` |
| Valor por defecto | 90 |

Estas sentencias SQL asignan el valor 90, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Ints WHERE Value = 'PorcentajeMaximoConsumoMemoriaCrearLod' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PorcentajeMaximoConsumoMemoriaCrearLod', 90 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```

</details>
