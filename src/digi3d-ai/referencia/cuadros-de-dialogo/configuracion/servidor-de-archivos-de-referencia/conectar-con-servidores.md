# Conectar con servidores
<!-- id: conectar-con-servidores -->

Permite configurar si Digi3D.AI se conectará con el servidor que haya bloqueado un archivo de dibujo, para obtener las modificaciones del archivo en tiempo real.

## Valores posibles

* **Sí**. Digi3D.AI se conecta con el servidor que ha bloqueado el archivo de dibujo y recibe las modificaciones del archivo en tiempo real.
* **No**. Digi3D.AI no se conecta con otros servidores de archivos de referencia.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `ConectarConServidoresArchivosReferencia` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'ConectarConServidoresArchivosReferencia' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ConectarConServidoresArchivosReferencia', 0 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
