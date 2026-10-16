# Configuración para un único monitor
<!-- id: configuracion-para-un-unico-monitor -->

Permite indicar si vas a utilizar el programa con un único monitor o con varios.

Con un único monitor, al abrir una ventana fotogramétrica esta se abre dentro del marco principal del programa. Con varios monitores, la ventana fotogramétrica se abre como una aplicación independiente, de manera que puedes moverla a otro monitor.

## Valores posibles

* **Sí**. Digi3D.AI abre las ventanas fotogramétricas dentro del marco principal de la aplicación.
* **No**. Digi3D.AI abre las ventanas fotogramétricas como una aplicación independiente.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `FullMDI3D` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'FullMDI3D' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'FullMDI3D', 0 FROM Keys WHERE Path = 'App\Configuration';
```
