# Formato de comunicación exterior
<!-- id: formato-de-comunicacion-exterior -->

Indica el formato en el que se enviarán las coordenadas por el puerto serie.

## Valores posibles

* **pedal-x-y-z (ASCII)**. Coordenadas en formato real con 3 decimales.
* **x-y-z-pedal (ASCII)**. Coordenadas en formato real con 3 decimales.
* **pedal-x-y-z (ASCII), entero ×100**. Coordenadas en formato entero multiplicadas por 100.
* **pedal-x-y-z (ASCII), entero ×1000**. Coordenadas en formato entero multiplicadas por 1000.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\ComunicacionExterior` |
| Tabla | `Ints` |
| Valor | `FormatoComunicacionExterior` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\ComunicacionExterior');
DELETE FROM Ints WHERE Value = 'FormatoComunicacionExterior' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'FormatoComunicacionExterior', 1 FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior';
```

</details>
