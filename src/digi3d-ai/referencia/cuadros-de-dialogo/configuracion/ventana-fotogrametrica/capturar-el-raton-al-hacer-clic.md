# Capturar el ratón al hacer clic
<!-- id: capturar-el-raton-al-hacer-clic -->

Indica si se captura el ratón en la vista estereoscópica al hacer clic sobre ella.

## Valores posibles

* **Sí**. El ratón queda capturado en la vista estereoscópica al hacer clic.
* **No**. El ratón no se captura.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `CapturarRatónAlHacerClic` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'CapturarRatónAlHacerClic' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CapturarRatónAlHacerClic', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
