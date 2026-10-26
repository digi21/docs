# Crear archivo de LOG
<!-- id: crear-archivo-de-log -->

Permite configurar si Digi3D.AI generará un archivo de registro de operaciones (LOG) en el que se almacenará información sobre las operaciones que realiza el programa.

Si se produce un error, la información de las operaciones almacenada en el archivo de LOG ayuda a localizar la causa del error.

La ubicación del archivo se indica en la opción [Ruta al archivo de LOG](ruta-al-archivo-de-log.md).

## Valores posibles

* **Sí**. Digi3D.AI crea el archivo de LOG y almacena en ese archivo información sobre las operaciones que realiza.
* **No**. Digi3D.AI no genera ningún archivo de LOG.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `GenerarArchivoLog` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'GenerarArchivoLog' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'GenerarArchivoLog', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
