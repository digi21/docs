# Origen del píxel
<!-- id: origen-del-pixel -->

Especifica el origen del píxel en la ventana fotogramétrica.

## Valores posibles

* **Centro del píxel**. El origen del píxel se sitúa en su centro.
* **Esquina superior izquierda del píxel**. El origen del píxel se sitúa en su esquina superior izquierda.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `OrigenPixelCentroPixel` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'OrigenPixelCentroPixel' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'OrigenPixelCentroPixel', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
