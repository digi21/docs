---
description: Cuadro de diálogo Opciones
---

# Opciones

[Botón de MDTopX](../introduccion/untitled-10.md)

Este cuadro de diálogo se compone de tres pestañas donde el usuario puede cambiar ciertas opciones generales de la aplicación o personalizar su apariencia.

La primera pestaña tiene opciones generales como son:

* **Configuración de la llave**: Desde aquí se podrá configurar dónde debe buscar el programa la llave de protección. Esta llave podrá estar conectada a un puerto USB del ordenador o en un servidor. Para ello se deberá indicar Buscar llave local en el primer caso y/o Buscar llave en red en el segundo caso. Si no se tiene llave en red, se deberá desactivar esta segunda opción ya que si no, el programa perderá tiempo intentando buscar la llave en la red de ordenadores.
* **Comandos deshacer**: Se podrá seleccionar la cantidad de opciones de deshacer que se tienen por cada documento. Esta cantidad puede variar entre cero \(posibilidad de deshacer desactivada\) y 25. Cuanto más opciones de deshacer se le den al programa más memoria consume, por lo que se recomienda bajar este valor si se manejan archivos de grandes tamaños.
* **Precisión de las coordenadas**: En este campo se indicarán la precisión de las coordenadas del archivos. Por defecto estará en centímetros. Si el archivo tiene unidades diferentes pueden ser cambiadas desde este cuadro de diálogo. Atención, al cambiar las unidades en este cuadro de diálogo se cambiarán para todos los documentos abiertos en la aplicación.
* **Traducción de archivos DGN**: Cuando se traducen dibujos con cartografía o modelos digitales del terreno al formato DGN de MicroStation es necesario indicar un archivo semilla. Este archivo es utilizado para conocer las características de traducción \(unidades, dimensión, etc.\). Adicionalmente, se puede indicar un archivo de traspaso de los códigos de visualización utilizados en el programa al formato de codificación de MicroStation \(nivel, estilo, color, peso y grupo gráfico\):
* **Semilla**: Se indicará el nombre de un archivo DGN semilla. Es obligatorio. Debería ser un archivo vacío, porque se va a utilizar para copiarlo con el nombre del archivo DGN generado, cogiendo sus características. Con la instalación del programa se proporciona un archivo semilla en tres dimensiones y con centímetros como unidad mínima.
* **Tabla**: Se indicará el nombre de un archivo ASCII donde se indica como traducir las entidades. Es opcional. Con la instalación del programa también se proporciona un tabla de traducción de ejemplo. Cada línea del archivo deberá tener los campos separados por comas, espacios o tabuladores, estando en el siguiente orden:
  * Código DIGI.
  * Nivel.
  * Estilo.
  * Color.
  * Peso.
  * Fuente de texto.
  * Grupo gráfico.
  * Nombre de célula.
  * Tipo de elemento: Puede tomar los valores 0 \(line string\), 1 \(shape\), 2 \(pattern line\), 3 \(célula\) o 4 \(texto\).
  * Alto del texto en metros.
  * Ancho del texto en metros.
  * Justificación del texto.
  * Color de relleno.
* **Origen global**: MDTop permite indicar un origen global que aplicará a las coordenadas que se importan.
* **Utilizar archivo temporal al triangular archivos**: Se podrá activar este campo para que MDTop utilice archivos temporales en los cálculos generados al triangular archivos. Es útil cuando los archivos son muy grandes, debido a las grandes necesidades de memoria libre que precisa el programa, pero ralentiza el proceso, por lo que por lo normal debería estar desactivado.
* **Reproducir sonido al terminar de calcular**: Se puede activar la opción de que se reproduzca un sonido cada vez que termine un cálculo.
* **Comprobar nuevas versiones**: Se puede activar que se compruebe si existen versiones nuevas del programa en el servidor de Digi21.net. Esta comprobación se realiza cuando el programa se inicia.
* **Cuando se registran líneas**: Estos campos están destinados a configurar la línea que se muestra en pantalla cuando se está registrando una línea nueva \(por ejemplo, línea de ruptura nueva o trazados o alzados nuevos en los archivos de viales\). Puede interesar que tenga un color o grosor determinado para ello se ofrecen los siguientes campos:
  * **Estilo de línea**: Podrá ser Sólida \(línea continua\), Líneas \(línea a trazos\), Puntos \(línea a puntos\), Línea-Punto, Línea-Punto-Punto .
  * **Grosor**: Se especificará un grosor de línea entre 0 y 10.
  * **Color**: Pulsando este botón saldrá un cuadro de diálogo de Windows para seleccionar el color.

Desde este cuadro de diálogo también es posible cargar o salvar los valores de los diferentes cuadros de diálogo de la aplicación, como tintas hipsométricas, sombreado, curvado, etc. Para ello se podrán utilizar los botones dispuestos al efecto.

La segunda pestaña tiene opciones de visualización de los textos en ficheros de dibujo. Por defecto, los textos se visualizan con una apariencia 3D y con alta calidad. Sin embargo, si la tarjeta gráfica tiene problemas para mover un archivo con muchos textos, se puede bajar la calidad de visualización de estos, así como evitar verlos en 3D.

Por último, en la tercera pestaña se puede configurar la barra de herramientas rápida, así como las teclas asociadas a algunos comandos.

