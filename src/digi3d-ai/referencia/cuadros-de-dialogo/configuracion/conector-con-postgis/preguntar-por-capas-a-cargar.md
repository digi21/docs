# Preguntar por capas a cargar
<!-- id: preguntar-por-capas-a-cargar -->

Si se activa, al cargar un archivo se muestra un cuadro de diálogo en el que se pueden seleccionar las capas a cargar.

## Valores posibles

* **Sí**. Se pregunta por las capas a cargar al abrir un archivo.
* **No**. Se cargan todas las capas sin preguntar.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.PostGIS` |
| Tabla | `Ints` |
| Valor | `PreguntarPorCapasACargar` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.PostGIS');
DELETE FROM Ints WHERE Value = 'PreguntarPorCapasACargar' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PreguntarPorCapasACargar', 0 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS';
```

</details>
