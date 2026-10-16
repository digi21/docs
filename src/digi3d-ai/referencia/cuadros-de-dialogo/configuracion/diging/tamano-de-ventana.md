# Tamaño de ventana
<!-- id: tamano-de-ventana -->

Si has habilitado la opción [Limitar el zoom máximo](limitar-el-zoom-maximo.md), introduce en este campo el tamaño mínimo (en unidades del archivo de dibujo cargado) que podrá representar la ventana de dibujo.

Por ejemplo, si la ventana de dibujo trabaja en metros e introduces un 1, el ancho/alto mínimo que representará será de 1 metro.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Doubles` |
| Valor | `AnchoOAltoMinimoFactorZoom` |
| Valor por defecto | 1.0 |

Estas sentencias SQL asignan el valor 1.0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Doubles WHERE Value = 'AnchoOAltoMinimoFactorZoom' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Doubles (Key, Value, Data) SELECT Id, 'AnchoOAltoMinimoFactorZoom', 1.0 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
