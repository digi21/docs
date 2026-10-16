# Criterio de comparación de centroides
<!-- id: criterio-de-comparacion-de-centroides -->

Indica el criterio con el que la orden [CONTROL\_TOPOLOGICO\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/control-topologico-cases.md) compara los centroides de los polígonos vecinos.

## Valores posibles

* **El texto del centroide** \(valor por defecto\). Se comparan los textos de los centroides.
* **El código \(y atributos\) del centroide**. Se comparan los códigos y los atributos de los centroides.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Extensiones\DigiNG.OrdenesTopologia\ControlTopologico` |
| Tabla | `Ints` |
| Valor | `ControlTopologicoTextoCentroide` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Extensiones\DigiNG.OrdenesTopologia\ControlTopologico');
DELETE FROM Ints WHERE Value = 'ControlTopologicoTextoCentroide' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\ControlTopologico');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ControlTopologicoTextoCentroide', 0 FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\ControlTopologico';
```
