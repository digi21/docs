# Nombre de la topología por defecto
<!-- id: nombre-de-la-topologia-por-defecto -->

Indica el nombre que se asigna a la topología si no se pasa como parámetro al ejecutar la orden [CREAR\_TOPOLOGIAS\_CODIGOS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-topologias-codigos-visibles.md).

Admite [macros](../../../macros.md). El valor por defecto es `Topología creada a las $(HoraCompleta)`.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles` |
| Tabla | `Texts` |
| Valor | `NombreTopologiaDefecto` |
| Valor por defecto | `Topología creada a las $(HoraCompleta)` |

Estas sentencias SQL asignan el texto `Topología creada a las $(HoraCompleta)`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
DELETE FROM Texts WHERE Value = 'NombreTopologiaDefecto' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'NombreTopologiaDefecto', 'Topología creada a las $(HoraCompleta)' FROM Keys WHERE Path = 'DigiNG\Extensiones\DigiNG.OrdenesTopologia\TopologiaCodigosVisibles';
```
