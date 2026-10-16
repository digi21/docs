# Al desplazarse por el modelo
<!-- id: al-desplazarse-por-el-modelo -->

Si el sensor admite trabajar con interpolación de subpixel, indica si se utiliza al desplazarse por el modelo (roaming).

## Valores posibles

* **Con interpolación de subpixel**. Los cálculos se realizan con interpolación de subpixel (más precisión, más tiempo de proceso).
* **Sin interpolación de subpixel**. Los cálculos se realizan sin interpolación de subpixel.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Configuration\Interpolation` |
| Tabla | `Ints` |
| Valor | `TipoInterpolacionRoaming` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Configuration\Interpolation');
DELETE FROM Ints WHERE Value = 'TipoInterpolacionRoaming' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Configuration\Interpolation');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoInterpolacionRoaming', 1 FROM Keys WHERE Path = 'Digi3D\Configuration\Interpolation';
```
