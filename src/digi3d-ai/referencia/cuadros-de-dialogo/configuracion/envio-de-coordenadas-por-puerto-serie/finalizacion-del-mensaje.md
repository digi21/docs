# Finalización del mensaje
<!-- id: finalizacion-del-mensaje -->

Indica los bytes con los que finaliza cada mensaje enviado por el puerto serie.

## Valores posibles

* **\\0**. Carácter nulo.
* **\\n**. Salto de línea.
* **\\r**. Retorno de carro.
* **\\r\\n**. Retorno de carro y salto de línea.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\ComunicacionExterior` |
| Tabla | `Ints` |
| Valor | `Postfijo` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\ComunicacionExterior');
DELETE FROM Ints WHERE Value = 'Postfijo' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'Postfijo', 0 FROM Keys WHERE Path = 'Digi3D\ComunicacionExterior';
```

</details>
