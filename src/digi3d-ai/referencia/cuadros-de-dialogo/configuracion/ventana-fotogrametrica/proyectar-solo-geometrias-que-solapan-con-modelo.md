# Proyectar solo geometrías que solapan con modelo (BETA)
<!-- id: proyectar-solo-geometrias-que-solapan-con-modelo -->

Si se habilita, únicamente se proyectarán las geometrías que solapen con las máximas y mínimas del modelo fotogramétrico.

## Valores posibles

* **Sí**. Solo se proyectan las geometrías que solapan con el modelo.
* **No**. Se proyectan todas las geometrías.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `ProyectarSoloVectoresQueSolapanConModelo` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'ProyectarSoloVectoresQueSolapanConModelo' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ProyectarSoloVectoresQueSolapanConModelo', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```
