# Mostrar campos no visibles en el panel Propiedades de la entidad seleccionada
<!-- id: mostrar-campos-no-visibles -->

Si se habilita, se mostrarán también los campos de la base de datos marcados como no visibles en el panel **Propiedades de la entidad seleccionada**.

## Valores posibles

* **Sí**. El panel muestra también los campos marcados como no visibles.
* **No**. El panel oculta los campos marcados como no visibles.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `MostrarCamposOcultosEnPanelPropiedadesEntidadSeleccionada` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'MostrarCamposOcultosEnPanelPropiedadesEntidadSeleccionada' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MostrarCamposOcultosEnPanelPropiedadesEntidadSeleccionada', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```
