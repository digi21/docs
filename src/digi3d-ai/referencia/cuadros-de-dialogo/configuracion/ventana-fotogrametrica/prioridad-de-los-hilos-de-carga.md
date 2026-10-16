# Prioridad de los hilos de carga
<!-- id: prioridad-de-los-hilos-de-carga -->

Indica la prioridad de los hilos de trabajo encargados de la carga de teselas en segundo plano.

## Valores posibles

* **La mínima**.
* **Por debajo de la normal**.
* **Normal**.
* **Por encima de lo normal**.
* **La más alta**.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `Prioridad` |
| Valor por defecto | 1 o 0, según el código que lo lee primero |

Estas sentencias SQL asignan el valor 2, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'Prioridad' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'Prioridad', 2 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
