# Propiedades de los campos

Esta categoría permite configurar las propiedades de un campo de base de datos.

## Título

Permite configurar el nombre del campo que se mostrará al usuario en las distintas ventanas que muestran campos de base de datos, como el panel [Campos de la base de datos](../../../paneles/campos-de-la-base-de-datos.md). 

El título habitualmente coincide con el nombre del campo, pero no tiene por qué ser así.

## Descripción

Permite configurar una descripción que aparecerá en la parte inferior del _grid de propiedades_ que utilizan las distintas ventanas que muestran campos de la base de datos. 

Cuando el usuario hace clic en un campo, podrá leer esta descripción para entender el significado del campo.

## Clave principal

Permite indicar si el campo es la clave principal de la tabla.

## Tipo

Indica el tipo de información que se va a almacenar en este campo en cada registro almacenado.

Se pueden seleccionar uno de los siguientes tipos:

* **Cadena de caracteres**. Selecciona esta opción si en el campo se van a almacenar textos.
* **Número entero**. Selecciona esta opción si en el campo se van a almacenar números enteros.
* **Número real**. Selecciona esta opción si en el campo se van a almacenar números reales.
* **Fecha**. Selecciona esta opción si en el campo se van a almacenar fechas.

## Longitud

Indica la longitud que tendrá el campo. 

Este valor tiene que ser siempre mayor que 0 y debe ser lo suficientemente grande para almacenar la información que se desee.

## Decimales

En caso de que en el campo **Tipo** se haya seleccionado la opción **Número real**, introduciremos aquí el número de decimales que se almacenarán. 

Este campo tiene sentido en bases de datos de tipo XBASE \(que son las asociadas con Shapefiles\) pues en este tipo de bases de datos los números se almacenan como texto, de manera que es importante indicar el número de decimales. 

Este campo carece de sentido en otros tipos de bases de datos como Access pues en estas bases de datos, si un campo es de tipo real, se almacenarán valores de tipo _double_ con todos sus decimales.

## Valor por defecto

Permite especificar opcionalmente un valor por defecto para este campo.

Se puede introducir un valor constante o se puede introducir una [macro de base de datos](macros-de-base-de-datos.md).

## Forzar valor por defecto

Permite indicar si se debe almacenar obligatoriamente el valor configurado en [Valor por defecto](propiedades-de-los-campos.md#valor-por-defecto) independientemente del valor que haya introducido el usuario para este campo en el panel [Campos de la base de datos](../../../paneles/campos-de-la-base-de-datos.md). 

## Lista de valores

Permite indicar un conjunto de valores posibles para almacenar en este campo. 

En caso de que se introduzca una lista de valores, las ventanas que muestran campos de base de datos como el panel [Campos de la base de datos](../../../paneles/campos-de-la-base-de-datos.md), mostrarán en este campo un desplegable para que el usuario seleccione un valor de entre los posibles.

Se pueden introducir valores directamente en la tabla de códigos o se pueden extraer dinámicamente mediante una consulta SQL que se ejecutará sobre la base de datos cargada.

### Valores directos

Se pueden introducir tantos valores como sea necesarios, y se introducen como una tripleta separada por el carácter \| \(que se puede introducir pulsando la combinación de teclas _AltGr + 1_.

`[valor]|[título][descripción]`

* Valor es el valor que se va a almacenar en la base de datos.
* Título es el título que verá el usuario en el desplegable, que no tiene por qué coincidir con el valor, se utiliza para facilitar el trabajo al usuario.
* Descripción es una descripción que aparecerá en la parte inferior de la ventana en la que se introducen valores de base de datos al seleccionar este campo como por ejemplo en el panel [Campos de la base de datos](../../../paneles/campos-de-la-base-de-datos.md).

#### Ejemplo:

Si en la base de datos se tiene que almacenar un "1" si el tipo de vegetación es "monte alto" y un "2" si es de tipo "monte bajo" introduciremos este valor:

```text
1|Monte alto|El tipo de vegetación de esta parcela es monte alto|2|Monte bajo|El tipo de vegetación de esta parcela es monte bajo
```

### Mediante consulta SQL

Si introducimos en este campo una consulta SQL de selección entre símbolos de porciento, como por ejemplo:

```sql
SELECT IdCalle, NombreCalle FROM CALLES
```

El programa extraerá los campos de la consulta. 

* Si la consulta devuelve un único campo, se utilizará este campo tanto para el valor como para el texto a mostrar al usuario para cada registro devuelto.
* Si la consulta devuelve más de un campo, se utilizará el primer campo para el valor a asignar y el segundo para el texto a mostrar al u

## Restringir valores

En caso de que se haya indicado una lista de valores, si se activa esta opción, el desplegable mostrado al usuario al seleccionar este campo no permitirá introducir valores manualmente.

## Solo lectura

Si se habilita, el usuario no podrá modificar el valor mostrado en este campo.

## Permitir longitud 0

Permite indicar si el usuario puede dejar este campo sin rellenar.

## Comparable

Algunas órdenes como por ejemplo la orden [UNIR](../../../ventana-de-dibujo/ordenes/u/unir.md), en caso de que se pretenda unir dos líneas que tengan enlace a base de datos, únicamente unificará las dos líneas en caso de que sus códigos coincidan y de que los atributos de base de datos de cada una de ellas coincidan también.

Si tenemos por ejemplo el caso de que uno de los atributos de base de datos almacenados para cada línea sea el perímetro de la línea, nos encontraríamos con el problema de que la orden _UNIR_ no permitiría unir dos líneas con idénticos atributos de base de datos, pero con distinto perímetro. De manera que deberíamos poder indicar a la orden _UNIR_ que no tenga en cuenta el valor almacenado en el campo donde se almacena el perímetro para decidir si puede o no unir dos líneas.

Con esta opción podemos indicar que un campo en particular no es comparable, de manera que, en el ejemplo anterior, la orden _UNIR_ hará caso omiso del campo en el que se almacena el perímetro para decidir si se pueden o no unir dos geometrías.

## Copiable

Indica si al copiar una geometría con la orden [COPIAR ](../../../ventana-de-dibujo/ordenes/c/copiar.md)se debe copiar el valor almacenado en este campo.

## Visible

Indica si el campo de base de datos se mostrará en el interfaz de usuario del programa como por ejemplo en el panel [Campos de la base de datos](../../../paneles/campos-de-la-base-de-datos.md).

## Grupo

Este campo es opcional, y en caso de introducir aquí algún nombre, las ventanas del programa que muestran campos de base de datos crearán categorías \(cuyo nombre coincide con el introducido aquí\) e introducirán el campo dentro de estas categorías.

Se utiliza para agrupar campos relacionados en el interfaz de usuario de la aplicación.

## Color de fondo

Indica el color de fondo que se utilizará en el interfaz de usuario del programa al mostrar este campo. 

