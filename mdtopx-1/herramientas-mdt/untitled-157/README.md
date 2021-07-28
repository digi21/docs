---
description: Cuadro de diálogo Mapa de Tintas hipsométricas
---

# Mapa de Tintas hipsométricas

[Mapa de tintas hipsométricas](../../como.../untitled-282.md)

En este cuadro de diálogo aparecen los siguientes campos a rellenar:

* **Tamaño del píxel**: Tamaño en metros de los píxeles que formarán el mapa ráster de tintas hipsométricas. Cuanto más grande sea el tamaño del píxel peor calidad de imagen se obtendrá, aunque no es recomendable dar un tamaño demasiado pequeño por el aumento de espacio necesario en memoria y disco para el archivo.
* **Cota máxima y mínima**: Cota máxima y mínima del modelo digital, para ofrecer información al usuario para elaborar la tabla de intervalos de altura.
* **Nombre de la gama**: Nombre de la gama de colores a utilizar. Las tablas podrán ser añadidas, eliminadas o duplicadas con otro nombre, para ser utilizadas en diferentes archivos.
* **Tabla de intervalos de altura**: Se podrán establecer en esta tabla la relación entre colores y diferentes alturas. Los intervalos podrán ser Añadidos, Eliminados o Editados, para adaptarse al rango de cotas del documento. Aquellas superficies que sean superiores a la cota superior o menores a la cota inferior de esta tabla, no serán coloreadas.
* **Ajustar a rango de altitudes**: Existe la opción de poder ajustar una tabla de intervalos a unos límites de cota especificados por el usuario, mediante este [cuadro de diálogo](untitled-17.md):

![](../../../.gitbook/assets/dialogo-ajustar-rango%20%281%29.jpg)

* \*\*\*\*[**Curva hipso**](../../otras-herramientas/untitled-90.md): Se podrá mostrar la distribución de superficies del fichero en función de la cota con el objetivo de poder diseñar mejor la gama de color.
* **Utilizar sombreado**: Si se selecciona esta opción, se generará un mapa de tintas hipsométricas combinado con un sombreado oblicuo del modelo digital, para representar con mayor realidad el relieve. El sombreado oblicuo será calculado con color negro. Para más información, ver la utilidad [Sombreado](../../como.../untitled-322.md).
* **Configurar rayo**: En el caso de elegir Utilizar sombreado, éstas podrán ser configuradas desde este [cuadro de diálogo](../untitled-199/untitled-83.md)

![](../../../.gitbook/assets/dialogo-configurar-rayo%20%282%29.jpg)

* **Utilizar degradación entre tintas**: Esta opción indica al programa que promedie el valor de los colores para cada valor de altitud calculado, de tal forma, que se produce una transición entre los diferentes intervalos de color. Con esta opción se obtienen resultados visualmente aceptables, pero imposibilita saber el rango de altitudes en las que se encuentra un punto por el color, ya que no se producen colores puros, si no mezclas.
* **Grabar límites de los intervalos vectorialmente**: Esta opción permite al usuario grabar los límites entre los intervalos seleccionados vectorialmente, de tal manera, que se podrían colorear con algún otro programa, ya que se generar superficies cerradas. Se puede pulsar el botón a la derecha para indicar la ubicación del archivo. Este fichero podrá ser en formato de:
  * DIGI para lo cual se indicará la extensión BIN.
  * AutoCad para lo cual se indicará la extensión DXF.
  * MicroStation para lo cual se indicará la extensión DGN.
* **Fichero con límite**: Se podrá utilizar un fichero con el límite de la zona de la cuál se desea el mapa de tintas. El formato de este fichero puede ser BIN de DIGI, DXF de AutoCad, DGN de MicroStation o un fichero ASCII con las coordenadas que forman el límite. El límite podrá estar compuesto por una o varias líneas cerradas. En el caso del fichero ASCII sólo podrá ser leída una línea.

Nota: Una buena gama para un fichero entre 0 y 950 metros combinado con sombreado sería:

|  Cota |  Rojo |  Verde |  Azul |
| :--- | :--- | :--- | :--- |
|  0 |  2 |  78 |  253 |
|  10 |  1 |  44 |  26 |
|  40 |  2 |  44 |  1 |
|  80 |  89 |  111 |  2 |
|  160 |  143 |  126 |  3 |
|  280 |  145 |  77 |  2 |
|  650 |  57 |  27 |  9 |
|  850 |  56 |  12 |  10 |
|  950 |  245 |  224 |  224 |

Esto significa que a la cota 0 se le asignará el color 2-78-253 \(expresado en cantidad de rojo, verde y azul\) y a la cota 10 se le asignará el color 1-44-26. A las cotas intermedias se les asignará un color progresivo entre estos límites.

Si hubiera valores menores de 0 o mayores de 950 metros, no se les asignaría ningún valor.

