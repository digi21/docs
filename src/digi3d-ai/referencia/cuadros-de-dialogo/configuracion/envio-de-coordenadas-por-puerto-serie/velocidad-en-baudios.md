# Velocidad en baudios
<!-- id: velocidad-en-baudios -->

Indica la velocidad, en baudios, a la que se envía la información por el puerto serie. Debe coincidir con la velocidad configurada en el dispositivo receptor.

## Valores posibles

Una de las velocidades estándar disponibles: 50, 75, 110, 134, 150, 200, 300, 600, 1200, 1800, 2400, 4800, 9600, 19200, 28800, 38400, 57600, 76800, 115200, 230400, 460800, 576000 o 921600 baudios.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\ComunicacionExterior` |
| Tabla | `Ints` |
| Valor | `BaudiosComunicacionExterior` |
| Valor por defecto | 115200 |

Estas sentencias SQL asignan el valor 115200, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\ComunicacionExterior');
DELETE FROM Ints WHERE Value = 'BaudiosComunicacionExterior' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'BaudiosComunicacionExterior', 115200 FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior';
```
