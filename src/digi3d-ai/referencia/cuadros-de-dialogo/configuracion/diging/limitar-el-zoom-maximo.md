# Limitar el zoom máximo
<!-- id: limitar-el-zoom-maximo -->

Permite indicar si la ventana de dibujo tendrá una limitación a la hora de hacer zoom.

## Valores posibles

* **Sí**. La ventana de dibujo tiene limitado el zoom máximo.
* **No**. La ventana de dibujo no tiene ninguna limitación de zoom.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `LimitarFactorZoom` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'LimitarFactorZoom' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'LimitarFactorZoom', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```
