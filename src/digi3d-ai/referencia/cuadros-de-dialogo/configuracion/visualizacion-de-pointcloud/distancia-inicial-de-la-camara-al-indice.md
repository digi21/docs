# Distancia inicial de la cámara al índice
<!-- id: distancia-inicial-de-la-camara-al-indice -->

Indica la distancia a la que se sitúa la cámara respecto al índice al seleccionar la opción **Ventana fotogramétrica/Ir a punto origen**.

El valor por defecto es 10.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Tabla | `Doubles` |
| Valor | `DistanciaCamaraIrPuntoOrigen` |
| Valor por defecto | 10.0 |

Estas sentencias SQL asignan el valor 10.0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Doubles WHERE Value = 'DistanciaCamaraIrPuntoOrigen' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'DistanciaCamaraIrPuntoOrigen', 10.0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```
