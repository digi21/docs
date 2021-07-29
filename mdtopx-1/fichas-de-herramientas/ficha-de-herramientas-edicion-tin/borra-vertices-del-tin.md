# Borra vértices del TIN

[Ficha de herramientas Edición TIN](./)

Las herramientas para borrar puntos de un modelo digital tipo TIN están agrupadas en esta sección. Al borrar puntos por alguna causa, el programa procederá a retriangular la zona para generar nueva información de la superficie. Si, por el contrario, el usuario no desea que se genere esta nueva definición, entonces debería borrar triángulos, produciéndose un hueco en la zona. Las herramientas disponibles para ello, están explicadas en el apartado [Borrar triángulos del TIN](borrar-triangulos-del-tin.md).

Las herramientas disponibles para borrar puntos son las siguientes:

* \*\*\*\*[**Borra por pendientes**](../../herramientas-de-edicion-de-la-triangulacion/borrar-puntos-por-pendiente.md): Esta herramienta permite borrar puntos de la triangulación en función de la pendiente de los triángulos a los que pertenecen, pudiendo borrar aquellos que tengan demasiada pendiente o muy poca. útil para borrar puntos del modelo cuando proceden de una correlación fotogramétrica automática, ya que pueden aparecer algunos puntos erróneos
* \*\*\*\*[**Borra por altitudes** ](../../herramientas-de-edicion-de-la-triangulacion/borrar-puntos-por-altitudes.md): Esta herramienta permite borrar puntos de la triangulación en función de la altitud de dichos puntos
* **Borra vértices**: Este comando permite borrar vértices de la triangulación seleccionándolos gráficamente con el ratón. La aplicación recalcula en tiempo real la nueva triangulación sin el punto seleccionado. Para borrar puntos:
  * Seleccione la herramienta
  * Pulse con el botón izquierdo sobre el punto que se desea borrar
  * Si el punto seleccionado es el requerido pulse nuevamente el botón izquierdo para proceder al borrar y retriangulación del modelo
  * Si el punto seleccionado no es el requerido pulse el botón derecho del ratón para anular la selección
* **Borra vértices por cercado**: Este comando permite borrar vértices de la triangulación seleccionándolos mediante un cercado. Para definir el cercado se van definiendo sus vértices mediante el botón izquierdo del ratón finalizando dicha definición con el botón derecho del ratón. Todos los puntos que queden en el interior del cercado serán seleccionados y serán borrados si se acepta pulsando el botón izquierdo del ratón o cancelando con el botón derecho del ratón. La aplicación recalcula en tiempo real la nueva triangulación sin los puntos seleccionados.

