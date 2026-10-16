# Milisegundos doble clic
<!-- id: milisegundos-doble-clic -->

Indica el tiempo, en milisegundos, por debajo del cual dos pulsaciones del botón de Dato se consideran un doble clic.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\IO\TarjDigi3D` |
| Tabla | `Ints` |
| Valor | `MilisegundosDobleClic` |
| Valor por defecto | 200 |

Estas sentencias SQL asignan el valor 200, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\IO\TarjDigi3D');
DELETE FROM Ints WHERE Value = 'MilisegundosDobleClic' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'MilisegundosDobleClic', 200 FROM Keys WHERE Path = 'Digi3D\IO\TarjDigi3D';
```

</details>
