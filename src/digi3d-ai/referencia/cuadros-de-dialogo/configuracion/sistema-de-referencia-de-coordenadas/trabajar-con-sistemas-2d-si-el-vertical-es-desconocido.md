# Trabajar con sistemas 2D (horizontales) si el vertical es desconocido
<!-- id: trabajar-con-sistemas-2d-si-el-vertical-es-desconocido -->

Si activas esta opción y creas un sistema de referencia de coordenadas con el sistema vertical desconocido, Digi3D.AI crea un sistema de dos dimensiones (2D) en lugar de un sistema compuesto. Con esta opción activada, al cargar un sistema 2D Digi3D.AI asume que el sistema de referencia vertical es desconocido y no pregunta por el sistema vertical.

## Valores posibles

* **Sí**. Se trabaja con sistemas 2D cuando el vertical es desconocido.
* **No**. Se crea un sistema compuesto y se pregunta por el sistema vertical.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `TrabajarConSistemasHorizontalesSiElVerticalEsDesconocido` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'TrabajarConSistemasHorizontalesSiElVerticalEsDesconocido' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TrabajarConSistemasHorizontalesSiElVerticalEsDesconocido', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
