# Sistema de referencia desconocido
<!-- id: sistema-de-referencia-desconocido -->

Indica qué hace Digi3D.AI al abrir un archivo de dibujo cuando la ventana de dibujo o el archivo tiene un sistema de referencia de coordenadas local o desconocido y el otro no.

El caso más habitual es el de un archivo de dibujo con un sistema 2D, por ejemplo *ETRS89 / UTM zona 30N*, en una ventana de dibujo con un sistema compuesto, por ejemplo *ETRS89 / UTM zona 30N + EGM2008*. Digi3D.AI completa el sistema del archivo con un sistema vertical desconocido, y necesita saber cómo se transforman las alturas entre los dos sistemas verticales.

## Valores posibles

* **Preguntar**. Si el sistema desconocido es el vertical, se abre el cuadro de diálogo para definir la transformación vertical. La transformación se guarda con el archivo de dibujo y no se vuelve a preguntar al abrirlo. Si el sistema desconocido es el horizontal, el archivo no se abre. Es el valor por defecto.
* **1:1**. No se pregunta nada: las coordenadas del sistema desconocido se usan tal cual en el otro sistema, con una transformación identidad. Si el archivo está en otro sistema de referencia, sus geometrías aparecen desplazadas y Digi3D.AI no avisa.
* **Rechazar**. El archivo no se abre. Digi3D.AI muestra el error y propone seleccionar *Local* como sistema de referencia de la ventana de dibujo.

Los cambios se aplican a los archivos de dibujo que se abran después.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `SistemaReferenciaDesconocido` |
| Valor por defecto | 0 |

Los valores son 0 (Preguntar), 1 (1:1) y 2 (Rechazar). Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md):

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'SistemaReferenciaDesconocido' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'SistemaReferenciaDesconocido', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
