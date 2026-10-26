# Índice cruz
<!-- id: indice-cruz -->

Indica la ruta del archivo de imagen en formato PNG (Portable Network Graphics) con la imagen que se muestra cuando se selecciona el índice con forma de cruz.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Texts` |
| Valor | `RutaIndiceCruz` |
| Valor por defecto | (vacío) |

Estas sentencias SQL asignan el texto `C:\Indices\cruz.png`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Texts WHERE Value = 'RutaIndiceCruz' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RutaIndiceCruz', 'C:\Indices\cruz.png' FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
