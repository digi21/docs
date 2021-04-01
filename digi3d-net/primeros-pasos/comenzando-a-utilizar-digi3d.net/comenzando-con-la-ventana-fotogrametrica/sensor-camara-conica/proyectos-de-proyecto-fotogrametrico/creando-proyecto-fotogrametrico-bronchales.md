# Creando un proyecto fotogramétrico para Bronchales

El cuadro de diálogo [Cuadro de diálogo Crear proyecto fotogramétrico](CuadroDeDialogoCrearProyectoFotogrametrico.html) permite crear tanto archivos de _proyecto fotogramétrico_ como archivos de proyecto [.d3d]().

En este ejemplo vamos a crear un archivo de _proyecto fotogramétrico_ que indique que el proyecto tiene una única _pasada_, y que esta _pasada_ está compuesta por dos modelos: el _107-108_ y el _108-109_.

Es necesario que finalices los pasos de [Midiendo la segunda orientación absoluta](MidiendoLaSegundaOrientacionAbsoluta.html) antes de continuar.

1. Activa el [Panel Proyecto fotogramétrico](PanelProyectoFotogrametrico.html) mediante la opción del menú **Ventana/Otras ventanas/Proyecto fotogramétrico**.
2. Pulsa el primer botón de la barra de herramientas del _panel de proyecto fotogramétrico_. Aparecerá el cuadro de diálñogo [Crear archivo de proyecto fotogramétrico](CuadroDeDialogoCrearProyectoFotogrametrico.html).
3. Pulsa el botón de los tres puntos para indicar el nombre del archivo a crear. Aparecerá el cuadro de diálogo **Abrir**.
4. Localiza la ruta del proyecto de Bronchales y teclea el nombre del archivo a crear, por ejemplo _Proyecto de Bronchales_. Pulsa **Abrir**.
5. En el desplegable **Sensor** selecciona **Cónico \(estereoscópico\)**. Esta es la opción por defecto de este desplegable.
6. En **Pasadas** pulsa el botón **Crear**. Aparecerá el cuadro de diálogo [Propiedades de la pasada](CuadroDeDialogoPropiedadesDeLaPasada.html). Por defecto se indica que el nombre de la pasada será _Pasada: 1_. Pulsa el botón **Aceptar**. Comprobarás que en la lista **Pasadas** aparece el nombre de la pasada que acabamos de crear.
7. Con la opción _Pasada: 1_ seleccionada en la lista **Pasadas**, pulsa el botón **Cargar** de la lista **Modelos**. Esto nos va a permitir añadir archivos de proyecto [.d3d]() en la lista **Modelos**. Aparecerá el cuadro de diálogo **Abrir**.
8. Localiza el archivo _107-108.d3d_, selecciónalo y pulsa el botón **Abrir**. Aparecerá el modelo _107-108_ en el listado **Modelos**.
9. Vuelve a pulsar el botón **Cargar** y carga el modelo _108-109.d3d_.
10. Pulsa el botón **Aceptar**. Desaparecerá el cuadro de diálogo _Crear archivo de proyecto fotogramétrico_ y se cargará el proyecto en el panel **Proyecto fotogramétrico**.
11. Comprueba en el el panel **Proyecto fotogramétrico** aparece una sección denominada _Pasada: 1_. Si despliegas dicha sección puedes comprobar que aparecen los dos modelos: el _107-108_ y el _108-109_.
12. Haz clic sobre el modelo 107-108, comprobarás que se abre una ventana fotogramétrica con ese modelo.
13. Haz clic sobre el modelo 108-109. Comprobarás se cambiará el modelo mostrado en la ventana fotogramétrica.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/Creando%20el%20archivo%20de%20cambio%20rapido%20de%20modelos%20de%20Bronchales.mp4" %}



