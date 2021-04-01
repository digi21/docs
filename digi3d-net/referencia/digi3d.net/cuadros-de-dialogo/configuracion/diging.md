# DigiNG

Esta categoría permite configurar parámetros referentes al motor principal de la aplicación.

## Limitar el zoom al máximo

Permite indicar si la ventana de dibujo tendrá una limitación a la hora de hacer zoom.

Se pueden seleccionar uno de los siguientes valores:

* **No** La ventana de dibujo no tendrá ninguna limitación.
* **Si** La ventana de dibujo tendrá limitado el zoom a mostrar.

## Tamaño de ventana

En caso de habilitar la opción [Limitar el zoom al máximo](diging.md#limitar-el-zoom-al-maximo), introduciremos en este campo el tamaño \(en unidades del archivo de dibujo cargado\) mínimo que podrá representar la ventana de dibujo.

Por ejemplo, la ventana de dibujo está trabajando en metros e introducimos aquí un 1, el ancho/alto mínimo que representará la ventana de dibujo será de 1 metro.

## Interfaz para seleccionar código

El programa proporciona tres ventanas distintas para seleccionar el código activo.

* [Barra de herramientas de mono-codificación](../../barras-de-herramientas/codigo.md).
* [Panel de multi-codificación](../../paneles/tabla-de-codigos.md).
* [Panel de códigos \(mono-codificación\)](../../paneles/codigos-activos.md).

Estas ventanas son excluyentes: el programa únicamente puede utilizar una de ellas.

> Al cambiar esta opción tendremos que reiniciar el programa tras aceptar el cuadro de diálogo de configuración.

## Permitir seleccionar códigos inexistentes

Permite indicar si se le permitirá al usuario seleccionar como código activo un código que no exista en la tabla de códigos.

Si ejecutamos la orden [COD](../../ventana-de-dibujo/ordenes/c/cod.md) pasándole como parámetro un código inexistente el programa mostrará un mensaje de error o no en función de esta opción.

Se pueden seleccionar las siguientes opciones:

* **Si** Se permitirá seleccionar como código activo un código inexistente.
* **No** No se permitirá seleccionar como código activo un código inexistente.

## Permitir códigos repetidos

Permite configurar si se permitirá que una geometría tenga varias veces el mismo código.

## Orden dibujo \(multi código\)

Permite configurar cómo dibujará la ventana de dibujo las geometrías que tengan más de un código.

Si una geometría tiene los códigos A, B y C, al dibujarla, la ventana de dibujo la dibujará tres veces. Con este campo podemos configurar si queremos que se dibuje primero el código A, luego el B y por último el C o al revés.

Podemos seleccionar una de las siguientes opciones:

* **Primer código primero** Para el caso del ejemplo anterior, se dibujará primero el código A, luego el B y por último el C
* **Último código primero** Para el caso del ejemplo anterior, se dibujará primero el código C, luego el B y por último el A.

