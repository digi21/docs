# Índice pequeño
<!-- id: indice-pequeno -->

Ruta del archivo PNG con la imagen que se muestra cuando se selecciona el índice pequeño.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Texts` |
| Valor | `RutaIndicePequeño` |
| Valor por defecto | (vacío) |

Estas sentencias SQL asignan el texto `C:\Indices\pequeno.png`, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Texts WHERE Value = 'RutaIndicePequeño' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'RutaIndicePequeño', 'C:\Indices\pequeno.png' FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
