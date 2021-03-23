# Comunicación con el usuario

Esta categoría permite configurar todos los parámetros relacionados con la comunicación e interfaz de usuario.

## Tema

Permite configurar el tema visual del programa.

Podemos seleccionar una de las siguientes opciones:

* **Claro**. Selecciona esta opción si quieres que Digi3D.NET muestre los menús, paneles y cuadros de diálogo con un tema claro.
* **Oscuro**. Selecciona esta opción si quieres que Digi3D.NET muestre los menús, paneles y cuadros de diálogo con un tema oscuro.
* **Azul**. Selecciona esta opción si quieres que Digi3D.NET muestre los menús, paneles y cuadros de diálogo con un tema azulado.

## Idioma

Permite configurar el idioma en el que se mostrará el interfaz de usuario de Digi3D.NET así como el de los nombres de las órdenes.

Podemos seleccionar una de las siguientes opciones:

* **Español.** Selecciona esta opción para mostrar el interfaz de usuario en español.
* **English**. Selecciona esta opción para mostrar el interfaz de usuario en inglés.

## Configuración para un único monitor

Permite indicar si vamos a utilizar el programa con un monitor o con varios.

En caso de indicar con un único monitor, al abrir una ventana fotogramétrica, ésta se abrirá dentro del marco principal del programa. 

Si configuramos para múltiples monitores, al abrir una ventana fotogramétrica, ésta se abrirá como un programa independiente, de manera que podremos moverla a otro monitor.

Podemos seleccionar una de las siguientes opciones:

* **Si.** Selecciona esta opción para que Digi3D.NET abra las ventanas fotogramétricas dentro del marco principal de la aplicación.
* **No**. Selecciona esta opción para que Digi3D.NET abra las ventanas fotogramétricas como una aplicación independiente.

## Sonidos

Permite configurar el dispositivo que se utilizará para hacer sonar los sonidos del programa.

Digi3D.NET históricamente ha emitido sonidos para que los operadores identifiquen lo que está pasando en el programa. El sonido más importante es el de error. Si el operador escucha el sonido de error, sabe que algo no se ha realizado correctamente.

Podemos seleccionar una de las siguientes opciones:

* **Altavoz del sistema \(síncrono\).** Selecciona esta opción para que Digi3D.NET haga sonar los sonidos por el altavoz del sistema de manera síncrona \(puede bloquear el programa mientras suena el altavoz\).
* **Altavoz del sistema \(asíncrono\)**. Selecciona esta opción para que Digi3D.NET haga sonar los sonidos por el altavoz del sistema de manera asíncrona.
* **Tarjeta de sonido**. Selecciona esta opción para que Digi3D.NET haga sonar los sonidos por la tarjeta de sonido \(requiere indicar la ruta de los archivos WAV con los sonidos a emitir en cada uno de los eventos que provocan sonidos como Dato, Fin orden, etc.\).

## Dato

Permite indicar la ruta donde está ubicado el archivo _.wav_ con el sonido a reproducir cuando el usuario pulsa el botón/pedal de dato.

## Fin orden

Permite indicar la ruta donde está ubicado el archivo _.wav_ con el sonido a reproducir cuando finaliza una orden.

## Error

Permite indicar la ruta donde está ubicado el archivo _.wav_ con el sonido a reproducir cuando se genera un error.

## Entrar

Permite indicar la ruta donde está ubicado el archivo _.wav_ con el sonido a reproducir cuando el usuario entra dentro del polígono seleccionado con la orden [LIMITE\_1](../../ventana-de-dibujo/ordenes/l/limite-1.md).

## Salir

Permite indicar la ruta donde está ubicado el archivo _.wav_ con el sonido a reproducir cuando el usuario sale del polígono seleccionado con la orden [LIMITE\_1](../../ventana-de-dibujo/ordenes/l/limite-1.md).

## Texto a voz en la barra de estado

Permite indicar si Digi3D.NET reproducirá mediante síntesis de voz los mensajes que las distintas órdenes muestran en la barra de estado.

Podemos seleccionar una de las siguientes opciones:

* **Si.** Selecciona esta opción para que Digi3D.NET reproduzca mediante síntesis de voz los mensajes mostrados en la barra de estado.
* **No**. Selecciona esta opción para que Digi3D.NET no reproduzca mediante síntesis de voz los mensajes mostrados en la barra de estado.

## Texto a voz en globos

Permite indicar si Digi3D.NET reproducirá mediante síntesis de voz los mensajes que las distintas órdenes muestran en los globos.

Podemos seleccionar una de las siguientes opciones:

* **Si.** Selecciona esta opción para que Digi3D.NET reproduzca mediante síntesis de voz los mensajes mostrados en los globos.
* **No**. Selecciona esta opción para que Digi3D.NET no reproduzca mediante síntesis de voz los mensajes mostrados en los globos.

## Confidencia reconocimiento de voz

Permite configurar mediante un valor \(entre 0 y 1\) el factor de confidencia con el que se reconocerán los comandos de voz si tenemos activa la variable [RECONOCER\_VOZ](../../ventana-de-dibujo/variables/r/reconocer-voz.md).

## Color de la ventana de tentativo

Permite configurar el color en el que se mostrarán las coordenadas en la [barra de herramientas Tentativo](../../barras-de-herramientas/tentativo.md).

## Mostrar ayudas por código

Permite indicar si Digi3D.NET mostrará en el [panel de ayuda dinámica](../../paneles/ayuda-dinamica.md) el archivo HTML asociado asignado en el campo Archivo de ayuda al seleccionar un determinado código.







