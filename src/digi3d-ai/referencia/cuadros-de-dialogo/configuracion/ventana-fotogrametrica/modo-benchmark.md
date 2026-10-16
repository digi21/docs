# Modo benchmark
<!-- id: modo-benchmark -->

Indica si la vista estereoscópica de Digi3D.AI se regenerará constantemente, incluso si no se recibe ningún evento. Resulta útil para medir el rendimiento.

## Valores posibles

* **Sí**. La vista se regenera continuamente.
* **No**. La vista se regenera solo cuando es necesario.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `ModoBenchmark` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'ModoBenchmark' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ModoBenchmark', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
