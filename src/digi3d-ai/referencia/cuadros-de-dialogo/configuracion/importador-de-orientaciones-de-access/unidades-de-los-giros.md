# Unidades de los giros
<!-- id: unidades-de-los-giros-2 -->

Indica las unidades en las que están almacenados los giros en la base de datos de Access.

## Valores posibles

* **Radianes**.
* **Sexagesimal**.
* **Centesimal**.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access` |
| Tabla | `Ints` |
| Valor | `UnidadesAngulos` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access');
DELETE FROM Ints WHERE Value = 'UnidadesAngulos' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'UnidadesAngulos', 0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Extensiones\Digi3D.ConicSensor.Access';
```
