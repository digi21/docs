# Tamaño de las teselas
<!-- id: tamano-de-las-teselas -->

Indica el tamaño que tendrán las teselas para aquellas imágenes que no están formadas por teselas, como las JPG.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `TamanoTiles` |
| Valor por defecto | 256 |

Estas sentencias SQL asignan el valor 256, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'TamanoTiles' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TamanoTiles', 256 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
