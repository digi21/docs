# Permitir comprimir
<!-- id: permitir-comprimir -->

Indica si Digi3D.AI puede comprimir un archivo abierto con el importador/exportador de Shapefile.

## Valores posibles

* **Sí** \(valor por defecto\). La orden [COMPRIMIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md) puede comprimir el archivo.
* **No**. El archivo no se comprime.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\IO\Digi21.Io.Shp` |
| Tabla | `Ints` |
| Valor | `PermitirComprimir` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\IO\Digi21.Io.Shp');
DELETE FROM Ints WHERE Value = 'PermitirComprimir' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PermitirComprimir', 0 FROM Keys WHERE Path = 'DigiNG\IO\Digi21.Io.Shp';
```

</details>
