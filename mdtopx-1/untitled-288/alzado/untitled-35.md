---
description: Cuadro de diálogo Buscar intersecciones
---

# Buscar intersecciones

[Cuadro de diálogo Calcular alzado nuevo](untitled-53/)

Desde esta herramienta el programa permite el cálculo de las intersecciones del trazado que contiene al alzado que se está editando con el resto de trazados.

Para ello, cuando la herramienta es llamada desde el cuadro de diálogo [Calcular alzado nuevo ](untitled-53/), el programa muestra un [cuadro de diálogo ](../generar/untitled-144.md), para poder elegir el resto de trazados contra los que se quiere calcular las intersecciones.

Si el programa encuentra intersecciones en planta entre los trazados seleccionadas mostrará un cuadro de diálogo por cada una de las intersecciones encontradas, donde se muestran los siguientes datos:

* **Vial**: Muestra información del vial con el cual se ha encontrado la intersección: Nombre del trazado, nombre del alzado y punto kilométrico del punto de intersección.
* **Punto de intersección**: Coordenadas planimétricas del punto intersección, altitud en el vial encontrado y punto kilométrico en el trazado actual.
* **Operación**: El programa solicita que se seleccione la operación que se desea realizar para hacer coincidir ambos puntos en cota. Muestra la cota actual en el vial y ofrece las siguientes posibilidades, que estarán activas siempre y cuando no se solape los elementos del alzado:
* **Variar cota vértice**: Permite variar la cota del vértice de un acuerdo vertical para moverlo entero hasta hacer coincidir la cota de la intersección con la del segundo vial. Sólo estará activo se el corte se produce en el desarrollo de un acuerdo.
* **Variar parámetro Kv**: Permite variar el parámetro del acuerdo parabólico si el punto de corte se encuentra en el desarrollo de éste.
* **Mover el alzado**: Permite mover todo el alzado hasta hacer coincidir las cotas.
* **Insertar vértice nuevo**: Permite insertar un vértice nuevo con la cita cota. Sólo estará activo si el corte no se produce en el desarrollo de un acuerdo.

