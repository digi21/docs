# Puntos por tesela

Indica el número de puntos que se quiere almacenar en cada tesela de los archivos de nivel de detalle.

Cada tesela se dibuja con un búfer de vértices \(VBO\) y una llamada de dibujo, cuyo coste es fijo con independencia del número de puntos. Las teselas con pocos puntos multiplican las llamadas de dibujo y saturan el controlador de la tarjeta gráfica. El tamaño del nodo raíz se calcula a partir de la forma de la nube para aproximarse a este número.

El valor por defecto es 16000.
