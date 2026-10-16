# Calcular en la nube
<!-- id: calcular-en-la-nube -->

Si está activo, el cálculo de la orientación relativa se realizará en los servidores en la nube de digi21.net.

## Valores posibles

* **Sí**.
* **No**.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation` |
| Tabla | `Ints` |
| Valor | `CalcularEnLaNube` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation');
DELETE FROM Ints WHERE Value = 'CalcularEnLaNube' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CalcularEnLaNube', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\RelativeOrientation';
```
