# Transformar la escala en función de la proyección
<!-- id: transformar-la-escala-en-funcion-de-la-proyeccion -->

Si activas esta opción, al cargar modelos en la proyección Universal Transversa de Mercator (UTM) se aplica el factor de escala K a las medidas.

## Valores posibles

* **Sí**.
* **No**.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor` |
| Tabla | `Ints` |
| Valor | `TransformarEscalaEnFunciónProyección` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor');
DELETE FROM Ints WHERE Value = 'TransformarEscalaEnFunciónProyección' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TransformarEscalaEnFunciónProyección', 1 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor';
```

</details>
