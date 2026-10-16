# Tipo de conexión
<!-- id: tipo-de-conexion -->

Permite configurar el tipo de conexión a Internet de Digi3D.AI. Si el equipo se conecta a Internet a través de un servidor _PROXY_, debes indicarlo aquí.

## Valores posibles

Si no se ha configurado, el valor es **Directa**.

* **Directa**. El equipo se conecta a Internet directamente, sin un PROXY de por medio.
* **Proxy con configuración del registro**. Utiliza el PROXY con la configuración almacenada en Windows.
* **Servidor proxy**. Permite configurar manualmente la [dirección](direccion.md) del proxy, el [usuario](usuario.md) y la [contraseña](contrasena.md).

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `App\Configuration` |
| Tabla | `Ints` |
| Valor | `TipoConexionInternet` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('App\Configuration');
DELETE FROM Ints WHERE Value = 'TipoConexionInternet' AND Key = (SELECT Id FROM Keys WHERE Path = 'App\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'TipoConexionInternet', 1 FROM Keys WHERE Path = 'App\Configuration';
```

</details>
