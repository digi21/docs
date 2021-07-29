---
description: Cuadro de diálogo Parámetros de perspectiva
---

# Parámetros de perspectiva

[Ficha de herramientas Inicio](../fichas-de-herramientas/ficha-de-herramientas-inicio/)

En este cuadro de diálogo se podrá seleccionar una visualización diferente para un archivo. Para ello se deberán indicar los siguientes parámetros:

* **Posición de la vista actual**: Se podrá indicar numéricamente la posición de la vista actual. Esta posición puede ser modificada gráficamente con las herramientas de Zoom de la [Ficha de herramientas Inicio](../fichas-de-herramientas/ficha-de-herramientas-inicio/). Podrá ser indicada de dos formas diferentes:
  * **Ángulos y desplazamientos**: La primera forma de definir la vista es mediante la posición del objeto respecto de los ejes cartesianos. Sus parámetros serían:
    * Ángulo X: Giro de la vista sobre el eje X
    * Ángulo Y: Giro de la vista sobre el eje Y
    * Ángulo Z: Giro de la vista sobre el eje Z
    * Trans. X: Desplazamiento de la vista respecto al eje X
    * Trans. Y: Desplazamiento de la vista respecto al eje Y
    * Trans. Z: Desplazamiento de la vista respecto al eje Z
    * Zoom: Nivel de acercamiento
  * **Posición de la cámara y puntos de vista**: La segunda forma de definir la vista sería como si el usuario tuviera una cámara y estuviera apuntando a un determinado punto de vista. Sus parámetros serían:
    * Cámara X: Coordenada X de la cámara.
    * Cámara Y: Coordenada Y de la cámara.
    * Cámara Z: Coordenada Z de la cámara.
    * Vista X: Coordenada X del punto al que está apuntando la cámara.
    * Vista Y: Coordenada Y del punto al que está apuntando la cámara.
    * Vista Z: Coordenada Z del punto al que está apuntando la cámara.
    * Vertical X: Componente X del vector que define la verticalidad de la cámara.
    * Vertical Y: Componente Y del vector que define la verticalidad de la cámara.
    * Vertical Z: Componente Z del vector que define la verticalidad de la cámara.
* **Parámetros OpenGL**:
  * Tipo de vista: Se podrá elegir entre Vista ortogonal o Vista en perspectiva. Esta elección puede ser llevada a cabo con los comandos Vista ortogonal  y Vista oblicua  de la [Ficha de herramientas Inicio](../fichas-de-herramientas/ficha-de-herramientas-inicio/)
  * Plano cercano: Distancia del usuario al primer plano visible.
  * Plano lejano: Distancia del usuario al último plano visible.
  * Ángulo vista: Ángulo de vista en el eje perpendicular a la pantalla en grados sexagesimales.
  * Escala: Factor de escala para exageración de tamaño.
* **Otros parámetros**:
  * Factor de velocidad de movimiento: Factor para modificar el movimiento en pantalla.
  * Exageración vertical: Escala vertical para exageración del relieve.
  * Puntos interpolados en suavizado: Número de puntos a visualizar cuando el modelo digital de rejilla está suavizado.

Todos estos parámetros pueden ser cargados o salvados en archivos ASCII, mediante los botones Cargar y Salvar, respectivamente.

