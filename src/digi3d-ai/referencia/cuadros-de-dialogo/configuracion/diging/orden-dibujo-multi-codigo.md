# Orden dibujo (multi código)
<!-- id: orden-dibujo-multi-codigo -->

Indica el orden en el que se dibujan los códigos cuando una geometría tiene más de un código.

Si una geometría tiene los códigos A, B y C, la ventana de dibujo la dibuja tres veces; con esta opción configuras si se dibuja primero el código A o al revés.

## Valores posibles

* **Primer código primero**. Se dibuja primero el código A, luego el B y por último el C.
* **Último código primero**. Se dibuja primero el código C, luego el B y por último el A.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `DibujarPrimeroElPrimerCódigoDeEntidad` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'DibujarPrimeroElPrimerCódigoDeEntidad' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'DibujarPrimeroElPrimerCódigoDeEntidad', 0 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
