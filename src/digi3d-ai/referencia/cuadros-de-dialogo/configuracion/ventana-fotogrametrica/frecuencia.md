# Frecuencia
<!-- id: frecuencia -->

Indica la frecuencia, en Hz, que se seleccionará para el [monitor indicado](monitor-a-cambiar-la-resolucion.md).

## Valores posibles

Una de las frecuencias disponibles: 60, 70, 72, 75, 85, 100, 120, 140, 144, 150, 170 o 200 Hz.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `Frecuencia` |
| Valor por defecto | 60 |

Estas sentencias SQL asignan el valor 60, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'Frecuencia' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'Frecuencia', 60 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
