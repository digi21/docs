# Modo de presentación de imágenes
<!-- id: modo-de-presentacion-de-imagenes -->

Indica cómo se mostrarán las imágenes.

## Valores posibles

* **Proyectar** (valor por omisión). Las imágenes se muestran proyectadas.
* **Ortogonal**. Las imágenes se muestran de forma ortogonal.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor` |
| Tabla | `Ints` |
| Valor | `ProyectarImagenes3` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor');
DELETE FROM Ints WHERE Value = 'ProyectarImagenes3' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ProyectarImagenes3', 0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor';
```
