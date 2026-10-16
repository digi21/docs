# Mostrar panel lateral
<!-- id: mostrar-panel-lateral -->

Si se activa, se muestra un panel lateral en la ventana fotogramétrica que permite cambiar la radiometría de las imágenes mostradas.

## Valores posibles

* **Sí**. Se muestra el panel lateral de radiometría.
* **No**. No se muestra el panel lateral.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `MostrarPanelLateral` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'MostrarPanelLateral' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MostrarPanelLateral', 0 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```
