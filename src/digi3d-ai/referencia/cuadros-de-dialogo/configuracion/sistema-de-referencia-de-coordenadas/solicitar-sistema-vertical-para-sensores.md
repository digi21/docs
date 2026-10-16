# Solicitar sistema vertical para sensores
<!-- id: solicitar-sistema-vertical-para-sensores -->

Si el sistema de referencia de coordenadas proporcionado por el sensor no incluye el sistema de referencia vertical, esta opción indica si se preguntará por él. Si no se activa, se supone que el sistema vertical es desconocido.

## Valores posibles

* **Sí**. Se pregunta por el sistema de referencia vertical cuando el sensor no lo proporciona.
* **No**. Se asume que el sistema vertical es desconocido.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `SolicitarSistemaVerticalSiElSensorEs2D` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'SolicitarSistemaVerticalSiElSensorEs2D' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'SolicitarSistemaVerticalSiElSensorEs2D', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
