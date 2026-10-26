# Generar copia de seguridad al salir
<!-- id: generar-copia-de-seguridad-al-salir -->

Indica si Digi3D.AI generará automáticamente una copia de seguridad del archivo de trabajo al cerrar la ventana de dibujo.

## Valores posibles

* **Sí**. Se genera una copia de seguridad al cerrar la ventana de dibujo.
* **No**. No se genera ninguna copia de seguridad al cerrar la ventana de dibujo.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `GenerarCopiaSeguridadAlSalir` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'GenerarCopiaSeguridadAlSalir' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'GenerarCopiaSeguridadAlSalir', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
