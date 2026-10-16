# Ángulo inicial de la cámara
<!-- id: angulo-inicial-de-la-camara -->

Indica desde qué lado mira la cámara al seleccionar la opción **Ventana fotogramétrica/Ir a punto origen**.

## Valores posibles

* **Superior** \(valor por defecto\).
* **Inferior**.
* **Izquierda**.
* **Derecha**.
* **Frontal**.
* **Trasera**.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Tabla | `Ints` |
| Valor | `AnguloCamaraIrPuntoOrigen` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Ints WHERE Value = 'AnguloCamaraIrPuntoOrigen' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'AnguloCamaraIrPuntoOrigen', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```
