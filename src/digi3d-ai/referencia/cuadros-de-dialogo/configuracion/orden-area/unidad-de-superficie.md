# Unidad de superficie
<!-- id: unidad-de-superficie -->

Indica en qué unidad escribe la orden [AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md) el área de la entidad seleccionada, y qué sufijo propone para el texto.

La orden calcula el área en metros cuadrados y la convierte a la unidad elegida. El sufijo propuesto se puede cambiar antes de colocar el texto, pero el valor siempre está en la unidad elegida.

Los cambios se aplican la siguiente vez que se ejecute la orden.

## Valores posibles

* **Metros cuadrados (m2)** \(valor por defecto\). Sufijo propuesto: `m2`.
* **Hectáreas (ha)**. El área se divide entre 10.000. Sufijo propuesto: `ha`.
* **Kilómetros cuadrados (km2)**. El área se divide entre 1.000.000. Sufijo propuesto: `km2`.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `UnidadArea` |
| Valor por defecto | 0 |

Los valores son 0 (metros cuadrados), 1 (hectáreas) y 2 (kilómetros cuadrados). Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md):

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'UnidadArea' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'UnidadArea', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
