# Auto-pulsar Añadir... en los diálogos que solicitan códigos
<!-- id: auto-pulsar-anadir-en-los-dialogos-que-solicitan-codigos -->

Si se activa, se pulsa automáticamente el botón **Añadir** en los cuadros de diálogo que solicitan códigos, como los que aparecen al ejecutar las órdenes ON, OFF, etc.

## Valores posibles

* **Sí**. Se pulsa automáticamente el botón Añadir.
* **No**. Hay que pulsar el botón Añadir manualmente.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `PulsarAutomaticamenteBotonAnadircodigoEnCuadrosDeDialogoQueSolicitanCodigo` |
| Valor por defecto | 0 o 1, según el código que lo lee primero |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'PulsarAutomaticamenteBotonAnadircodigoEnCuadrosDeDialogoQueSolicitanCodigo' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'PulsarAutomaticamenteBotonAnadircodigoEnCuadrosDeDialogoQueSolicitanCodigo', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
