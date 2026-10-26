# Integrar texturas
<!-- id: integrar-texturas -->

[VirtuaLand Cargar](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-cargar.md)

Guarda dentro del archivo del modelo digital del terreno las texturas cargadas con [Cargar texturas](cargar-texturas/README.md), para que se vean al abrirlo sin tener que volver a cargarlas ni tener a mano los archivos de las ortofotos. Los botones **Integrar texturas** y **Quitar texturas integradas** están en el panel **Cargar** de la pestaña VirtuaLand, junto a [Texturas](cargar-texturas/README.md).

## Integrar texturas

Integra en el modelo digital las texturas cargadas que no lo estén ya. Solo está activo si hay alguna textura cargada sin integrar.

* De cada ortofoto se guarda solo la parte que cubre el modelo digital, a la resolución con que se cargó, en formato PNG (sin pérdida y con su transparencia, si la tiene).
* El modelo digital queda modificado: las texturas se guardan en el archivo al guardarlo con **Guardar** o **Guardar como**.
* La ventana de resultados muestra cuántas texturas se han integrado.

Una vez integrada, la textura es del modelo digital: [Cargar texturas](cargar-texturas/README.md) ya no la muestra en su lista ni la puede descargar, aunque se borre o se mueva el archivo de la ortofoto. Para quitarla, use **Quitar texturas integradas**.

## Al abrir el modelo digital

Las texturas integradas se cargan solas al abrir el modelo digital, en la misma operación que la lectura del modelo: la ventana de resultados numera seguidos los procesos de leer el modelo y de leer y proyectar cada textura, y al final muestra cuántas texturas se han cargado, «Operación finalizada con éxito» y el tiempo de toda la apertura.

Para ver el modelo digital sin las texturas, sin descargarlas, desmarque **Ver textura** en el botón [Superficie](../herramientas-de-visualizacion/vista-de-superficie-de-mdt.md) de Herramientas MDT.

## Quitar texturas integradas

Quita del modelo digital todas las texturas integradas, después de pedir confirmación: dejan de verse y, al guardar, el modelo digital vuelve a guardarse sin ellas. Las texturas cargadas desde archivo no se tocan. Solo está activo si el modelo digital tiene texturas integradas.

## Compatibilidad

Un modelo digital con texturas integradas se guarda en la versión 9 del formato MDT, que **las versiones anteriores de MDTopX no pueden abrir**. Un modelo digital sin texturas integradas se sigue guardando en la versión 8, como siempre. Si necesita abrir el modelo en una versión anterior, quite las texturas integradas y guárdelo.

Deshacer y Rehacer no afectan a las texturas integradas: solo deshacen los cambios de la geometría.

Al [exportar a OBJ con texturas](exportar-obj.md), las texturas integradas se exportan con la imagen guardada en el modelo digital.
