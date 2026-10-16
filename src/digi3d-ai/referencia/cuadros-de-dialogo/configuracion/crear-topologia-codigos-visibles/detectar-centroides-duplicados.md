# Detectar centroides duplicados
<!-- id: detectar-centroides-duplicados -->

Indica si se añade una tarea al [panel de tareas](../../../paneles/tareas.md) por cada centroide duplicado que se localiza al formar la topología.

## Valores posibles

* **Sí** \(valor por defecto\). Se añade una tarea por cada centroide duplicado.
* **No**. Los centroides duplicados no generan tareas.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles` |
| Tabla | `Ints` |
| Valor | `CentroidesDuplicados` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
DELETE FROM Ints WHERE Value = 'CentroidesDuplicados' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CentroidesDuplicados', 0 FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles';
```

</details>
