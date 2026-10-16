# Permitir vértices consecutivos con la misma coordenada XY
<!-- id: permitir-vertices-consecutivos-con-la-misma-coordenada-xy -->

Si se activa, las herramientas de filtrado de vértices consecutivos duplicados permitirán vértices consecutivos con las mismas coordenadas X e Y pero con distinta coordenada Z.

## Valores posibles

* **Sí**. Se permiten vértices consecutivos con la misma XY y distinta Z.
* **No**. Se filtran los vértices consecutivos con la misma XY.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `FiltrarPuntosPara2D` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'FiltrarPuntosPara2D' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'FiltrarPuntosPara2D', 0 FROM Keys WHERE Path = 'DigiNG\Configuration';
```
