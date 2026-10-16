# Bloqueo de mayúsculas actúa como mayúsculas
<!-- id: bloqueo-de-mayusculas-actua-como-mayusculas -->

Si se activa, cuando está activado el bloqueo de mayúsculas y se pulsa una tecla, el programa considera que se ha pulsado la combinación Shift + tecla.

## Valores posibles

* **Sí**. Con el bloqueo de mayúsculas activo, las teclas actúan como Shift + tecla.
* **No**. El bloqueo de mayúsculas no se interpreta como Shift.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `BloqueoMayusculasActuaComoMayusculas` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'BloqueoMayusculasActuaComoMayusculas' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'BloqueoMayusculasActuaComoMayusculas', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
