# Dibujar polígonos en 3D
<!-- id: dibujar-poligonos-en-3d -->

Si se activa, los polígonos se dibujan con coordenada Z. Si el polígono tiene diferencias muy grandes de Z, puede que no se represente correctamente.

## Valores posibles

* **Sí**. Los polígonos se dibujan con coordenada Z.
* **No**. Los polígonos se dibujan en 2D.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `DibujarPoligonos3D` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'DibujarPoligonos3D' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'DibujarPoligonos3D', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
