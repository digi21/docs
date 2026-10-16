# Omitir modelos para los cuales no hay foto
<!-- id: omitir-modelos-para-los-cuales-no-hay-foto -->

Si se activa, al cargar un proyecto fotogramétrico no se mostrarán los modelos para los cuales no se ha localizado alguna de sus fotos.

## Valores posibles

* **Sí**. Se omiten los modelos sin foto localizada.
* **No**. Se muestran todos los modelos.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor\Inpho` |
| Tabla | `Ints` |
| Valor | `OmitirModelosParaLosCualesNoSeLocalizaFoto` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\Inpho');
DELETE FROM Ints WHERE Value = 'OmitirModelosParaLosCualesNoSeLocalizaFoto' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Inpho');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'OmitirModelosParaLosCualesNoSeLocalizaFoto', 0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Inpho';
```
