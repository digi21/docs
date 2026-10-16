# Crear servidor
<!-- id: crear-servidor -->

Permite configurar si Digi3D.AI creará un servidor para informar al resto de equipos cada vez que se actualice un archivo de dibujo. Resulta útil cuando varios equipos trabajan de forma simultánea sobre los mismos archivos de dibujo de referencia.

El servidor se publica en el [puerto](puerto.md) indicado.

## Valores posibles

* **Sí**. Digi3D.AI crea el servidor y avisa al resto de equipos cuando se actualiza un archivo de dibujo.
* **No**. Digi3D.AI no crea ningún servidor.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `ServidorArchivosReferencia` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'ServidorArchivosReferencia' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ServidorArchivosReferencia', 0 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
