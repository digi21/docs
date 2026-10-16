# Cambiar resolución
<!-- id: cambiar-resolucion -->

Indica si se cambia la resolución del monitor al cargar una vista estereoscópica.

## Valores posibles

* **Sí**. Se cambia la resolución del monitor al abrir la vista estereoscópica.
* **No**. No se cambia la resolución del monitor.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `CambiarResolucion` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'CambiarResolucion' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CambiarResolucion', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```
