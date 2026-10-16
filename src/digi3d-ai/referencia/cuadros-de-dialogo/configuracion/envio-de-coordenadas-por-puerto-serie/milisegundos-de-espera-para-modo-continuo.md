# Milisegundos de espera para modo continuo
<!-- id: milisegundos-de-espera-para-modo-continuo -->

Si el valor es distinto de **0**, indica los milisegundos que se esperarán para enviar una coordenada, desde que el usuario pulsa el pedal/botón de Dato y lo mantiene pulsado hasta que se empiezan a enviar coordenadas.

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
