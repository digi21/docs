# Mostrar modal al guardar
<!-- id: mostrar-modal-al-guardar -->

Si habilitas esta opción, durante el guardado se muestra un cuadro de diálogo que impide interactuar con la ventana principal mientras indica que se está guardando el archivo.

## Valores posibles

* **Sí**. Se muestra un cuadro de diálogo modal al guardar.
* **No**. No se muestra ningún cuadro de diálogo al guardar.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.Dgn` |
| Tabla | `Ints` |
| Valor | `MostrarModalAlGuardar` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Dgn');
DELETE FROM Ints WHERE Value = 'MostrarModalAlGuardar' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Dgn');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MostrarModalAlGuardar', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Dgn';
```

</details>
