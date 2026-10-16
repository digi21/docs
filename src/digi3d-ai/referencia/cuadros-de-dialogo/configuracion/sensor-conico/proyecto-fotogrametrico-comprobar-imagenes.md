# Proyecto fotogramétrico: Comprobar imágenes
<!-- id: proyecto-fotogrametrico-comprobar-imagenes -->

Comprueba la compatibilidad de todas las imágenes del archivo de proyecto fotogramétrico.

## Valores posibles

* **Sí**.
* **No**.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo` |
| Tabla | `Ints` |
| Valor | `ComprobarImágenes` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo');
DELETE FROM Ints WHERE Value = 'ComprobarImágenes' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ComprobarImágenes', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\CambioRapidoModelo';
```

</details>
