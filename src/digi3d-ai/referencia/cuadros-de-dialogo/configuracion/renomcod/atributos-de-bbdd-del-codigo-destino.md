# Atributos de BBDD del código destino
<!-- id: atributos-de-bbdd-del-codigo-destino -->

Indica cómo se rellenan los atributos de base de datos del código destino al sustituir un código con la orden [RENOMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md).

## Valores posibles

* **Esquema de tabla** \(valor por defecto\). Los atributos se crean con los campos del esquema de la tabla del código destino.
* **Esquema de tabla + Valores por defecto**. Además, se asignan los valores de los atributos que el código destino tiene definidos en la tabla de códigos.
* **Esquema de tabla + Valores por defecto + Valores \(no nulos\) del código sustituido**. Además, se copian los valores no nulos de los atributos del código sustituido.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Extensiones\DigiNG.OrdenesStandard\Renomcod` |
| Tabla | `Ints` |
| Valor | `ComportamientoAtributos` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Extensiones\DigiNG.OrdenesStandard\Renomcod');
DELETE FROM Ints WHERE Value = 'ComportamientoAtributos' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesStandard\Renomcod');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ComportamientoAtributos', 1 FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesStandard\Renomcod';
```
