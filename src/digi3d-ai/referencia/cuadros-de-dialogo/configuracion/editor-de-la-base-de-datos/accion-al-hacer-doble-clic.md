# Acción al hacer doble clic
<!-- id: accion-al-hacer-doble-clic -->

Indica cómo se comportará la ventana de dibujo al hacer doble clic sobre una entidad seleccionada en el editor de la base de datos.

## Valores posibles

* **Zoom extendido a la entidad**. La ventana hace un zoom que ajusta la entidad a la vista.
* **Desplazar la cámara al centro de la entidad**. La ventana desplaza la cámara hasta el centro de la entidad, sin cambiar el nivel de zoom.
* **Mantenerse en el sitio**. La ventana no cambia la vista.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Configuration\DatabaseEditor` |
| Tabla | `Ints` |
| Valor | `AcciónAlHacerDobleClicPanelEditorBBDD` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Configuration\DatabaseEditor');
DELETE FROM Ints WHERE Value = 'AcciónAlHacerDobleClicPanelEditorBBDD' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'AcciónAlHacerDobleClicPanelEditorBBDD', 0 FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor';
```
