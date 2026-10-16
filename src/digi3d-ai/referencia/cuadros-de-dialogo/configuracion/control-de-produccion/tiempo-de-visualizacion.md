# Tiempo de visualización
<!-- id: tiempo-de-visualizacion -->

Indica la duración, en minutos, de cada bloque de la barra de producción. La barra representa 12 horas. Cada bloque se pinta en verde si durante ese tiempo el usuario pulsó algún botón del ratón en una ventana de dibujo o algún pedal en una ventana fotogramétrica, y en rojo si no.

## Valores posibles

Un número de minutos entre 1 y 720. El valor por defecto es 2. Digi3D.AI ajusta al límite más próximo los valores que quedan fuera de ese intervalo.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\ProductionControl` |
| Tabla | `Ints` |
| Valor | `TiempoVisualizacion` |
| Valor por defecto | 2 |

Estas sentencias SQL asignan el valor 2, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\ProductionControl');
DELETE FROM Ints WHERE Value = 'TiempoVisualizacion' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\ProductionControl');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TiempoVisualizacion', 2 FROM Keys WHERE Path = 'App\Configuration\ProductionControl';
```
