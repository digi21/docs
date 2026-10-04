# Solo lectura silencioso
<!-- id: solo-lectura-silencioso -->

Si está activo, el importador/exportador de PostGIS no almacena ni elimina geometrías en la base de datos, pero comunica a Digi3D.AI que la operación se ha realizado correctamente.

## Valores posibles

* **Sí**. Las geometrías nuevas, modificadas o eliminadas no se guardan en PostGIS y no se muestra ningún error.
* **No** \(valor por defecto\). Las geometrías se almacenan y se eliminan en PostGIS.
