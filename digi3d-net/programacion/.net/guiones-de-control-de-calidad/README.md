# Guiones de control de calidad

Digi3D.NET dispone de un menú denominado **Control de Calidad** que permite habilitar la característica de analizar el control de calidad de las geometrías justo antes de ser almacenadas o que permite analizar el control de calidad de geometrías ya existentes.

En ambos casos Digi3D.NET no es quien realiza el control de calidad, sino que delega la acción al [guion](../../../referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md#guion) asignado para tal efecto en el código de la geometría en la tabla de códigos, de manera que es responsabilidad del usuario especificar en la tabla de códigos su propio control de calidad.

Si al cargar la tabla de códigos se detecta que hay guiones de control de calidad, Digi3D.NET compila cada guion \(puede haber tantos como códigos\) en un ensamblado temporal almacenado en la carpeta _TEMP_ de Windows.

### ¿Qué es un guion de control de calidad?

Los guiones de control de calidad son ensamblados que publican una clase que proporciona un método encargado de analizar el control de calidad de una geometría que se le pasa por parámetro. 

Digi3D.NET instanciará la clase y llamará al método por cada geometría que se analice.

### Ejecución del guion

Este guion se puede ejecutar de dos maneras distintas:

* Si está habilitada la opción del menú **Control de calidad/Analizar control de calidad al digitalizar entidad** cuando se digitaliza una geometría, justo antes de almacenarla se ejecuta guion si la entidad tiene asignado un guion en sus códigos.
* Si el usuario selecciona la opción del menú **Control de calidad/Analizar control de calidad**. En este caso se ejecutará el guion por cada geometría existente que tenga asociado en alguno de sus códigos un guion en la tabla de código.

### ¿Qué puede hacer un guion?

Los guiones pueden realizar tres tareas:

* Devolver la geometría a analizar sin modificación alguna. El guion realizará esta acción si la geometría cumple con el control de calidad.
* Sustituir la geometría a analizar por otra completamente distinta. El guion realizará esta acción para hacer que una geometría cumpla con el control de calidad, como por ejemplo convertir líneas en puntos si el perímetro de la línea es inferior a un valor umbral y el control de calidad admite este cambio, por ejemplo.
* Lanzar una excepción para comunicarle a Digi3D.NET que la geometría no cumple con el control de calidad. El guion realizará esta acción para comunicarle al usuario que la geometría no cumple con el control de calidad.

### ¿Cómo comunica Digi3D.NET un error al usuario?

* Si el análisis se ha desencadenado porque se está almacenando una geometría y está habilitada la opción **Control de calidad/Analizar control de calidad al digitalizar entidad**, Digi3D.NET mostrará cuadros de diálogo al usuario en función del tipo de error.  


  ![Error mostrado al digitalizar una geometr&#xED;a](../../../../.gitbook/assets/errorgeometryexception.png)

* Si el análisis se ha desencadenado porque el usuario ha solicitado realizar un análisis de control de calidad, los errores detectados se mostrarán en el [panel de tareas](../../../referencia/digi3d.net/paneles/tareas.md).

![](../../../../.gitbook/assets/paneltareasmostrandogeometryexception.png)

### ¿Qué tipo de errores puede comunicar el guion a Digi3D.NET?

Se pueden comunicar tanto errores de atributos de base de datos como geométricos.

En caso de errores geométricos, se puede comunicar a Digi3D.NET que la geometría tiene un error geométrico de manera independiente o que la geometría tiene un error geométrico con respecto a otra geometría, como por ejemplo una geometría que cruza a otra si esto está prohibido en el control de calidad.

Puedes aprender más en [Tipos de errores](creacion-de-un-guion-de-control-de-calidad/tipos-de-errores/).



