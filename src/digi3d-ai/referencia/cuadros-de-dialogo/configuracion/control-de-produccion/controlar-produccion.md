# Controlar producción
<!-- id: controlar-produccion -->

Indica si este equipo controlará la producción.

## Valores posibles

* **Sí**. Digi3D.AI controla la producción en este equipo.
* **No**. Digi3D.AI no controla la producción en este equipo.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\ProductionControl` |
| Tabla | `Ints` |
| Valor | `ControlarProduccion` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\ProductionControl');
DELETE FROM Ints WHERE Value = 'ControlarProduccion' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\ProductionControl');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ControlarProduccion', 1 FROM Keys WHERE Path = 'App\Configuration\ProductionControl';
```

</details>
