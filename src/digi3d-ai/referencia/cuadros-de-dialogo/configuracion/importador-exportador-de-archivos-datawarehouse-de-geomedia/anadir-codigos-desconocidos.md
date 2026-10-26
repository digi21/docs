# Añadir códigos desconocidos
<!-- id: anadir-codigos-desconocidos-7 -->

Indica si se añadirán a la tabla de códigos activa los códigos de las entidades para las cuales no se ha localizado código de transformación.

## Valores posibles

* **Sí**. Se añaden a la tabla de códigos activa los códigos de las entidades para las que no se ha localizado un código de transformación.
* **No**. No se añaden a la tabla de códigos activa los códigos de las entidades para las que no se ha localizado un código de transformación.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.Geomedia` |
| Tabla | `Ints` |
| Valor | `AñadirCódigosDesconocidos` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Geomedia');
DELETE FROM Ints WHERE Value = 'AñadirCódigosDesconocidos' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Geomedia');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'AñadirCódigosDesconocidos', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Geomedia';
```

</details>
