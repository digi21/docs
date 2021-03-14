# Ventana Fotogramétrica

## Resúmen de la operativa de la ventana fotogramétrica

La ventana fotogramétrica básicamente realiza estas tareas:

1. Modifica la _coordenada terreno_.
2. Muestra imágenes en una determinada posición.
3. Notifica a la ventana de dibujo que el usuario ha realizado alguna acción, como por ejemplo: el usuario se ha movido, el usuario ha pulsado el pedal _data_, el usuario ha liberado el pedal _tentativo_,...
4. Vuelve a esperar a que el usuario realice alguna acción y así hasta el infinito.

### Paso 1: Modificación de la _coordenada terreno_

La ventana fotogramétrica tiene una coordenada \(que vamos a denominar _coordenada terreno_\). Esta coordenada varía cuando el usuario desplaza el dispositivo de entrada, y es la coordenada que se va a utilizar con posterioridad para calcular donde mostrár las imágenes en la ventana fotogramétrica.

La ventana fotogramétrica sigue los siguientes pasos para transformar la _coordenada terreno_.

1. Espera a que el usuario interaccione con el dispositivo de entrada \(topomouse, manivelas,...\).
2. Modifica las coordenadas de la ventana fotogramétrica en función de lo que ha hecho el usuario \(si el usuario ha desplazado el topomouse 1 el equivalente a un metro en X, se modifican las coordenadas terreno de la ventana fotogramétrica 1 metro en X\).

### Paso 2: Mostrar las imágenes en una determinada posición

La ventana fotogramétrica no entiende de sensores, no sabe las operaciones matemáticas necesarias para saber qué píxel de cada una de las imágenes tiene que mostrar al usuario en el centro de la pantalla para una determinada coordenada terreno.

Tan solo sabe mostrar imágenes pero no sabe calcular dónde las debe dibujarlas. Delega esa operación al sensor cargado. Básicamente le pregunta al sensor ¿en qué coordenadas píxel debo centrar las imágenes en la ventana fotogramétrica para esta determinada coordenada terreno? para mostrar con posterioridad las imágenes en la ubicación que le ha indicado el sensor.

De esta manera si hemos cargado un sensor de cámara cónica, será función del sensor saber las operaciones necesarias para transformar esa coordenada terreno en las coordenadas píxel para la imagen izquierda y derecha, y si el sensor es satelital, pues será su función saber las operaciones \(que son completamente distintas que las del sensor de cámara cónica\) para transformar dichas coordenadas a píxel. Al estar diseñado de esta manera, no es necesario modificar la aplicación principal si en un futuro se añade un nuevo sensor.

Una vez explicado esto, podemos profundizar un poco más en cómo se realiza este paso: 

1. Si el modelo fotogramétrico tiene asignado una orientación \(_absoluta, afín_, ...\) transforma la _coordenada terreno_ mediante dicha orientación \(_absoluta_ o _afín_\) obteniendo lo que vamos a denominar _coordenada a enviar al sensor_. Si el modelo fotogramétrico no tiene asignada una orientación, se modifica la _coordenada a enviar al sensor_ para que coincida con la _coordenada terreno._
2. La ventana fotogramétrica utiliza la _coordenada a enviar al sensor_ para preguntarle al sensor cargado \(sensor ortofoto, cámara cónica estereoscópica, satelital, ADS,...\) por la posición donde debe mostrar las imágenes en la ventana fotogramétrica.
3. El sensor responde con las coordenadas pixel a mostrar.
4. La ventana fotogramétrica muestra las imágenes en pantalla asegurándose de que las coordenadas pixel devueltas por el sensor estén en el centro de la ventana.

###  Paso 3: Notificar a la ventana de dibujo que el usuario ha realizado alguna acción:

Si hay una ventana de dibujo abierta:

1. Comunicar a la ventana de dibujo que el usuario ha realizado alguna acción.

## Componentes que tienen sistemas de referencia de coordenadas

En el esquema explicado anteriormente hay tres componentes que tienen su propio sistema de referencia de coordenadas:

1. La _coordenada terreno._ A su sistema de referencia de coordenadas lo denominaremos _Sistema de coordenadas de la Orientación._
2. El _sensor_. A su sistema de referencia de coordenadas lo denominaremos _Sistema de referencia de coordenadas Sensor_.
3. La _ventana de dibujo_. A su sistema de referencia de coordenadas lo denominaremos _Sistema de referencia de coordenadas Ventana de dibujo_.

Como estos sistemas de referencia de coordenadas no tienen por qué ser idénticos, Digi3D.NET realiza transformaciones de sistemas de referencia de coordenadas entre ellos, de modo que los pasos anteriores en realidad son así:

![](../../../../.gitbook/assets/grafico-transformacion-terreno-a-scr-sensor-y-scr-ventana-de-dibujo.png)

**Mostrar imágenes en una posición:**

1. Si el modelo fotogramétrico tiene asignado una orientación \(_absoluta, afín_, ...\) transforma la _coordenada terreno_ mediante dicha orientación \(_absoluta_ o _afín_\) obteniendo lo que vamos a denominar _coordenada a enviar al sensor_. Si el modelo fotogramétrico no tiene asignada una orientación, se modifica la _coordenada a enviar al sensor_ para que coincida con la _coordenada terreno._
2. **Se transforma la coordenada obtenida en el punto anterior del sistema de referencia de coordenadas de la orientación al sistema de referencia de coordenadas del sensor**_**.**_
3. La ventana fotogramétrica utiliza la _coordenada a enviar al sensor_ para preguntarle al sensor cargado \(sensor ortofoto, cámara cónica estereoscópica, satelital, ADS,...\) por la posición donde debe mostrar las imágenes en la ventana fotogramétrica.
4. El sensor responde con las coordenadas pixel a mostrar.
5. La ventana fotogramétrica muestra las imágenes en pantalla asegurándose de que las coordenadas pixel devueltas por el sensor estén en el centro de la ventana.

**Notificar a la ventana de dibujo que el usuario ha realizado alguna acción:**

Si hay una ventana de dibujo abierta:

1. **Transformar la** _**coordenada terreno**_ **del sistema de referencia de coordenadas de la orientación al sistema de referencia de coordenadas de la ventana de dibujo.**
2. Comunicar a la ventana de dibujo que el usuario ha realizado alguna acción enviándole a la ventana de dibujo las coordenadas obtenidas en el punto anterior.

