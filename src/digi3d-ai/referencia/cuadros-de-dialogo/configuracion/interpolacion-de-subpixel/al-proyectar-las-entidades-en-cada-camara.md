# Al proyectar las entidades en cada cámara
<!-- id: al-proyectar-las-entidades-en-cada-camara -->

Si el sensor admite trabajar con interpolación de subpíxel, esta opción indica si los cálculos utilizan interpolación de subpíxel al proyectar las entidades en cada cámara.

## Valores posibles

* **Con interpolación de subpixel**. Los cálculos se realizan con interpolación de subpíxel (más precisión y más tiempo de proceso que sin interpolación de subpíxel).
* **Sin interpolación de subpixel**. Los cálculos se realizan sin interpolación de subpíxel.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Configuration\Interpolation` |
| Tabla | `Ints` |
| Valor | `TipoInterpolacionProyectarEntidades` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Configuration\Interpolation');
DELETE FROM Ints WHERE Value = 'TipoInterpolacionProyectarEntidades' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Configuration\Interpolation');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoInterpolacionProyectarEntidades', 0 FROM Keys WHERE Path = 'Digi3D\Configuration\Interpolation';
```

</details>
