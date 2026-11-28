# Estereoscopía
<!-- id: estereoscopia -->

Indica el método utilizado para mostrar la estereoscopía.

## Valores posibles

Uno de los métodos de visualización estereoscópica disponibles en tu equipo (dependen del hardware y de los módulos instalados). Si el sensor del modelo no admite estereoscopía, Digi3D.AI muestra el modelo en visualización monoscópica, sea cual sea el valor de esta opción.

* **Controlado por el driver**: el controlador de la tarjeta gráfica genera el estéreo (estéreo por cuádruple búfer).
* **Estereoscopio o 3D lado a lado completo (Full SBS)**: la imagen de cada ojo ocupa una mitad horizontal de la pantalla, sin deformación. Sirve para estereoscopios de espejos y para gafas o televisores 3D en modo lado a lado completo (SBS, del inglés *side-by-side*).
* **3D Arriba-Abajo**: la imagen de un ojo ocupa la mitad superior de la pantalla y la del otro ojo, la mitad inferior.
* **Entrelazado horizontal**: para monitores o pantallas con filas alternas polarizadas.
* **Entrelazado vertical**: para monitores o pantallas con columnas alternas polarizadas.
* **Anaglifo**: para gafas con un filtro de distinto color para cada ojo.
* **3D lado a lado a medio ancho (Half SBS)**: para gafas o televisores 3D en modo lado a lado a medio ancho. La pantalla estira cada mitad al doble de ancho y Digi3D.AI dibuja cada mitad comprimida a la mitad en horizontal.

La página [Pantalla completa](../../../ventana-fotogrametrica/pantalla-completa.md) explica cómo elegir la disposición según el modo de la pantalla de unas gafas o de un televisor 3D.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Ints` |
| Valor | `TipoEstereo` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Ints WHERE Value = 'TipoEstereo' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoEstereo', 1 FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
