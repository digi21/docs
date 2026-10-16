# Permitir animaciones de opacidad
<!-- id: permitir-animaciones-de-opacidad -->

Si se activa, las teselas recién cargadas se muestran con una animación.

## Valores posibles

* **Sí**. Las teselas recién cargadas aparecen con una animación.
* **No**. Las teselas aparecen sin animación.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `PermitirAnimaciónOpacidad` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'PermitirAnimaciónOpacidad' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PermitirAnimaciónOpacidad', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
