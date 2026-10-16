# Activar
<!-- id: activar -->

Indica si la ventana fotogramétrica enviará las coordenadas por el puerto serie.

## Valores posibles

* **Sí**. La ventana fotogramétrica envía las coordenadas por el puerto serie.
* **No**. No se envían coordenadas por el puerto serie.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\ComunicacionExterior` |
| Tabla | `Ints` |
| Valor | `ActivarComunicacionExterior` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\ComunicacionExterior');
DELETE FROM Ints WHERE Value = 'ActivarComunicacionExterior' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ActivarComunicacionExterior', 1 FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior';
```
