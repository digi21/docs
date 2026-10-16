# Reset vacía la pila de órdenes
<!-- id: reset-vacia-la-pila-de-ordenes -->

Si se habilita, al pulsar el botón de RESET se anulan todas las órdenes de la pila de órdenes, en vez de solo la orden activa.

## Valores posibles

* **Sí**. RESET vacía toda la pila de órdenes.
* **No**. RESET anula solo la orden activa.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `ResetVaciaPilaOrdenes` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'ResetVaciaPilaOrdenes' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ResetVaciaPilaOrdenes', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
