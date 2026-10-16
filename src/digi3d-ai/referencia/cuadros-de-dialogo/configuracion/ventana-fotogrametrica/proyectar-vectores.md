# Proyectar vectores
<!-- id: proyectar-vectores -->

Indica si los vectores se proyectan en la cámara estereoscópica de forma síncrona o asíncrona.

## Valores posibles

* **Síncrono**. Los vectores se proyectan de forma síncrona.
* **Asíncrono**. Los vectores se proyectan de forma asíncrona.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `ProyectarVectoresSíncrono` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'ProyectarVectoresSíncrono' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ProyectarVectoresSíncrono', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
