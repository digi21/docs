# Sombreado

[Herramientas MDT Productos ráster](../fichas-de-herramientas/ficha-de-herramientas-mdt/productos-raster.md)

El sombreado de un MDT genera un mapa con diferentes tonalidades en función de la iluminación recibida por cada zona, de tal forma que es de gran ayuda para la comprensión del relieve.

La iluminación puede ser cenital de tal forma que recibirán más luz \(y por tanto, serán más claras\) aquellas zonas más llanas, y recibirán menos luz aquellas zonas que sean más inclinadas. Este tipo de iluminación no ofrece una buena representación del relieve, pero se podrán cuantificar las diferentes pendientes de la zona.

La iluminación también puede ser oblicua, proyectado rayos de luz desde la esquina NW del documento y a una inclinación de 45 grados. Con este tipo de iluminación, recibirán más luz aquellas zonas que están de cara a esta dirección y recibirán menos luz aquellas zonas que están de espaldas a esta dirección. Este tipo de iluminación ofrece una buena representación de relieve, sin poder cuantificar la inclinación del terreno.

La iluminación puede ser combinada \(inclinada más cenital\) de tal forma que se podrán aplicar dos iluminaciones con diferentes gamas de color \(normalmente, colores cálidos para la iluminación cenital y colores fríos para la iluminación oblicua\), pudiéndose aprovechar las ventajas de ambos tipos.

El sombreado sólo podrá ser generado a partir de un modelo digital del terreno, por tanto, para poder llamar a esta herramienta se deberá tener activo un documento con un modelo digital.

La llamada a esta herramienta se puede hacer de las siguientes formas:

* Pulsar el botón  Sombreado de la ficha de [Herramientas MDT](../fichas-de-herramientas/ficha-de-herramientas-mdt/).
* Pulsar la combinación de teclas \[CTRL\] + \[S\].

Al ejecutar esta herramienta, se abrirá un [cuadro de diálogo](../herramientas-mdt/sombreado/) para indicar las opciones del mapa de sombreado. Si el botón Aceptar es pulsado, el programa calculará el sombreado del MDT. Este documento se podrá salvar posteriormente en formato TIF, BMP o JPEG. Cuando sea salvado, se generarán simultáneamente un archivo ASCII con el mismo nombre y extensión ORT, con la georreferenciación del sombreado. Este archivo contiene las coordenadas de la esquina superior izquierda y el tamaño del píxel en metros.

Esta herramienta tiene la posibilidad de ser ejecutada desde la [línea de comandos](../desde-linea-de-comando/linea-de-comando-sombreado.md).

