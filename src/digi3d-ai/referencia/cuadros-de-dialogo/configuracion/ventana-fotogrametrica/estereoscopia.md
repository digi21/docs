# Estereoscopía
<!-- id: estereoscopia -->

Indica el método utilizado para mostrar la estereoscopía.

## Valores posibles

Uno de los métodos de visualización estereoscópica disponibles en tu equipo (dependen del hardware y de los módulos instalados).

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `TipoEstereo` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'TipoEstereo' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoEstereo', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
