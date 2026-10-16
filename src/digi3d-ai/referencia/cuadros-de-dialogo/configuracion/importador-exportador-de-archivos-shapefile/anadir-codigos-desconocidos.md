# Añadir códigos desconocidos
<!-- id: anadir-codigos-desconocidos-10 -->

Indica si se añadirán a la tabla de códigos activa los códigos de las entidades para las cuales no se ha localizado código de transformación.

## Valores posibles

* **Sí**. Los códigos no localizados se añaden a la tabla de códigos activa.
* **No**. Los códigos no localizados no se añaden a la tabla de códigos.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.Shp` |
| Tabla | `Ints` |
| Valor | `AñadirCódigosDesconocidos` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Shp');
DELETE FROM Ints WHERE Value = 'AñadirCódigosDesconocidos' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'AñadirCódigosDesconocidos', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp';
```

</details>
