# Permitir instalar versiones BETA
<!-- id: permitir-instalar-versiones-beta -->

Permite configurar si, al comprobar si existe una versión nueva, Digi3D.AI tendrá en cuenta también las versiones BETA (versiones que aún no se han probado al 100 % y que pueden contener errores).

Esta opción no aparece en las versiones BETA de Digi3D.AI.

## Valores posibles

* **Sí**. Al comprobar si existe una versión nueva, Digi3D.AI incluye las versiones BETA.
* **No**. Digi3D.AI solo tiene en cuenta las versiones estables.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `ComprobarVersiónBETA` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'ComprobarVersiónBETA' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ComprobarVersiónBETA', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
