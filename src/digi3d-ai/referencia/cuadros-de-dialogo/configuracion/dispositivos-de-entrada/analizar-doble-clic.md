# Analizar doble clic
<!-- id: analizar-doble-clic -->

Indica si Digi3D.AI analizará las pulsaciones del pedal/botón de Dato y enviará eventos de tipo doble clic.

## Valores posibles

* **Sí**. Digi3D.AI detecta los dobles clic del botón/pedal de Dato y los notifica.
* **No**. Digi3D.AI no detecta los dobles clic del botón/pedal de Dato.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\IO\TarjDigi3D` |
| Tabla | `Ints` |
| Valor | `AnalizarDobleClic` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\IO\TarjDigi3D');
DELETE FROM Ints WHERE Value = 'AnalizarDobleClic' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'AnalizarDobleClic', 1 FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D';
```

</details>
