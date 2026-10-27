# Sistema de referencia desconocido
<!-- id: sistema-de-referencia-desconocido -->

Indica qué hace Digi3D.AI al abrir un archivo de dibujo en la ventana de dibujo o un modelo en la ventana fotogramétrica cuando la ventana de dibujo tiene un sistema de referencia de coordenadas local o desconocido y el archivo o el modelo no, o al revés.

El caso más habitual es el de un archivo de dibujo con un sistema 2D, por ejemplo *ETRS89 / UTM zona 30N*, en una ventana de dibujo con un sistema compuesto, por ejemplo *ETRS89 / UTM zona 30N + EGM2008*. Digi3D.AI completa el sistema del archivo con un sistema vertical desconocido, y requiere una transformación vertical para convertir las alturas entre ese sistema vertical desconocido y el sistema vertical de la ventana de dibujo. Si el sistema del sensor de un modelo fotogramétrico no tiene sistema vertical, Digi3D.AI también lo completa con un sistema vertical desconocido, salvo que la opción [Solicitar sistema vertical para sensores](solicitar-sistema-vertical-para-sensores.md) esté activada y el usuario elija un sistema vertical.

## Valores posibles

* **Preguntar**. Si el sistema desconocido es el vertical, se abre el cuadro de diálogo para definir la transformación vertical. Al abrir un archivo de dibujo, Digi3D.AI guarda la transformación vertical con el archivo y no vuelve a abrir el cuadro de diálogo para definir la transformación vertical en las siguientes aperturas del archivo. Al abrir un modelo, la transformación solo se guarda si se marca la casilla *Utilizar siempre esta transformación*, y entonces aparece en [Transformaciones memorizadas](transformaciones-memorizadas.md). Si el sistema desconocido es el horizontal, el archivo o el modelo no se abre. Es el valor por defecto.
* **1:1**. Digi3D.AI usa una transformación identidad entre el sistema de referencia de la ventana de dibujo y el del archivo o del modelo: los valores de las coordenadas no cambian, y no se abre ningún cuadro de diálogo para definir una transformación. Si el sistema de referencia real del archivo o del modelo difiere del de la ventana de dibujo, las coordenadas del archivo o del modelo aparecen desplazadas en la ventana de dibujo y Digi3D.AI no avisa.
* **Rechazar**. El archivo o el modelo no se abre. Al abrir un archivo de dibujo, Digi3D.AI muestra el error y propone seleccionar *Local* como sistema de referencia de la ventana de dibujo.

Los cambios en esta opción se aplican a los archivos de dibujo y a los modelos que se abran después de modificarla.

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
