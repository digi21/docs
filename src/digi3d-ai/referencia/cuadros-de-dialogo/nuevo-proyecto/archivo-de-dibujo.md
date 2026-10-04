# Archivo de dibujo
<!-- id: archivo-de-dibujo -->

![Pestaña Archivo de dibujo del cuadro de diálogo Nuevo proyecto](../../../../images/nuevo-proyecto-archivo-de-dibujo.png)

Esta pestaña del cuadro de diálogo [Nuevo proyecto](README.md) abre un archivo de dibujo en una ventana de dibujo y fija los parámetros con los que se trabaja en ella.

## Abrir la pestaña

Selecciona la opción del menú **Archivo/Abrir** y pulsa la pestaña **Archivo de dibujo**.

## Campos

* **Archivo de dibujo**: ruta del archivo que se abre. El desplegable ofrece los diez últimos archivos abiertos, y el botón **...** permite buscar uno.
* **Mostrar esta página al ejecutar Digi3D**: el cuadro de diálogo Nuevo proyecto se abre en esta pestaña en lugar de en [Sensores fotogramétricos](sensores-fotogrametricos.md).

Debajo del archivo hay una rejilla de propiedades agrupadas en categorías.

### Sistema de referencia de coordenadas

Esta categoría solo aparece si está activada la opción de mostrar el sistema de referencia al abrir un archivo de dibujo.

* **Sistema de referencia de coordenadas de la ventana de dibujo**: el sistema en el que trabaja la ventana. **El del archivo de dibujo** utiliza el que tenga el archivo.

### Registro

* **Escala**: escala de visualización de los patrones de las líneas. El desplegable ofrece escalas habituales, de 1:100 a 1:250.000, y se puede escribir cualquier otra.
* **Operación**: **Guardar** almacena los valores de incremento de registro, equidistancia y tolerancia a generalizar, junto con la altura de los textos, para la escala indicada. **Cargar** recupera los valores almacenados para esa escala.
* **Incremento de registro**: cada cuántos metros se registra un punto al digitalizar en modo continuo.
* **Equidistancia**: cada cuántos metros se registra una curva de nivel.
* **Tolerancia a generalizar**: longitud mínima de un segmento al digitalizar en modo continuo.
* **Corrección de Z**: diferencia de Z entre operadores. Hay que ajustarla si quien hizo la orientación absoluta no es quien restituye el modelo.
* **Sigma**: valor por debajo del cual dos valores se consideran idénticos.

### Entorno

* **Tabla de códigos**: archivo con los códigos, su representación y su traducción, en formato `.dt` o `.tab.xml`. El desplegable ofrece las últimas tablas utilizadas.

### Motor de importación/exportación

Los parámetros del importador o exportador del formato del archivo de dibujo. Cambian según la extensión del archivo seleccionado: por ejemplo, el archivo `.bind` de la captura muestra el modelo de datos, la cadena de conexión con la base de datos, la conexión en modo de solo lectura y la omisión de los archivos de referencia. Los explica la página de cada formato en [Importadores y exportadores](../../ventana-de-dibujo/importadores-y-exportadores/README.md).

## Observaciones

Si está activada la opción de utilizar proyectos de archivos de dibujo, la rejilla solo muestra la categoría **Configuración de archivo de dibujo**, con la configuración que se aplica al archivo. Las configuraciones se crean en **Herramientas/Configurar proyectos**.
