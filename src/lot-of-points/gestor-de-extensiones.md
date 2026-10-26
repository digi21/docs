# Gestor de extensiones
<!-- id: lot-of-points-gestor-de-extensiones -->

Las extensiones añaden comandos a Lot Of Points mediante bibliotecas de enlace dinámico (DLL) o archivos
de Python. Un comando puede pedir puntos, seleccionar puntos o [procesar nubes por teselas](algoritmos/README.md).
El gestor permite habilitar o deshabilitar cada extensión y sus comandos.

## Abrir el gestor

1. Pulsa **Configuración**, en el engranaje de la barra de título.
2. Selecciona **Extensiones** en el menú lateral.

La página aparece cuando el programa conoce alguna extensión.
El gestor agrupa los comandos por archivo y muestra el interruptor **Habilitada** y un interruptor por comando.
Deshabilitar una extensión retira todos sus botones; deshabilitar un comando retira ese botón.
Los controles de comandos permanecen desactivados mientras la extensión esté deshabilitada.

El programa aplica los cambios sin reiniciar y reconstruye las pestañas afectadas.
Lot Of Points mantiene cargada la DLL de un comando mientras el comando se ejecuta.
Un comando de Python en ejecución conserva las variables globales de su archivo cargado.

## Instalar extensiones

Para instalar una DLL:

1. Cierra Lot Of Points.
2. Crea `%AppData%\lop\algorithms` si la carpeta no existe.
3. Copia la DLL y sus dependencias en esa carpeta.
4. Abre Lot Of Points.

El programa busca primero en esa carpeta y después en `algorithms` de su instalación.
El programa carga las DLL por orden alfabético dentro de cada carpeta.
Las DLL deben exportar `lop_register_commands`; Lot Of Points no carga extensiones que exporten únicamente
`lop_register`. Consulta [Instalar y comprobar una DLL](programacion/c-cpp/instalar-y-comprobar.md).

Para instalar comandos de Python:

1. Crea `%AppData%\lop\commands` si la carpeta no existe.
2. Copia los archivos `.py` y sus iconos en esa carpeta.
3. Reinicia Lot Of Points.

El programa carga los archivos habilitados en un hilo de fondo y añade sus comandos después de los de las DLL.
Los comandos de Python que declaran la misma sección en la misma pestaña comparten esa sección.
Consulta [Python](programacion/python/README.md).

## Habilitación y configuración

Las extensiones nuevas aparecen habilitadas.
El programa recuerda las extensiones y los comandos deshabilitados.
Cada extensión se identifica por su nombre de archivo; conservar ese nombre mantiene su estado al actualizarla.
Al arrancar, el programa retira de los ajustes las extensiones que ya no existen en sus carpetas.

Un comando habilitado en el gestor puede tener su botón deshabilitado si no cumple los requisitos declarados.
Por ejemplo, un comando que requiere una nube visible no se puede iniciar cuando todas las nubes están ocultas.
Los botones de los comandos propios que necesitan un documento se deshabilitan cuando no hay ninguna nube abierta.

## Diagnósticos y cierre

El panel **Salida** muestra los problemas de carga con el prefijo «Extensiones:».
Lot Of Points conserva la primera declaración válida de cada identificador y muestra un aviso si encuentra otra declaración con ese identificador.
El programa publica cada aviso una vez por sesión.

Al cerrar Lot Of Points con hilos de comandos de extensiones en ejecución, el programa solicita su cancelación
y espera hasta 3 segundos. El programa muestra el mensaje
«Cancelando los comandos de las extensiones antes de cerrar Lot Of Points…» durante esa espera.
