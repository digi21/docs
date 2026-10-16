# Permitir atributos con Tabla=1
<!-- id: permitir-atributos-con-tabla-1 -->

Si está activado, se considera que la tabla 1 es una tabla de base de datos y no la tabla interna del programa.

## Valores posibles

* **Sí**. La tabla 1 se trata como una tabla de base de datos.
* **No**. La tabla 1 se trata como la tabla interna del programa.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.Bin` |
| Tabla | `Ints` |
| Valor | `PermitirAtributosTabla1` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Bin');
DELETE FROM Ints WHERE Value = 'PermitirAtributosTabla1' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Bin');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PermitirAtributosTabla1', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Bin';
```
