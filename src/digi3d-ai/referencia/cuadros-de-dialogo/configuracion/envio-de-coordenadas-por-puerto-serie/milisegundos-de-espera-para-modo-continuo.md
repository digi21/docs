# Milisegundos de espera para modo continuo
<!-- id: milisegundos-de-espera-para-modo-continuo -->

Si el valor es distinto de **0**, indica el tiempo, en milisegundos, desde que pulsas el botón o pedal de Dato hasta que Digi3D.AI vuelve a enviar las coordenadas de los movimientos del cursor mientras mantienes pulsado el botón o pedal. Al pulsar el botón o pedal de Dato, Digi3D.AI envía inmediatamente una línea con las coordenadas del cursor y el estado de pulsación del botón o pedal de Dato; durante la espera, Digi3D.AI no envía líneas provocadas por los movimientos del cursor, y al soltar el botón o pedal envía sin esperar una línea con el estado de pulsación igual a 0.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\ComunicacionExterior` |
| Tabla | `Ints` |
| Valor | `MilisegundosEsperaOnMove` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\ComunicacionExterior');
DELETE FROM Ints WHERE Value = 'MilisegundosEsperaOnMove' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MilisegundosEsperaOnMove', 1 FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior';
```

</details>
