# Seleccionar nodos de un DEM
<!-- id: seleccionar-nodos-de-un-dem -->

[VirtuaLand Editar](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-editar.md)

En un documento DEM se pueden seleccionar nodos de la rejilla para borrarlos o para copiarlos a un DEM nuevo. Lo que se selecciona son siempre los nodos, sea cual sea la forma en que se esté viendo el modelo, y se resaltan como puntos.

## Seleccionar nodos

Las herramientas de selección están en el comando **Seleccionar** del epígrafe [Elementos](../fichas-de-herramientas/ficha-de-herramientas-editar/editar-elementos.md) de la ficha Editar:

* _Mediante ventana rectangular_, _Mediante ventana circular_ y _Mediante ventana irregular_: seleccionan los nodos que quedan dentro de la ventana, tal como se ven en pantalla, con la vista girada como esté. Los nodos sin dato no se seleccionan.
* [_Según coordenadas_](../otras-herramientas/editar-elementos/seleccionar-segun-coordenadas.md): selecciona los nodos cuyas coordenadas X, Y y Z están dentro de los rangos indicados, incluidos los bordes. El cuadro de diálogo propone la extensión del DEM, de modo que si se acepta sin cambiar nada se seleccionan todos los nodos con dato.
* _Invertir selección_: selecciona los nodos con dato que no estaban seleccionados y deselecciona los que sí lo estaban.

Cada selección nueva descarta la anterior, salvo que se mantenga pulsada la tecla mayúscula: entonces los nodos se añaden a los ya seleccionados, sin repetirse.

Si la opción _Seleccionar en referencias_ está marcada, las ventanas de selección actúan también sobre los dibujos de referencia, como en el resto de documentos. Un DEM que se ha cargado como referencia en otra ventana no selecciona nodos.

La selección se descarta al pulsar en el modelo con las herramientas **Información** o **Borra vértices por cercado**, para que un clic no actúe sobre los nodos seleccionados.

## Borrar los nodos seleccionados

Con nodos seleccionados, el comando **Borrar** de la ficha Editar, o la tecla \[SUPR], borra esos nodos: pasan a no tener dato. La operación se puede deshacer con \[CTRL]+\[Z].

En un DEM muy grande, que supere el límite de puntos que el programa guarda para deshacer, el borrado no se puede deshacer. Ocurre lo mismo con [Borra en límites](borra-en-limites.md) y con el borrado por cercado.

## Copiar a DEM nuevo

El comando **Copiar a DEM nuevo**, en el epígrafe [VirtuaLand Editar](../fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-editar.md), abre un documento DEM nuevo con los nodos seleccionados. El documento de origen no cambia y la selección se mantiene.

El DEM nuevo:

* Abarca el rectángulo que envuelve los nodos seleccionados.
* Tiene el mismo paso de malla que el original y sus nodos coinciden con los del original, de modo que al superponerlos cada nodo copiado tiene las mismas X, Y y Z.
* Deja sin dato los nodos del rectángulo que no estaban seleccionados.
* Conserva el valor que el original usa para los nodos sin dato.

La selección debe abarcar al menos dos filas y dos columnas de nodos; si no, el programa avisa y no crea el documento.

El DEM nuevo no tiene nombre de archivo: para conservarlo hay que guardarlo.
