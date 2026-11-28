# Ventana fotogramétrica a pantalla completa en el monitor
<!-- id: ventana-fotogrametrica-a-pantalla-completa-en-el-monitor -->

Indica el monitor en el que la ventana fotogramétrica se muestra a pantalla completa.

La ventana fotogramétrica ocupa el monitor elegido entero, sin título, menús, barras de herramientas, barra de estado ni paneles. El modo de pantalla completa está destinado a gafas o televisores 3D en modo lado a lado (SBS, del inglés *side-by-side*) o arriba-abajo. Elegir un monitor requiere ventanas fotogramétricas independientes. Reinicia Digi3D al cambiar entre **Ninguno (ventana normal)** y un monitor.

La página [Pantalla completa](../../../ventana-fotogrametrica/pantalla-completa.md) describe cómo se activa, cómo se alterna con la ventana normal y cómo se cierra la ventana.

## Valores posibles

* **Ninguno (ventana normal)**: la ventana fotogramétrica no se muestra a pantalla completa.
* Un elemento por cada monitor activo, con su nombre: la ventana fotogramétrica se muestra a pantalla completa en ese monitor.
* **Monitor no conectado**: la lista muestra este elemento cuando el monitor guardado en la configuración no está conectado. Mientras no elijas otro valor, Digi3D.AI conserva el monitor guardado.

## Requisitos

* Con un monitor elegido, Digi3D.AI usa ventanas fotogramétricas independientes aunque esté configurada la visualización de la ventana fotogramétrica dentro de la ventana principal.
* Al cambiar entre **Ninguno (ventana normal)** y un monitor, el cuadro de diálogo **Configuración** obliga a reiniciar Digi3D.AI. Cambiar de un monitor a otro no requiere el reinicio.
* La disposición de la lista [Estereoscopía](estereoscopia.md) debe corresponder al modo de la pantalla del monitor elegido.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\Scroll` |
| Tabla | `Texts` |
| Valor | `MonitorVentanaFotogrametricaPantallaCompleta` |
| Valor por defecto | (vacío) |

El dato guardado es la ruta de dispositivo del monitor (*monitorDevicePath*) que asigna Windows, y no cambia al reiniciar el equipo. El cuadro de diálogo **Configuración** escribe ese valor al elegir un monitor; no hay una ruta de ejemplo que sirva para otro equipo. Un valor vacío equivale a **Ninguno (ventana normal)**.

Ejecuta las siguientes sentencias SQL en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) para asignar un texto vacío a `MonitorVentanaFotogrametricaPantallaCompleta`, exista o no la fila, y reinicia Digi3D.AI. El texto vacío equivale a **Ninguno (ventana normal)**:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\Scroll');
DELETE FROM Texts WHERE Value = 'MonitorVentanaFotogrametricaPantallaCompleta' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\Scroll');
INSERT INTO Texts (Key, Value, Data) SELECT Id, 'MonitorVentanaFotogrametricaPantallaCompleta', '' FROM Keys WHERE Path = 'App\Configuration\Scroll';
```

</details>
