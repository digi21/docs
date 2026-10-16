# Regiones de interés de tamaño constante
<!-- id: regiones-de-interes-de-tamano-constante -->

Si se activa, en el panel de archivos de dibujo podrás configurar el tamaño que tendrán las regiones de interés que se solicitan a PostGIS.

## Valores posibles

* **Sí**. Las regiones de interés tienen un tamaño constante configurable.
* **No**. Las regiones de interés no tienen un tamaño constante.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.PostGIS` |
| Tabla | `Ints` |
| Valor | `RegionesDeInteresConTamañoConstante` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.PostGIS');
DELETE FROM Ints WHERE Value = 'RegionesDeInteresConTamañoConstante' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'RegionesDeInteresConTamañoConstante', 1 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.PostGIS';
```

</details>
