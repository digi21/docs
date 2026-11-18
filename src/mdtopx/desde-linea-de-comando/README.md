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

## Órdenes de licencias de software

Estas órdenes no leen el archivo MDTopX.ini ni ejecutan ninguna herramienta de cálculo. No muestran ventanas, no abren la interfaz de MDTopX y terminan el proceso de `MDTopX.exe` con un código de salida que indica el resultado. Se escriben con barra inicial y no distinguen mayúsculas de minúsculas:

* [Activar equipo](/mdtopx/desde-linea-de-comando/linea-de-comando-activar-equipo.md): activa el ordenador, para todos los usuarios de Windows, con un código de activación (`/activar-equipo <código>`).
* [Servidor de licencias](/mdtopx/desde-linea-de-comando/linea-de-comando-servidor-licencias.md): guarda o borra la dirección del servidor de licencias local (`/servidor-licencias <dirección>` o `/servidor-licencias /quitar`).
