---
description: Cuadro de diálogo Cubicación
---

# Cubicación

[Cubicación](../../como.../como-cubicacion.md)

![Cuadro de di&#xE1;logo Cubicaci&#xF3;n](../../../.gitbook/assets/image%20%2841%29.png)

En este cuadro de diálogo aparecen los siguientes campos a rellenar:

* **Fichero MDT**: Fichero con el modelo digital contra el que se proyectarán los prismas y se cubicarán. Este modelo digital tendrá que estar ubicado en la misma zona que el documento actual, es decir, debe haber zona común entre ambos y el límite utilizado. A la derecha del campo se encuentra el botón \[...\], con el que el usuario podrá buscar el archivo utilizando el explorador de Windows.
* **Fichero con el límite**: Fichero con el límite de cubicación. El formato de este fichero puede ser BIN de DIGI, DXF de AutoCad, DGN de MicroStation o un fichero ASCII con las coordenadas que forman el límite. El límite podrá estar compuesto por una o varias líneas cerradas. En el caso del fichero ASCII sólo podrá ser leída una línea. A la derecha del campo se encuentra el botón \[...\], con el que el usuario podrá buscar el archivo utilizando el explorador de Windows.
* **Modo de cálculo**: Se indicará si se desea cubicar por intersección de _triángulos_ o por medio de una _rejilla_ de paso indicado en el campo _Paso_ en metros. El modo de cálculo por intersección de triángulos necesita mayor tiempo de cálculo pero es más preciso. Mientras, el modo de cálculo por rejilla será más preciso cuanto más pequeño sea el paso, pero será más rápido en el cálculo cuanto mayor sea éste.
* **Desbroce capa vegetal**: Distancia en metros de la capa vegetal del terreno. Antes de proceder con la comparación entre los modelos digitales para calcular la cubicación, el programa quitará el volumen de esta capa del modelo digital original, debido a que es una capa que no se desea en el desmonte ni en el terraplén.
* **Tolerancia de proyección**: Altura en metros bajo la cual se considerarán que la proyección de un punto sobre los MDT son la misma. Por ejemplo, si se introduce 0.5 m en este campo, cuando se proyecten los puntos de un MDT sobre el otro, si la diferencia es inferior a esta cantidad se considera que no hay diferencia entre un modelo y el otro. Si utilidad reside en que los MDT puede proceder de cartografía diversa que tienen una determinada tolerancia en su elaboración, por lo que un valor inferior no tiene sentido considerarlo como una actuación de desmonte o terraplén.
* **Trazar perfiles**: Para proyectar perfiles sobre la cubicación generada. En estos perfiles aparecerán dos líneas con la proyección sobre ambos modelos digitales. A la derecha del campo se encuentra el botón \[...\], con el que el usuario podrá [Configurar los perfiles ](perfiles-de-cubicacion.md)a proyectar.
* **Fichero con informe**: Fichero ASCII con un listado de la cubicación calculada. A la derecha del campo se encuentra el botón \[...\], con el que el usuario podrá seleccionar el archivo que se salvará, utilizando el explorador de Windows.

{% hint style="info" %}
Para poder utilizar esta herramienta es necesario tener activo un documento de tipo modelo digital de triangulación.
{% endhint %}

