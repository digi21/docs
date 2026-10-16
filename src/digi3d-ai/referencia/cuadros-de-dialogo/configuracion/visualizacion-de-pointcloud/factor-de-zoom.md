# Factor de zoom
<!-- id: factor-de-zoom-2 -->

Indica el factor de zoom que se aplica al ejecutar las órdenes de zoom acercar y alejar en una nube de puntos. Es un valor positivo mayor que 1,0.

El valor por defecto es 1,2.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Tabla | `Doubles` |
| Valor | `FactorZoom` |
| Valor por defecto | 1.2 |

Estas sentencias SQL asignan el valor 1.2, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Doubles WHERE Value = 'FactorZoom' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'FactorZoom', 1.2 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```

</details>
