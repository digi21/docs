# Escape vacía la pila de órdenes
<!-- id: escape-vacia-la-pila-de-ordenes -->

Si se activa, al pulsar la tecla Esc se vacía por completo la pila de órdenes.

## Valores posibles

* **Sí**. Esc vacía toda la pila de órdenes.
* **No**. Esc no vacía la pila de órdenes.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `EscapeVaciaPilaOrdenes` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'EscapeVaciaPilaOrdenes' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'EscapeVaciaPilaOrdenes', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
