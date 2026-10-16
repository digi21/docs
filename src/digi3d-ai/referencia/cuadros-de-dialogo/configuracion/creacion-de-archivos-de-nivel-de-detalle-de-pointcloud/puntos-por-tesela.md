# Puntos por tesela
<!-- id: puntos-por-tesela -->

Indica el número de puntos que se quiere almacenar en cada tesela de los archivos de nivel de detalle.

Cada tesela se dibuja con un búfer de vértices \(VBO\) y una llamada de dibujo, cuyo coste es fijo con independencia del número de puntos. Las teselas con pocos puntos multiplican las llamadas de dibujo y saturan el controlador de la tarjeta gráfica. El tamaño del nodo raíz se calcula a partir de la forma de la nube para aproximarse a este número.

El valor por defecto es 16000.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.PointCloud` |
| Tabla | `Ints` |
| Valor | `PuntosPorNodo` |
| Valor por defecto | 16000 |

Estas sentencias SQL asignan el valor 16000, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.PointCloud');
DELETE FROM Ints WHERE Value = 'PuntosPorNodo' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PuntosPorNodo', 16000 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.PointCloud';
```

</details>
