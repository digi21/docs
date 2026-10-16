# Oblicuas con el horizonte arriba
<!-- id: oblicuas-con-el-horizonte-arriba -->

Indica cómo se muestran los pares oblicuos cuando las imágenes se presentan proyectadas \(opción [Modo de presentación de imágenes](modo-de-presentacion-de-imagenes.md) en **Proyectar**\).

## Valores posibles

* **Sí** \(valor por defecto\). Un par oblicuo cuya dirección de mirada apunta hacia la parte inferior de la pantalla se gira 180 grados y se intercambian las imágenes izquierda y derecha. El horizonte queda en la parte superior y se conserva la estereoscopía. Los pares que miran en la dirección de la base necesitarían un giro de 90 grados, que rompe la estereoscopía, y se dejan como están.
* **No**. Los pares oblicuos se muestran sin girar.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor` |
| Tabla | `Ints` |
| Valor | `OblicuasConHorizonteArriba` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor');
DELETE FROM Ints WHERE Value = 'OblicuasConHorizonteArriba' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'OblicuasConHorizonteArriba', 0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor';
```
