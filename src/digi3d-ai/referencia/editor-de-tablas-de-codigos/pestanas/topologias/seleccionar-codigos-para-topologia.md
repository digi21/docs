# Seleccionar códigos para topología
<!-- id: seleccionar-codigos-para-topologia -->

Permite añadir los códigos de las geometrías \(líneas y textos de centroide\) que forman parte de la topología.

Lo abren los botones **Añadir** y **Modificar** de la lista de códigos de la topología. Al aceptar este cuadro de diálogo se añaden a la topología todos los códigos de la lista, con la misma configuración \(relación con la topología, expresión para excluir, coordenadas Z, etc.\). Con **Modificar**, la lista contiene el código que se modifica y los botones **Limpiar**, **Borrar** y **Añadir...** están deshabilitados.

## Lista de códigos a añadir

Muestra la lista de códigos que se añadirán a la topología al aceptar el cuadro de diálogo.

* **Limpiar**: borra todos los códigos de la lista.
* **Borrar**: elimina el código seleccionado.
* **Añadir...**: abre el cuadro de diálogo [Seleccione códigos](../../../cuadros-de-dialogo/seleccione-codigos.md) y añade los códigos elegidos.

## Prioridad del código

Número entero. Si una línea tiene varios códigos de la topología, se usa la configuración del código con mayor prioridad. La opción de nodo **Asignar al nodo la coordenada Z de la línea con mayor prioridad** compara este valor entre los dos tramos.

## Relación de estos códigos con la topología

Indica si la presencia de una línea con alguno de estos códigos asegura que se forme un polígono:

* **Es obligatorio que exista un tramo con este código para formar el polígono.** El analizador de topologías tiene en cuenta un [polígono topológico](poligonos-topologicos.md) solo si tiene al menos un tramo con este código.
* **La presencia de un tramo con este código garantiza que se forme el polígono.** El analizador de topologías tiene en cuenta un polígono topológico si tiene al menos un tramo con este código.
* **La presencia de un tramo con este código NO garantiza que se forme el polígono.** Si el analizador de topologías forma un recinto solo con líneas con este código, no tiene en cuenta ese recinto.
* **La presencia de un tramo con este código NO garantiza que se forme el polígono, pero sí huecos.** Como la anterior, pero los recintos formados con estas líneas sí cuentan como huecos.

## Expresión Python para excluir la geometría

Expresión Python que se evalúa para cada línea con estos códigos al formar los polígonos. Si el resultado es verdadero, la línea no se usa para formar polígonos topológicos. Vacía, no se excluye ninguna línea.

## Coordenada Z que proporciona un tramo con este código al nodo para el caso general

Se usa si la opción [Coordenadas Z del polígono](anadir-topologia.md#coordenadas-z-del-poligono) de la topología toma la Z de las geometrías del polígono. Indica qué coordenada Z recibe el nodo en el que un tramo con este código se encuentra con otro tramo:

* **Asignar al nodo la coordenada Z de la línea con mayor prioridad**
* **Asignar al nodo la coordenada Z del tramo con este código**
* **Asignar al nodo la coordenada Z del otro tramo**
* **Asignar al nodo la coordenada Z máxima de entre los dos tramos**
* **Asignar al nodo la coordenada Z mínima de entre los dos tramos**
* **Asignar al nodo la coordenada del centroide**
* **Interpolar**
* **Asignar al nodo la obtenida al proyectar sus coordenadas sobre los MDTs cargados**

## Coordenada Z a asignar a los vértices de un tramo con este código para el caso general

Cada opción combina una acción con una condición:

* Acciones: **Respetar las coordenadas Z de los vértices**, **Interpolar entre los dos nodos del tramo**, **Asignar la coordenada Z del centroide** y **Proyectar sobre un MDT cargado**.
* Condiciones: **siempre**, **si el tramo coincidía en Z en ambos extremos**, **si el tramo coincidía en Z en al menos un extremo** y **si la Z ganadora en ambos nodos fue la de este tramo**.

## Etiqueta asignada al MDT

Solo se habilita si el nodo o los vértices se proyectan sobre un MDT. Vacía, se proyecta sobre cualquier MDT cargado; con una etiqueta, solo sobre los MDT que la tienen.

## Configuración de la coordenada Z para casos particulares de este código con otros códigos

Excepciones a la regla general del nodo para cuando un tramo con este código se encuentra con un tramo de otro código. **Añadir** abre el cuadro de diálogo **Añadir caso particular de tratamiento de Z entre tramos**; **Borrar** elimina el caso seleccionado y **Limpiar** los elimina todos.
