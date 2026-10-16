# Capturar el dispositivo de entrada al moverlo
<!-- id: capturar-el-dispositivo-de-entrada-al-moverlo -->

Si se activa, basta con mover el dispositivo de entrada para que quede seleccionado como dispositivo de entrada de la ventana de dibujo.

## Valores posibles

* **Sí**. Mover el dispositivo de entrada lo selecciona automáticamente en la ventana de dibujo.
* **No**. El dispositivo de entrada no se selecciona solo por moverlo.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\IO\TarjDigi3D` |
| Tabla | `Ints` |
| Valor | `CapturarDispositivoEntradaAlMoverlo` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\IO\TarjDigi3D');
DELETE FROM Ints WHERE Value = 'CapturarDispositivoEntradaAlMoverlo' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CapturarDispositivoEntradaAlMoverlo', 0 FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D';
```
