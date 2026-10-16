# Generar copia de seguridad al comprimir
<!-- id: generar-copia-de-seguridad-al-comprimir -->

Indica si Digi3D.AI generará automáticamente una copia de seguridad del archivo de trabajo al ejecutar la orden [COMPRIMIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md), antes de comprimir el archivo de dibujo.

## Valores posibles

* **Sí**. Se genera una copia de seguridad antes de comprimir.
* **No**. No se genera ninguna copia de seguridad al comprimir.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `GenerarCopiaSeguridadAlComprimir` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'GenerarCopiaSeguridadAlComprimir' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'GenerarCopiaSeguridadAlComprimir', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```
