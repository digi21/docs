---
description: Cuadro de diálogo Buscar puntos sobre planos
---

# Buscar puntos sobre planos

[Ficha de herramientas Clasificar LiDAR](../../fichas-de-herramientas/untitled-245.md)

Con esta herramienta se pueden clasificar puntos que forman superficies planas.

Los campos necesarios son los siguientes:

* **Tipología origen**: Se deberá seleccionar las tipologías que se considerarán en esta clasificación.
* **Actuar sólo en la selección actual**: Se podrá activar esta opción para calcular sólo en los puntos que actualmente se tengan seleccionados
* **Tipología destino**: Se deberá elegir la tipología de clasificación destino de los puntos que cumplan con las condiciones del cálculo.
* **Distancia máxima entre puntos**: Distancia máxima para considerar dos puntos como adyacentes o vecinos en el terreno. Este parámetro dependerá de la densidad de puntos. No es adecuado poner un valor demasiado elevado porque ello provocará que se consideren puntos muy alejados del punto en consideración. Si se indica un valor demasiado escaso, no se podrá relacionar el punto en consideración con ningún otro punto.
* **Área mínima de superficie**: Valor mínimo de área que tendrá que tener la superficie formada.
* **Máxima distancia al plano**: Valor máximo de distancia perpendicular al plano desde el punto para ser considerado perteneciente a la superficie en cuestión.
* **Calcular límites**: Además de clasificar los puntos, se podrá calcular la entidad vectorial que define la superficie formada.
* **Nombre**: Nombre del archivo generado con los límites vectoriales.
* **Sobrescribir archivo**: Si se desea sobrescribir un posible archivo existente.
* **Cargar como referencia**: Si se desean cargar los límites vectoriales después de terminado el cálculo.

Aceptando estos datos, el programa mostrará un [cuadro de diálogo](Cuadro%20de%20dialogo%20Calcular%20plano.htm) donde se pueden gestionar los puntos que definen el plano.

Vea también:

* [Buscar puntos elevados](untitled-41.md)
* [Buscar puntos aislados](untitled-39.md)
* [Buscar puntos aéreos](untitled-38.md)
* [Buscar puntos hundidos](untitled-44.md)
* [Buscar puntos por diferencia de intensidad](untitled-40.md)
* [Buscar puntos según línea de vuelo](untitled-49.md)
* [Buscar puntos según Geometría más RGB](untitled-47.md)
* [Buscar puntos según Geometría más intensidad](untitled-46.md)
* [Buscar puntos en Superficies Planas](untitled-43.md)
* [Buscar puntos en Paredes](untitled-42.md)
* [Buscar puntos Solo Suelo](untitled-198.md)
* [Superficie mágica](untitled-201/)
* [Buscar puntos vecinos](untitled-51.md)
* [Buscar puntos según infrarrojo](untitled-48.md)
* [Buscar huecos](untitled-34.md)
* [Buscar puntos según Área de superficie](untitled-45.md)

