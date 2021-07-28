---
description: Cuadro de diálogo Proyección sobre MDT
---

# Proyección sobre MDT

[Herramientas MDT Productos civil](../fichas-de-herramientas/untitled-249/untitled-261.md)

Desde este cuadro de diálogo el programa puede dar cota a las entidades de un archivo, proyectándolas sobre el modelo digital; o comparar la cota de las dichas entidades con las obtenidas al proyectarlas sobre el modelo digital, permitiendo generar marcas de error en caso de que superen una cierta tolerancia. Para realizar estas operaciones se tienen los siguientes campos a rellenar:

* **Fichero a proyectar**: Se indicarán el nombre del fichero con las entidades que se desean proyectar. Se podrá utilizar el botón situado a la derecha para ejecutar el explorador de Windows para buscar el archivo. El formato de este fichero puede ser BIN de DIGI, DXF de AutoCad, DGN de MicroStation o un fichero ASCII. Podrán estar almacenados varias entidades, excepto en el caso del fichero de formato ASCII en el que sólo se leerá una en forma de línea.
* **Tipo proyección sobre MDT**: [Cuadro de diálogo ](untitled-172/untitled-204.md)donde se puede configurar el tipo de proyección de los perfiles sobre el modelo digital.
* **Comprobar la cota**: Se activará esta casilla si se desea comparar la cota que tienen las entidades con las cotas que tendrán después de ser proyectadas sobre el modelo digital.
* **Comprobar si está fuera**: Se activará esta casilla si se desean marcar aquellas entidades que están fueran del límite exterior del modelo digital.
* **Tamaño del símbolo**: Se indicará el tamaño en metros de las marcas generadas para los errores.
* **Tolerancia**: Se indicará la tolerancia en metros que no puede superar la diferencia de cotas en una entidad.
* **Código de errores**: Código en el que se registrarán los errores.
* **Fichero de errores**: Nombre del fichero de errores con extensión donde se almacenarán estos. Se puede pulsar el botón a la derecha para indicar la ubicación del archivo. Este fichero podrá ser en formato de:
  * DIGI para lo cual se indicará la extensión BIN.
  * AutoCad para lo cual se indicará la extensión DXF.
  * MicroStation para lo cual se indicará la extensión DGN.
* **Fichero con informe**: El programa permite sacar un informe con las entidades proyectadas y el error que contenían. Se podrá utilizar el botón situado a la derecha para ejecutar el explorador de Windows para ubicar el archivo.

