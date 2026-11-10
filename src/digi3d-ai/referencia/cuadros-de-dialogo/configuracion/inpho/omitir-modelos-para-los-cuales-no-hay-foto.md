# Omitir modelos para los cuales no hay foto
<!-- id: omitir-modelos-para-los-cuales-no-hay-foto -->

Si se activa, al cargar un proyecto fotogramétrico no se mostrarán los modelos para los cuales no se ha localizado alguna de sus fotos. En un proyecto remoto de Azure Blob Storage, Digi3D.AI localiza las fotos con la lista de blobs de su carpeta, que requiere una firma de acceso compartido (SAS) con permisos de lectura y de listado (`sp=rl`) o un contenedor con el nivel de acceso anónimo «Contenedor»; si no puede obtener la lista, muestra todos los modelos y añade un aviso al panel Tareas (consulta [Cómo se calcula la URL de cada imagen](../../../../procedimientos/publicar-proyecto-fotogrametrico-remoto.md#cómo-se-calcula-la-url-de-cada-imagen)).

## Valores posibles

* **Sí**. Se omiten los modelos sin foto localizada.
* **No**. Se muestran todos los modelos.

<details>
<summary>Dónde se almacena</summary>

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `Digi3D\Extensiones\Digi3D.ConicSensor\Inpho` |
| Tabla | `Ints` |
| Valor | `OmitirModelosParaLosCualesNoSeLocalizaFoto` |
| Valor por defecto | 1 |

Estas sentencias SQL asignan el valor 0, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('Digi3D\Extensiones\Digi3D.ConicSensor\Inpho');
DELETE FROM Ints WHERE Value = 'OmitirModelosParaLosCualesNoSeLocalizaFoto' AND Key = (SELECT Id FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Inpho');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'OmitirModelosParaLosCualesNoSeLocalizaFoto', 0 FROM Keys WHERE Path = 'Digi3D\Extensiones\Digi3D.ConicSensor\Inpho';
```

</details>
