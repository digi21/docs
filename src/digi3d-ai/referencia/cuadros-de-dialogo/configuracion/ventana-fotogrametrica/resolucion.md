# Resolución
<!-- id: resolucion -->

Indica la resolución que se seleccionará para el [monitor indicado](monitor-a-cambiar-la-resolucion.md).

## Valores posibles

Una de las resoluciones admitidas por el monitor seleccionado.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Texts` |
| Valor | `Resolucion` |
| Valor por defecto | `640 x 480 x 32` |

Estas sentencias SQL asignan el texto `1920 x 1080 x 32`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Texts WHERE Value = 'Resolucion' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'Resolucion', '1920 x 1080 x 32' FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
