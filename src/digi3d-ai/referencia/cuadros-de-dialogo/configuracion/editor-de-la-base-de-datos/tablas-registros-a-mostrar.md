# Tablas/Registros a mostrar
<!-- id: tablas-registros-a-mostrar -->

Indica qué tablas y registros mostrará el panel del editor de la base de datos.

## Valores posibles

* **Mostrar base de datos completa**. Muestra todas las tablas y todos los registros.
* **Todos los registros solo de las tablas enlazadas**. Muestra todos los registros, pero únicamente de las tablas enlazadas.
* **Mostrar únicamente las tablas y registros de las geometrías en la ventana de dibujo**. Muestra solo las tablas y registros correspondientes a las geometrías presentes en la ventana de dibujo.
* **Mostrar geometrías que cumplan expresión Python**. Muestra únicamente las geometrías que cumplen una expresión Python.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Configuration\DatabaseEditor` |
| Tabla | `Ints` |
| Valor | `QueRegistrosMostrar` |
| Valor por defecto | 1 o 2, según el código que lo lee primero |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Configuration\DatabaseEditor');
DELETE FROM Ints WHERE Value = 'QueRegistrosMostrar' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'QueRegistrosMostrar', 0 FROM Keys WHERE Path = 'Digi3D\Configuration\DatabaseEditor';
```
