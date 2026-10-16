# Mostrar solo modelos cargados
<!-- id: mostrar-solo-modelos-cargados -->

Si se activa, el panel de proyecto fotogramétrico mostrará únicamente los modelos que ha podido cargar.

## Valores posibles

* **Sí**. El panel muestra solo los modelos que se han podido cargar.
* **No**. El panel muestra todos los modelos del proyecto.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration\CambioRapidoModelos` |
| Tabla | `Ints` |
| Valor | `MostrarUnicamenteModelosQueSePuedenCargar` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration\CambioRapidoModelos');
DELETE FROM Ints WHERE Value = 'MostrarUnicamenteModelosQueSePuedenCargar' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration\CambioRapidoModelos');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MostrarUnicamenteModelosQueSePuedenCargar', 0 FROM Keys WHERE Path = 'App\Configuration\CambioRapidoModelos';
```
