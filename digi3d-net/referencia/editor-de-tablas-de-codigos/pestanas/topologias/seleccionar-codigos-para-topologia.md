# Seleccionar códigos para topología

Permite añadir los códigos de las geometrías \(líneas y textos de centroide\) que forman parte de la topología.

Al aceptar este cuadro de diálogo se añadirán a la topología todos los códigos seleccionados. Todos ellos se almacenarán con la misma configuración \(relación con la topología, condición para excluir, etc.\).

## Ventanas

Este cuadro de diálogo dispone de las siguientes ventanas:

### Lista de códigos a añadir

Muestra la lista de códigos que se añadirán a la topología al aceptar el cuadro ed diálogo.

Tiene tres botones asociados:

* **Limpiar** Borra todos los códigos añadidos en la lista de códigos a añadir.
* **Borrar** Elimina los códigos seleccionados en la lista de códigos a añadir.
* **Añadir** Permite añadir códigos a la lista de códigos a añadir.

### Relación de estos códigos con la topología

Permite configurar si la presencia de una línea con alguno de los códigos que se van a añadir va a asegurar que se forme un polígono.

Se pueden configurar uno de los siguientes valores:

* **Es obligatorio que exista un tramo con este código para formar el polígono.** Si se selecciona esta opción, el analizador de topologías tendrá en consideración un  [polígono topológico](poligonos-topologicos.md) únicamente si tiene al menos un tramo con este código.
* **La presencia de un tramo con este código garantiza que se forme el polígono.** Si se selecciona esta opción, el analizador de topologías tendrá en consideración un _polígono topológico_ si tiene al menos un tramo con este código.
* **La presencia de un tramo con este código NO garantiza que se forme el polígono.** Si se selecciona esta opción, si el analizador de topologías consigue formar un recinto topológico únicamente con líneas con este código, no se tendrá en consideración dicho recinto topológico.

## Condición para excluir la geometría

Permite introducir un campo de base de datos y un valor para dicho campo. Si el analizador de topologías localiza una línea con este código y dicha línea tiene en la base de datos asignado el valor configurado, dicha línea no se tendrá en consideración para formar polígonos topológicos.

Ejemplo, si se introduce aquí el valor:

```text
formar_poligono=No
```

Todas aquellas líneas con este código que tengan almacenado en la base de datos el valor "No" para el campo "formar\_polígono" no se utilizarán para formar polígonos topológicos.

### Tipo de coordenada Z

Permite la manera en la que aportarán coordenadas Z las líneas con este código a la hora de formar polígonos de esta topología en caso de que se haya configurado el valor **2.5D a partir de las geometrías del polígono** o el valor **3D a partir de las geometrías del polígono** en la opción [Coordenadas Z del polígono ](anadir-topologia.md#coordenadas-z-del-poligono)de la topología.

Se puede seleccionar una de las siguientes opciones:

* **No respetar las coordenadas Z del segmento** Si se selecciona esta opción, se interpolarán las coordenadas Z del segmento entre las de otros segmentos que sí que proporcionen coordenada Z.
* **Respetar las coordenadas Z del segmento** Si se selecciona esta opción, se respetarán las coordenadas Z del segmento.
* **Proyectar sobre un MDT cargado** Si se selecciona esta opción se proyectarán las coordenadas Z del segmento sobre algún archivo MDT cargado en el momento de generar los polígonos a partir de la topología.
* **Respetar la coordenada Z si es coincidente en XYZ** Respeta las coordenadas Z del segmento únicamente si la coordenada Z del nodo inicial o del final coincide con la coordenada Z de la otra línea que llega a uno de esos nodos.  En caso de que no coincida la coordenada Z ni del nodo inicial ni del final, no se respetarán las coordenadas Z de esta línea.

