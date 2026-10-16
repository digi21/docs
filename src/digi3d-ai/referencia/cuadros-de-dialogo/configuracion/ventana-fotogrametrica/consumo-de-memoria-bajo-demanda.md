# Consumo de memoria bajo demanda
<!-- id: consumo-de-memoria-bajo-demanda -->

Si se activa, la memoria se solicita a medida que se va cargando la imagen. Esto puede mejorar el uso de memoria, pero puede ralentizar el cambio rápido de modelos.

## Valores posibles

* **Sí**. La memoria se solicita bajo demanda.
* **No**. La memoria se reserva por adelantado.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `ConsumoMemoriabajoDemanda` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'ConsumoMemoriabajoDemanda' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ConsumoMemoriabajoDemanda', 0 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```
