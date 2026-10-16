# Utilizar archivos de proyecto
<!-- id: utilizar-archivos-de-proyecto -->

Si se habilita, la pestaña de archivo de dibujo del cuadro de diálogo de nuevo proyecto muestra únicamente un cuadro de opción para seleccionar el proyecto.

## Valores posibles

* **Sí**. La pestaña de archivo de dibujo muestra solo la selección de proyecto.
* **No**. La pestaña de archivo de dibujo muestra las opciones habituales.

## Dónde se almacena

| Archivo | [Digi3DNET.db](../../../archivos/archivo-de-configuracion-digi3dnet.db.md) |
| :--- | :--- |
| Carpeta | `DigiNG\Configuration` |
| Tabla | `Ints` |
| Valor | `UtilizarProyectosArchivosDibujo` |
| Valor por defecto | 0 |

Estas sentencias SQL asignan el valor 1, exista o no la fila. Ejecútalas en el cuadro de diálogo [Configuración avanzada](../../configuracion-avanzada.md) y reinicia Digi3D.AI:

```sql
INSERT OR IGNORE INTO Keys (Path) VALUES ('DigiNG\Configuration');
DELETE FROM Ints WHERE Value = 'UtilizarProyectosArchivosDibujo' AND Key = (SELECT Id FROM Keys WHERE Path = 'DigiNG\Configuration');
INSERT INTO Ints (Key, Value, Data) SELECT Id, 'UtilizarProyectosArchivosDibujo', 1 FROM Keys WHERE Path = 'DigiNG\Configuration';
```
