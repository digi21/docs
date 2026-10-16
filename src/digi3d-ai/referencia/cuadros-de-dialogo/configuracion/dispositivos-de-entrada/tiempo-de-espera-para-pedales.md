# Tiempo de espera para pedales
<!-- id: tiempo-de-espera-para-pedales -->

Indica el tiempo, en milisegundos, durante el cual se omite cualquier información de los pedales después de producirse un evento de pedal. Sirve para evitar el ruido en los pedales analógicos.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\IO\TarjDigi3D` |
| Tabla | `Ints` |
| Valor | `TiempoEspera` |
| Valor por defecto | 100 |

Estas sentencias SQL asignan el valor 100, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\IO\TarjDigi3D');
DELETE FROM Ints WHERE Value = 'TiempoEspera' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TiempoEspera', 100 FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D';
```

</details>
