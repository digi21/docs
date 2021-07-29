---
description: Cuadro de diálogo Calcular plano
---

# Calcular plano

[Transformación de coordenadas](transformacion-de-coordenadas.md)

Mediante este cuadro de diálogo, el usuario podrá gestionar los puntos que definen un plano. Este cuadro de diálogo es flotante, es decir, permanecerá abierto mientras el usuario selecciona puntos gráficamente. Para seleccionar puntos, se deberá utilizar el botón izquierdo del ratón sobre el documento actual. Según se van añadiendo puntos, el programa calcula en tiempo real el plano definido por todos los puntos del listado. Al menos se precisan tres puntos para definir un plano. Si se añaden más puntos, se podrán calcular residuos. Según estos residuos, el usuario podrá decidir cuáles son los puntos más adecuados para definir el plano. Se recomienda que los puntos que definan el plano están en los exteriores de la zona, para no extrapolar datos. Asimismo, se recomienda que los puntos no están alineados para calcular de manera precisa el plano.

Los campos y herramientas que presenta el cuadro de diálogo son los siguientes:

* **Remedir**: Mediante este botón se podrá remedir un punto que tenga demasiado residuo.
* **Borrar**: Mediante este botón se podrá eliminar un punto que no convenga para el cálculo del plano.
* **Cargar**: Mediante este botón se podrá cargar un archivo de puntos que definen el plano.
* **Parámetros**: Se muestran los parámetros del plano calculado a partir de los puntos del listado. Se muestran los tres parámetros del vector característico de la superficie más la desviación típica de cada uno de ellos.

Aceptando el plano calculado el programa mostrará un [cuadro de diálogo ](resultados-de-plano-calculado.md)con los resultados finales, para ser editados, aceptados o rechazados.

