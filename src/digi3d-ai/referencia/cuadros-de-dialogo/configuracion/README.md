# Configuración

![Cuadro de diálogo Configuración](../../../../images/cuadrodialogoconfiguracion.png)

Este cuadro de diálogo permite configurar todos los aspectos Digi3D.AI.

## Abrir el cuadro de diálogo

Para abrir este cuadro de diálogo selecciona la opción del menú **Herramientas/Configuración**.

## Uso del cuadro de diálogo

Las configuraciones están agrupadas por categorías.

Para cambiar una configuración sigue los siguientes pasos:

* Localiza la categoría donde está la configuración que quieres realizar.
* Abre la categoría haciendo doble clic o pulsando la flecha de la izquierda.
* Localiza dentro de la categoría el parámetro que quieres cambiar.
* Cambia el valor.
* Pulsa el botón **Aceptar**.

## Opciones de configuración

Las opciones están agrupadas en las siguientes secciones. Haz clic en el título de cada opción para ver una explicación detallada de su significado y de los valores que admite.

### Aceleración de manivelas

Acelera el desplazamiento de las imágenes al mover las manivelas.

* **[Tiempo de muestreo para aceleración](aceleracion-de-manivelas/tiempo-de-muestreo-para-aceleracion.md)** — Tiempo en milisegundos para los cálculos de aceleración.
* **[Pulsos](aceleracion-de-manivelas/pulsos.md)** — Número mínimo de pulsos que desencadenan la aceleración.
* **[Factor de multiplicación](aceleracion-de-manivelas/factor-de-multiplicacion.md)** — Valor por el que se multiplica la velocidad al acelerar.
* **[Tiempo de parada](aceleracion-de-manivelas/tiempo-de-parada.md)** — Tiempo sin movimiento tras el que finaliza la aceleración.

### Barras de herramientas

Configura el aspecto de las barras de herramientas.

* **[Ancho de la ventana de coordenadas](barras-de-herramientas/ancho-de-la-ventana-de-coordenadas.md)** — Ancho de la ventana que muestra las coordenadas en las barras Coordenadas y Tentativo.

### Base de datos

Configura el comportamiento de Digi3D.AI con la base de datos.

* **[Nombre a mostrar](base-de-datos/nombre-a-mostrar.md)** — Texto que se usa como nombre de los campos de la base de datos.
* **[Forzar registro de la geometría original](base-de-datos/forzar-registro-de-la-geometria-original.md)** — Las geometrías derivadas apuntan al registro de la original.
* **[Mostrar campos no visibles en el panel Propiedades de la entidad seleccionada](base-de-datos/mostrar-campos-no-visibles.md)** — Muestra los campos marcados como no visibles.

### Comunicación con Internet

Configura los parámetros que requieren comunicación con Internet, así como el servidor _PROXY_.

* **[Tipo de conexión](comunicacion-con-internet/tipo-de-conexion.md)** — Indica el tipo de conexión a Internet.
* **[Dirección](comunicacion-con-internet/direccion.md)** — Dirección del servidor proxy.
* **[Usuario](comunicacion-con-internet/usuario.md)** — Usuario del servidor proxy.
* **[Contraseña](comunicacion-con-internet/contrasena.md)** — Contraseña del servidor proxy.
* **[Comprobar versión nueva](comunicacion-con-internet/comprobar-version-nueva.md)** — Comprueba si existe una versión nueva cada vez que se inicia la aplicación.
* **[Permitir instalar versiones BETA](comunicacion-con-internet/permitir-instalar-versiones-beta.md)** — Incluye las versiones BETA al comprobar si hay una versión nueva.

### Control de producción

Configura el control de producción del equipo.

* **[Controlar producción](control-de-produccion/controlar-produccion.md)** — Indica si se controla la producción en este equipo.
* **[Tiempo de visualización](control-de-produccion/tiempo-de-visualizacion.md)** — Tiempo en minutos que se muestra la barra de producción.

### Copia de seguridad

Configura las copias de seguridad del archivo de dibujo.

* **[Destino de copias de seguridad](copia-de-seguridad/destino-de-copias-de-seguridad.md)** — Ruta y nombre del archivo de copia de seguridad (admite macros).
* **[Generar copia de seguridad cada (minutos)](copia-de-seguridad/generar-copia-de-seguridad-cada-minutos.md)** — Cada cuántos minutos se genera una copia de seguridad (0 la deshabilita).
* **[Generar copia de seguridad al salir](copia-de-seguridad/generar-copia-de-seguridad-al-salir.md)** — Genera una copia de seguridad al cerrar la ventana de dibujo.
* **[Generar copia de seguridad al comprimir](copia-de-seguridad/generar-copia-de-seguridad-al-comprimir.md)** — Genera una copia de seguridad antes de comprimir.
* **[Destino de copias de seguridad al comprimir](copia-de-seguridad/destino-de-copias-de-seguridad-al-comprimir.md)** — Ruta y nombre de la copia generada al comprimir.

### Depuración

Genera archivos de depuración que permiten detectar problemas.

* **[Crear archivo de LOG](depuracion/crear-archivo-de-log.md)** — Si se activa, el programa almacenará en un archivo de LOG información para ayudar a detectar errores.
* **[Ruta al archivo de LOG](depuracion/ruta-al-archivo-de-log.md)** — Ruta al archivo de LOG a crear.

### Dispositivos de entrada

Configura el comportamiento de los dispositivos de entrada (pedales, manivelas y codificadores).

* **[Prioridad del hilo](dispositivos-de-entrada/prioridad-del-hilo.md)** — Prioridad del hilo que se comunica con los codificadores.
* **[Tras leer coordenada](dispositivos-de-entrada/tras-leer-coordenada.md)** — Si el hilo cede el control tras leer una coordenada o sigue analizando.
* **[Tiempo de espera para pedales](dispositivos-de-entrada/tiempo-de-espera-para-pedales.md)** — Milisegundos que se ignoran los pedales tras un evento (evita ruido).
* **[Tiempo de espera para modo contínuo](dispositivos-de-entrada/tiempo-de-espera-para-modo-continuo.md)** — Tiempo con el botón de Dato pulsado para bloquearlo.
* **[Analizar doble clic](dispositivos-de-entrada/analizar-doble-clic.md)** — Detecta los dobles clic del botón/pedal de Dato.
* **[Milisegundos doble clic](dispositivos-de-entrada/milisegundos-doble-clic.md)** — Tiempo por debajo del cual dos pulsaciones se consideran doble clic.
* **[Capturar el dispositivo de entrada al moverlo](dispositivos-de-entrada/capturar-el-dispositivo-de-entrada-al-moverlo.md)** — Mover el dispositivo lo selecciona en la ventana de dibujo.

### Editor de la base de datos

Configura el comportamiento del editor de la base de datos.

* **[Permitir editar la base de datos](editor-de-la-base-de-datos/permitir-editar-la-base-de-datos.md)** — Permite al usuario editar la base de datos.
* **[Tablas/Registros a mostrar](editor-de-la-base-de-datos/tablas-registros-a-mostrar.md)** — Qué tablas y registros muestra el panel.
* **[Acción al hacer doble clic](editor-de-la-base-de-datos/accion-al-hacer-doble-clic.md)** — Comportamiento de la ventana al hacer doble clic sobre una entidad.

### Envío de coordenadas por puerto serie

Configura el envío de las coordenadas de la ventana fotogramétrica por el puerto serie.

* **[Activar](envio-de-coordenadas-por-puerto-serie/activar.md)** — La ventana fotogramétrica envía coordenadas por el puerto serie.
* **[Puerto serie](envio-de-coordenadas-por-puerto-serie/puerto-serie.md)** — Puerto serie por el que se envía la información.
* **[Velocidad en baudios](envio-de-coordenadas-por-puerto-serie/velocidad-en-baudios.md)** — Velocidad a la que se envía la información.
* **[Formato de comunicación exterior](envio-de-coordenadas-por-puerto-serie/formato-de-comunicacion-exterior.md)** — Formato en el que se envían las coordenadas.
* **[Finalización del mensaje](envio-de-coordenadas-por-puerto-serie/finalizacion-del-mensaje.md)** — Bytes con los que finaliza cada mensaje.
* **[Milisegundos de espera para modo continuo](envio-de-coordenadas-por-puerto-serie/milisegundos-de-espera-para-modo-continuo.md)** — Espera antes de empezar a enviar coordenadas con el pedal pulsado.

### Instantáneas

Configura cómo se guardan las instantáneas que generan algunas órdenes.

* **[Directorio relativo](instantaneas/directorio-relativo.md)** — Subdirectorio donde se almacenan las instantáneas.
* **[Tamaño](instantaneas/tamano.md)** — Tamaño en píxeles de las instantáneas.

### Interpolación de subpixel

Configura si se usa interpolación de subpixel en los cálculos, cuando el sensor lo admite.

* **[Al desplazarse por el modelo](interpolacion-de-subpixel/al-desplazarse-por-el-modelo.md)** — Interpolación de subpixel al desplazarse por el modelo.
* **[Al proyectar las entidades en cada cámara](interpolacion-de-subpixel/al-proyectar-las-entidades-en-cada-camara.md)** — Interpolación de subpixel al proyectar las entidades.

### Panel de tareas

Configura el comportamiento del panel de tareas.

* **[Vaciar automáticamente](panel-de-tareas/vaciar-automaticamente.md)** — Limpia el panel al añadir la primera tarea de una orden nueva.
* **[Agrupar tareas por coordenadas](panel-de-tareas/agrupar-tareas-por-coordenadas.md)** — Agrupa las tareas que comparten coordenada.

### Proyecto fotogramétrico

Configura el comportamiento del panel de proyecto fotogramétrico.

* **[Mostrar solo modelos cargados](proyecto-fotogrametrico/mostrar-solo-modelos-cargados.md)** — Muestra solo los modelos que se han podido cargar.
* **[Invertir modelos para mantener norte](proyecto-fotogrametrico/invertir-modelos-para-mantener-norte.md)** — Invierte las imágenes al cambiar de modelo para mantener la orientación.
* **[Umbral para invertir modelo](proyecto-fotogrametrico/umbral-para-invertir-modelo.md)** — Diferencia de orientación a partir de la cual se invierte el modelo.

### Puntos medidos

Configura cómo se almacenan y se representan los puntos medidos.

* **[Directorio relativo](puntos-medidos/directorio-relativo.md)** — Subdirectorio donde se almacenan los puntos medidos.
* **[Tamaño del círculo](puntos-medidos/tamano-del-circulo.md)** — Tamaño en píxeles del círculo que marca un punto medido.
* **[Rellenar círculo](puntos-medidos/rellenar-circulo.md)** — Rellena el círculo de los puntos medidos.
* **[Puntos de apoyo](puntos-medidos/puntos-de-apoyo.md)** — Color de las marcas de los puntos de apoyo.
* **[Puntos de aerotriangulación](puntos-medidos/puntos-de-aerotriangulacion.md)** — Color de las marcas de los puntos de aerotriangulación.
* **[Fuente](puntos-medidos/fuente.md)** — Fuente con la que se rotulan los puntos medidos.

### Python

Configura el entorno de Python que utiliza Digi3D.AI.

* **[Directorio Home de Python](python/directorio-home-de-python.md)** — Directorio donde localizar las librerías de Python.

### Rutas

Configura las rutas de trabajo de Digi3D.AI.

* **[Sustituir rutas por sustituidores](rutas/sustituir-rutas-por-sustituidores.md)** — Evita directorios absolutos en los archivos de configuración.
* **[Directorio temporal](rutas/directorio-temporal.md)** — Directorio temporal donde se almacenan, entre otros, los archivos de errores.

### Servidor de archivos de referencia

Permite a varios equipos compartir en tiempo real las modificaciones de los archivos de dibujo de referencia.

* **[Crear servidor](servidor-de-archivos-de-referencia/crear-servidor.md)** — Crea un servidor para informar al resto de equipos cuando se actualiza un archivo de dibujo.
* **[Puerto](servidor-de-archivos-de-referencia/puerto.md)** — Puerto en el que se crea el servidor.
* **[Conectar con servidores](servidor-de-archivos-de-referencia/conectar-con-servidores.md)** — Se conecta con el servidor que ha bloqueado un archivo de dibujo para recibir sus modificaciones en tiempo real.

### Sistema de referencia de coordenadas

Configura el comportamiento con los sistemas de referencia de coordenadas.

* **[Solicitar sistema vertical para sensores](sistema-de-referencia-de-coordenadas/solicitar-sistema-vertical-para-sensores.md)** — Pregunta por el sistema vertical cuando el sensor no lo proporciona.
* **[Trabajar con sistemas 2D (horizontales) si el vertical es desconocido](sistema-de-referencia-de-coordenadas/trabajar-con-sistemas-2d-si-el-vertical-es-desconocido.md)** — Crea sistemas 2D cuando el vertical es desconocido.
* **[Crear cadenas WKT compatibles con](sistema-de-referencia-de-coordenadas/crear-cadenas-wkt-compatibles-con.md)** — Tipo de cadenas WKT que crea el programa.

### Topologías no definidas en la tabla de códigos

Configura cómo se representan las topologías no definidas en la tabla de códigos (las que se crean con BINTOP o CREAR_TOPOLOGIA_CODIGOS_VISIBLES).

* **[Color de relleno (polígonos con centroide)](topologias-no-definidas-en-la-tabla-de-codigos/color-de-relleno-poligonos-con-centroide.md)** — Color de los polígonos con centroide.
* **[Color de relleno (polígonos sin centroide)](topologias-no-definidas-en-la-tabla-de-codigos/color-de-relleno-poligonos-sin-centroide.md)** — Color de los polígonos sin centroide.
* **[Texto de centroide para huecos](topologias-no-definidas-en-la-tabla-de-codigos/texto-de-centroide-para-huecos.md)** — Textos que marcan un polígono como hueco.

## Observaciones

Los parámetros configurados con este cuadro de diálogo se almacenan en el archivo de configuración [Digi3DNET.db](../../archivos/archivo-de-configuracion-digi3dnet.db.md) o en la entrada del registro **Computer\HKEY_CURRENT_USER\SOFTWARE\Digi21\Digi3D.AI**.
