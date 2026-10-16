# Tipo de recorte de geometrías
<!-- id: tipo-de-recorte-de-geometrias -->

Indica si las geometrías que devuelve el servidor PostGIS se recortan a la ventana de la región de interés y dónde se hace el recorte.

## Valores posibles

* **No recortar** \(valor por defecto\). Las geometrías se cargan completas, sin recortar.
* **Recortar en el servidor**. El servidor PostGIS devuelve las geometrías recortadas a la región de interés.
* **Recortar en local**. Digi3D.AI recorta en el equipo las geometrías que devuelve el servidor.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.PostGIS` |
| Tabla | `Ints` |
| Valor | `TipoRecorteInterseccionRoi` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.PostGIS');
DELETE FROM Ints WHERE Value = 'TipoRecorteInterseccionRoi' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoRecorteInterseccionRoi', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS';
```

</details>
