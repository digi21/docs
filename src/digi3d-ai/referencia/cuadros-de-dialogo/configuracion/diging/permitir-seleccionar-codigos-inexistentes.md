# Permitir seleccionar códigos inexistentes
<!-- id: permitir-seleccionar-codigos-inexistentes -->

Indica si se le permitirá al usuario seleccionar como código activo un código que no exista en la tabla de códigos.

Por ejemplo, al ejecutar la orden [COD+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md) con un código inexistente, el programa mostrará o no un mensaje de error en función de esta opción.

## Valores posibles

* **Sí**. Se permite seleccionar como código activo un código inexistente.
* **No**. No se permite seleccionar como código activo un código inexistente.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `PermitirSeleccionarCódigosInexistentes` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'PermitirSeleccionarCódigosInexistentes' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PermitirSeleccionarCódigosInexistentes', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```
