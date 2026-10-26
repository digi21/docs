# Exportar a OBJ con texturas
<!-- id: exportar-obj -->

[VirtuaLand Cargar](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-cargar.md)

Exporta el modelo digital del terreno a Wavefront OBJ con las ortofotos cargadas como textura, para verlo en programas 3D como Blender, SketchUp, Unity o MeshLab. El botón **Exportar OBJ** está en el panel **Cargar** de la pestaña VirtuaLand, junto a [Texturas](cargar-texturas/README.md). Solo está activo con un modelo digital que tenga triángulos.

Al pulsarlo, MDTopX pide el nombre del archivo `.obj` y escribe, en la misma carpeta:

* **`<nombre>.obj`**: la superficie del modelo digital, con los vértices compartidos entre triángulos.
* **`<nombre>.mtl`**: los materiales, uno por cada trozo de textura.
* **`<nombre>_textura_N.png`**: las texturas, en PNG. Si la ortofoto tiene transparencia (por ejemplo, la [ortofoto del suelo](../modulo-mms/urbana/clasificacion-urbana/README.md#ortofotos) de la clasificación urbana), el PNG la conserva y el material la usa.
* **`<nombre>_origen.txt`**: el origen de las coordenadas (ver más abajo).

Al terminar, la ventana de resultados muestra cuántas de las texturas cargadas se han exportado, «Operación finalizada con éxito» y el tiempo empleado.

## Las texturas

Se exportan las ortofotos cargadas con [Cargar texturas](cargar-texturas/README.md) y las [integradas en el modelo digital](integrar-texturas.md). Si no hay ninguna, se exporta solo la geometría.

* Cada ortofoto cargada desde archivo se vuelve a leer de él a resolución completa, aunque se haya cargado con menos resolución para verla. Solo se exporta la parte que cubre el modelo digital.
* Las integradas en el modelo digital se exportan con la imagen guardada en él, aunque ya no exista el archivo de la ortofoto.
* Las ortofotos grandes se parten en trozos de 4096 píxeles como mucho, porque muchos visores no cargan texturas más grandes. Cada trozo es un material con su PNG.
* Los triángulos que cruzan el borde de un trozo se parten por él, de modo que ninguno se sale de su textura. La malla no se abre por esos cortes.
* Si dos ortofotos se solapan, manda la última cargada, como en la vista del modelo digital. Donde la última es transparente, se ve la de debajo.
* Los triángulos que no cubre ninguna ortofoto se exportan con un material gris liso.

Solo se usan ortofotos ortogonales, es decir, georreferenciadas en planta. Solo se exporta la superficie del modelo digital, no sus objetos (edificios, árboles…).

## Coordenadas

Los programas que leen OBJ trabajan con coordenadas en coma flotante simple: con coordenadas UTM tal cual, la malla pierde precisión y «tiembla» al acercarse. Por eso los vértices se escriben respecto a un origen: el mínimo del modelo digital, redondeado al metro. El origen se anota en una línea de comentario del `.obj` (`# origen X Y Z`) y en `<nombre>_origen.txt`. Sumándolo a cada vértice se vuelve a las coordenadas del proyecto.

El eje Z va hacia arriba, como en MDTopX. Algunos programas suponen que el eje Y va hacia arriba; en Blender, por ejemplo, al importar hay que elegir **Up: Z** y **Forward: Y** para que el modelo no salga tumbado.

## Abrir un OBJ en MDTopX

MDTopX también abre archivos Wavefront OBJ como modelo digital del terreno, con la orden [Abrir](../operaciones-con-archivos/abrir-archivo.md):

* Se leen los vértices y las caras; los polígonos de más de tres lados se dividen en triángulos.
* No se leen las texturas, las normales ni los materiales. Los grupos y objetos del archivo forman un solo modelo digital.
* Se supone el eje Z hacia arriba. Un OBJ con el eje Y hacia arriba se abre tumbado.
* Si el OBJ lo exportó MDTopX, se suma el origen (de la línea `# origen` o de `<nombre>_origen.txt`), y el modelo vuelve a sus coordenadas.

Los archivos `.OBJ` que MDTopX guarda junto a las nubes de puntos con las agrupaciones de objetos son otro formato con la misma extensión; MDTopX los distingue de un Wavefront por su contenido.

Guardar un modelo digital con **Guardar como** y la extensión `.obj` escribe solo la geometría, sin texturas.
