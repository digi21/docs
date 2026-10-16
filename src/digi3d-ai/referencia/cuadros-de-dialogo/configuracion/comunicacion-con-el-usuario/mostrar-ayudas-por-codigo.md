# Mostrar ayudas por código
<!-- id: mostrar-ayudas-por-codigo -->

Indica si Digi3D.AI mostrará en el [panel de ayuda dinámica](../../../paneles/ayuda-dinamica.md) el archivo HTML asociado al código (asignado en el campo Archivo de ayuda) al seleccionarlo como código activo.

## Valores posibles

* **Sí**. Se muestra la ayuda HTML del código activo en el panel de ayuda dinámica.
* **No**. No se muestra la ayuda HTML del código activo.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `MostrarAyudasCodigos` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'MostrarAyudasCodigos' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MostrarAyudasCodigos', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```
