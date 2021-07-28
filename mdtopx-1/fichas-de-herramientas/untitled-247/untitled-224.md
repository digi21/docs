# Borrar triángulos del TIN

[Ficha de herramientas Edición TIN](./)

Las herramientas para borrar triángulos de un modelo digital tipo TIN están agrupadas en esta sección. Al borrar triángulos se producirá una ausencia en la definición de la superficie, es decir, se producirán huecos si estos triángulos estaban en el interior del modelo. Si se desea borrar información, sin que se produzca este efecto, entonces se deberían borrar puntos y que el programa retriangulara la zona sin dichos puntos. Las herramientas disponibles para ello, están explicadas en el apartado [Borrar vértices del TIN](untitled-223.md).

Las herramientas disponibles para borrar triángulos son las siguientes:

* \*\*\*\*[**Borra en límites** ](../../herramientas-de-edicion-de-la-triangulacion/untitled-26.md): Esta herramienta permite borrar triángulos dentro o fuera de límites que pueden estar definidos por líneas de ruptura o por archivos de dibujo
* \*\*\*\*[**Borra por distancia**](../../herramientas-de-edicion-de-la-triangulacion/untitled-203.md): Esta herramienta es utilizada para borrar triángulos automáticamente en función de la longitud de lado. Sirve para borrar aquellos triángulos demasiado grandes como para ser considerados sus puntos como vecinos. Es útil para eliminar aquellos triángulos generados en zonas cóncavas de la cartografía que unen puntos alejados en la realidad
* \*\*\*\*[**Borra por pendientes**](../../herramientas-de-edicion-de-la-triangulacion/untitled-25.md): Esta herramienta permite borrar aquellos triángulos que no están en el rango de pendientes indicado por el usuario.
* \*\*\*\*[**Borra por dif. cota** ](../../herramientas-de-edicion-de-la-triangulacion/untitled-24.md): Esta herramienta es utilizada para borrar triángulos automáticamente en función de la diferencia de cota que tengan sus vértices. Sirve para borrar aquellos triángulos con demasiada pendiente como para ser considerados sus puntos como vecinos. Es útil para eliminar aquellos triángulos generados entre elementos pertenecientes a superficies diferentes.

