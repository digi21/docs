# Unidades de los giros
<!-- id: unidades-de-los-giros -->

Indica las unidades en las que están almacenados los giros en los archivos _.eo_ y _.imu_ que se van a importar.

## Valores posibles

* **Radianes**.
* **Sexagesimal**.
* **Centesimal**.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros` |
| Tabla | `Ints` |
| Valor | `UnidadesAngulos` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros');
DELETE FROM Ints WHERE Value = 'UnidadesAngulos' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'UnidadesAngulos', 0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Importadores\ImportadorCentroProyGiros';
```
