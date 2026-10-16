# Monitor a cambiar la resolución
<!-- id: monitor-a-cambiar-la-resolucion -->

Indica la pantalla cuya resolución se cambiará al cargar una vista estereoscópica.

Solo se utiliza si la opción [Cambiar resolución](cambiar-resolucion.md) está activada.

## Valores posibles

Una de las pantallas detectadas en el equipo.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `MonitorEstereo` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'MonitorEstereo' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MonitorEstereo', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
