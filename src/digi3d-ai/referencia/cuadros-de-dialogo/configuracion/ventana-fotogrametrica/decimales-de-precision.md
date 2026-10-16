# Decimales de precisión
<!-- id: decimales-de-precision -->

Indica el número de decimales que se utilizan para mostrar las coordenadas y los residuos en los cuadros de diálogo y ventanas.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `DecimalesPrecision` |
| Valor por defecto | 3 |

Estas sentencias SQL asignan el valor 3, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'DecimalesPrecision' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'DecimalesPrecision', 3 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
