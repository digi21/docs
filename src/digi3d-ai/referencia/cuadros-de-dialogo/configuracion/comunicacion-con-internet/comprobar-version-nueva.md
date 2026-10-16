# Comprobar versión nueva
<!-- id: comprobar-version-nueva -->

Permite configurar si Digi3D.AI comprobará si existe una versión nueva cada vez que arranque.

Esta opción no aparece en las versiones BETA de Digi3D.AI.

## Valores posibles

* **Sí**. Digi3D.AI comprueba si existe una versión nueva cada vez que arranca.
* **No**. Digi3D.AI no comprueba si existe una versión nueva.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `ComprobarVersiónNueva` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'ComprobarVersiónNueva' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ComprobarVersiónNueva', 0 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
