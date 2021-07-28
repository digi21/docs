---
description: Cuadro de diálogo Proyectar viales sobre MDT
---

# Proyectar viales sobre MDT

[Viales Generar](../../fichas-de-herramientas/untitled-256/untitled-329.md)

Una vez que se han definido todos los aspectos de un vial \(trazado, alzado, secciones tipo\) se puede proceder a la proyección sobre el MDT para calcular los planos derivados: curvados, cubicaciones, etc.

Con esta herramienta se pueden proyectar los viales seleccionados sobre el MDT cargado actualmente, generando un documento donde se encuentran varios tipos de entidades:

* Todas las líneas de ruptura y puntos originales del MDT, siempre y cuando no se encuentren en el área definido por el vial \(o viales\) proyectado.
* Una línea que representa el eje del vial.
* Una línea por cada uno de los puntos que definen la sección tipo, resultado de unir los citados puntos en los perfiles transversales generados. La separación entre estos perfiles se puede configurar pulsando el botón Configurar .
* Una línea que define el contorno del vial, resultado de su intersección con el terreno.

Con estas nuevas líneas se generará un nuevo documento de dibujo, que se podrá [triangular ](../../como.../untitled-326.md)para generar el MDT modificado, con el vial proyectado sobre el MDT original. Posteriormente, se podrá [curvar ](../../como.../untitled-219.md)este MDT o comparar con el MDT original para calcular el [movimiento de tierras ](../../como.../untitled-217.md).

En el cuadro de diálogo, se muestra un listado con los trazados disponibles y, debajo, un listado con los alzados de cada trazado. Se podrán seleccionar todos los viales que se desean proyectar sobre el MDT, pulsando el botón Añadir . También se podrán descartar pulsado el botón Borrar .

Pulsando el botón Configurar se mostrará un [cuadro de diálogo ](untitled-79.md)donde se pueden modificar algunas opciones de dibujo de la planta, como la separación entre los transversales a la traza o los textos de rotulación de los puntos kilométricos

Por último, si alguna de las secciones tipo tiene más de una capa definida, se generará un documento de dibujo nuevo por cada capa adicional, pero únicamente contendrán las líneas de que definen dicha capa del vial. El objetivo de estos documentos es poder generar un MDT nuevo que podrá ser comparado con el MDT del vial y poder obtener los datos de cubicación de la citada capa.

