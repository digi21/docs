# Macros de base de datos

Las macros de base de datos son valores que le indican a Digi3D.NET que se deben calcular en el momento en el que se crea un registro en la base de datos.

Se pueden introducir opcionalmente en la propiedad [Valor por defecto](propiedades-de-los-campos.md#valor-por-defecto) de un determinado campo de base de datos.

En caso de que un determinado campo tenga asignada una macro, en el momento de almacenar el registro en la base de datos, Digi3D.NET sustituirá la macro por el valor calculado.

A continuación, tienes el listado de macros que puedes introducir:

| Macro | Descripción |
| :--- | :--- |
| %UID% | Almacena un GUID calculado en ese instante. Se almacena completo, con sus llaves como, por ejemplo: `{F9E7E680-3CDD-4733-A8F1-22F850F8774B}` |
| %UID\_SIMPLE% | Almacena un GUID calculado en ese instante. Se almacena completo, con sus llaves como, por ejemplo: `F9E7E680-3CDD-4733-A8F1-22F850F8774B` |
| %CENTROID\_TEXT% | En caso de que la geometría que se esté almacenando sea un polígono generado por una topología, almacena en este campo el texto del centroide del polígono. |
| %CENTROID\_VALUE=\[valor\]% | En caso de que la geometría que se esté almacenando sea un polígono generado por una topología, almacena en este campo el valor indicado a la derecha del igual de entre todos los valores que tenga asignados el código del centroide en la propiedad [Valores](../codigos/propiedades-del-codigo.md#valores). |



