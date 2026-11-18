# Desde línea de comando
<!-- id: desde-linea-de-comando -->

MDTopX permite ser ejecutado desde la línea de comando pasando parámetros para configurar el cálculo. Las herramientas de cálculo de MDTopX requieren el archivo de configuración MDTopX.ini, un archivo ASCII con las opciones de configuración. MDTopX busca MDTopX.ini en la carpeta del archivo de entrada; si indicas el archivo de entrada sin ruta, MDTopX busca MDTopX.ini en el directorio de trabajo actual.

Al ejecutar una herramienta de cálculo desde la línea de comando, MDTopX abre su ventana minimizada.

Si escribes en la línea de comando solo el nombre de un archivo que MDTopX sabe abrir, sin ninguna herramienta, MDTopX se inicia y abre ese archivo.

## Herramientas de cálculo

Estas herramientas leen el archivo MDTopX.ini:

* [Triangulación](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md)
* [Curvado](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md)
* [Perfiles](/mdtopx/desde-linea-de-comando/linea-de-comando-perfiles.md)
* [Cubicación](/mdtopx/desde-linea-de-comando/linea-de-comando-cubicacion.md)
* [Comprobar MDT](/mdtopx/desde-linea-de-comando/linea-de-comando-comprobar-mdt.md)
* [Proyectar sobre MDT](/mdtopx/desde-linea-de-comando/linea-de-comando-proyectar-sobre-mdt.md)
* [Rejilla](/mdtopx/desde-linea-de-comando/linea-de-comando-rejilla.md)
* [Sombreado](/mdtopx/desde-linea-de-comando/linea-de-comando-sombreado.md)
* [Mapa de tintas hipsométricas](/mdtopx/desde-linea-de-comando/linea-de-comando-mapa-de-tintas-hipsometricas.md)
* [Exportar modelos digitales del terreno](/mdtopx/desde-linea-de-comando/linea-de-comando-exportar-modelos-digitales-del-terreno.md)
* [Agregar modelos digitales del terreno](/mdtopx/operaciones-con-archivos/agregar-modelos-digitales-del-terreno.md)

## Herramientas combinadas y mapas del modelo digital

Estas herramientas también leen el archivo MDTopX.ini:

* [Triangulación y curvado](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion-y-curvado.md): triangula un archivo de dibujo y calcula el curvado en una sola ejecución, sin guardar la triangulación (`/TRICUR`).
* [Triangulación y rejilla](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion-y-rejilla.md): triangula un archivo de dibujo y genera la rejilla en una sola ejecución, sin guardar la triangulación (`/TRIREJ`).
* [Triangulación y comprobar MDT](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion-y-comprobar-mdt.md): triangula un archivo de dibujo y comprueba su altimetría; solo guarda el archivo de errores (`/TRICOM`).
* [Mapa de pendientes](/mdtopx/desde-linea-de-comando/linea-de-comando-mapa-de-pendientes.md): calcula el mapa de pendientes de un modelo digital y lo guarda como imagen TIF, BMP o JPEG (`/PEN`).
* [Mapa de orientaciones](/mdtopx/desde-linea-de-comando/linea-de-comando-mapa-de-orientaciones.md): calcula el mapa de orientaciones de un modelo digital y lo guarda como imagen TIF, BMP o JPEG (`/ORI`).
* [Extraer líneas de ruptura](/mdtopx/desde-linea-de-comando/linea-de-comando-extraer-lineas-de-ruptura.md): extrae las vaguadas, las divisorias y los puntos de interés de un DEM suavizado y los guarda en un archivo BIN (`/RUP`; requiere el módulo VirtuaLand para guardar).

## Herramientas de nubes de puntos

Estas herramientas también leen el archivo MDTopX.ini. Sin la llave de MDTopX, MDTopX ejecuta solo /ACOPIOS, /FILTRADO y /ORIENTARNUBE; las demás herramientas terminan sin ejecutarse. Guardar el resultado de algunas herramientas exige otro módulo de licencia; cada página lo indica.

* [Transformación de coordenadas](/mdtopx/desde-linea-de-comando/linea-de-comando-transformacion.md): transforma las coordenadas de un archivo de dibujo, una nube de puntos o un TIN (`/TRANSFORM`).
* [Superficie mágica](/mdtopx/desde-linea-de-comando/linea-de-comando-superficie-magica.md): clasifica automáticamente los puntos de una nube LiDAR (`/MAGIC`).
* [Clasificar suelo de trazado](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-trazado.md): clasifica en suelo y no suelo una nube de puntos MMS de carretera (`/SUELOVIAL`).
* [Clasificar suelo de FFCC](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-ffcc.md): clasifica en suelo y no suelo una nube de puntos MMS de ferrocarril (`/SUELOFFCC`).
* [Clasificar líneas de vial](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-lineas-de-vial.md): clasifica asfalto, marcas viales, bordillos y aceras de una nube MMS de carretera y genera su archivo de dibujo (`/ASFALTO`).
* [Buscar líneas de vial](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-vial.md): calcula los límites del asfalto, las líneas blancas, los ejes, los carriles y los transversales de una carretera (`/LINEASVIAL`).
* [Buscar raíles](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md): clasifica los puntos de los raíles de una nube MMS y genera el dibujo de sus límites y su eje (`/RAILES`).
* [Buscar líneas de raíl](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-lineas-de-rail.md): calcula las líneas de raíles, túnel, andenes, muros y traviesas de un ferrocarril, con el eje y los transversales (`/LINEASRAIL`).
* [Filtrar puntos](/mdtopx/desde-linea-de-comando/linea-de-comando-filtrar-puntos.md): reduce la densidad de una nube de puntos con una rejilla de paso configurable y guarda el resultado en el mismo archivo (`/FILTRADO`).
* [Cubicar acopios](/mdtopx/desde-linea-de-comando/linea-de-comando-acopios.md): clasifica una nube de puntos de interior de nave y calcula el volumen de sus acopios, por zonas o en toda la nube (`/ACOPIOS`).
* [Orientar nube contra nube](/mdtopx/desde-linea-de-comando/linea-de-comando-orientar-nube-contra-nube.md): orienta una nube de puntos desorientada contra la nube de un modelo teórico y guarda la transformación en un archivo de texto (`/ORIENTARNUBE`).
## Órdenes de licencias de software

Estas órdenes no leen el archivo MDTopX.ini ni ejecutan ninguna herramienta de cálculo. No muestran ventanas, no abren la interfaz de MDTopX y terminan el proceso de `MDTopX.exe` con un código de salida que indica el resultado. Se escriben con barra inicial y no distinguen mayúsculas de minúsculas:

* [Activar equipo](/mdtopx/desde-linea-de-comando/linea-de-comando-activar-equipo.md): activa el ordenador, para todos los usuarios de Windows, con un código de activación (`/activar-equipo <código>`).
* [Servidor de licencias](/mdtopx/desde-linea-de-comando/linea-de-comando-servidor-licencias.md): guarda o borra la dirección del servidor de licencias local (`/servidor-licencias <dirección>` o `/servidor-licencias /quitar`).
