# Prioridad del hilo
<!-- id: prioridad-del-hilo -->

Indica la prioridad del hilo de trabajo que se comunica con los codificadores en segundo plano. Una prioridad más alta mejora la respuesta de los dispositivos de entrada, pero consume más recursos del equipo.

## Valores posibles

* **La mínima**.
* **Por debajo de la normal**.
* **Normal**.
* **Por encima de lo normal**.
* **La más alta**.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\IO\TarjDigi3D` |
| Tabla | `Ints` |
| Valor | `Prioridad` |
| Valor por defecto | 2 |

Estas sentencias SQL asignan el valor 2, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\IO\TarjDigi3D');
DELETE FROM Ints WHERE Value = 'Prioridad' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'Prioridad', 2 FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D';
```
