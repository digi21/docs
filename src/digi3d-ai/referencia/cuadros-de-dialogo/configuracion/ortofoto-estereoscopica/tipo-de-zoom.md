# Tipo de zoom
<!-- id: tipo-de-zoom-2 -->

Indica cómo cambian el zoom las órdenes de zoom acercar y alejar en la ventana fotogramétrica.

## Valores posibles

* **Modificando la focal de la cámara**. Cada zoom cambia en 1 grado el campo de visión de la cámara.
* **Cambiando la posición de la cámara** \(valor por defecto\). Cada zoom acerca o aleja la cámara según el [Factor de zoom](factor-de-zoom.md).

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto` |
| Tabla | `Ints` |
| Valor | `ZoomsCambioFocal` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
DELETE FROM Ints WHERE Value = 'ZoomsCambioFocal' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'ZoomsCambioFocal', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.StereoscopicOrthophoto';
```
