# Proyecto fotogramétrico: Correlar internas
<!-- id: proyecto-fotogrametrico-correlar-internas -->

Correla las orientaciones internas de las imágenes que no tengan orientación interna asociada en el archivo de proyecto fotogramétrico. Solo se ejecuta si la opción «Comprobar imágenes» está activa.

## Valores posibles

* **Sí**.
* **No**.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo` |
| Tabla | `Ints` |
| Valor | `CorrelarInternas` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo');
DELETE FROM Ints WHERE Value = 'CorrelarInternas' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'CorrelarInternas', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo';
```

</details>
