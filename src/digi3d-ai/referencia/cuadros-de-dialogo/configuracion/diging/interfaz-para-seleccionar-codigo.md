# Interfaz para seleccionar código
<!-- id: interfaz-para-seleccionar-codigo -->

El programa proporciona tres ventanas distintas para seleccionar el código activo; son excluyentes (solo se puede utilizar una).

> Al cambiar esta opción tendrás que reiniciar el programa tras aceptar el cuadro de diálogo de configuración.

## Valores posibles

* **Barra de herramientas mono-codificación**. Utiliza la [barra de herramientas de mono-codificación](../../../barras-de-herramientas/codigo.md).
* **Panel de multi-codificación**. Utiliza el [panel de multi-codificación](../../../paneles/codigos-activos.md).
* **Panel de códigos (mono-codificación)**. Utiliza el [panel de códigos (mono-codificación)](../../../paneles/tabla-de-codigos.md).

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `InterfazMulticodificación` |
| Valor por defecto | 0 o 1, según el código que lo lee primero |

Estas sentencias SQL asignan el valor 2, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'InterfazMulticodificación' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'InterfazMulticodificación', 2 FROM Keys WHERE Path = 'DigiNG\Configuration';
```

</details>
