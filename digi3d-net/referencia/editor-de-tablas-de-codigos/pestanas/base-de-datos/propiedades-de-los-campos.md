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

Se puede introducir un valor constante o se puede introducir una macro de base de datos.

## Grupo

Este campo es opcional, y en caso de introducir aquí algún nombre, las ventanas del programa que muestran campos de base de datos crearán categorías \(cuyo nombre coincide con el introducido aquí\) e introducirán el campo dentro de estas categorías.

Se utiliza para agrupar campos relacionados en el interfaz de usuario de la aplicación.





