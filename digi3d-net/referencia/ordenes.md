# Órdenes

Digi3D.NET implementa todas sus funcionalidades mediante órdenes. 

Existen órdenes que se ejecutan en la ventana de dibujo y órdenes que se ejecutan en la ventana fotogramétrica.

La mayoría de las órdenes tienen asignada una opción que las ejecuta en el menú del programa y en las barras de herramientas, pero hay algunas que no están pensadas para tener una opción en el menú y se tienen que ejecutar forzosamente desde la línea de comandos o al pulsar una tecla \(en la que hemos asignado dicha orden\) o desde una macroinstrucción.

Para ejecutar una orden desde la línea de comandos, tan solo tendremos que pulsar **Enter** y el programa nos mostrará en la barra de mensajes una ventana para introducir el nombre de la orden a ejecutar.

![Barra de mensajes de Digi3D.NET solicitando introducir una orden](../../.gitbook/assets/barramensajessolicitandoorden.png)

Introduciremos el nombre de la orden y pulsaremos **Enter** para que esta se ejecute:

```text
zoome
```

Algunas órdenes admiten parámetros. Para pasar parámetros a dichas órdenes lo haremos poniendo el nombre de la orden, un signo de igual \(=\) y los parámetros separados por espacios:

```text
modob=2 4 7
```

Algunas órdenes requieren que les pasemos como parámetro un texto. Si el texto tiene espacios, tendremos que introducir el texto entre comillas como, por ejemplo:

```text
EXPORTAR="c:\mis trabajos\2021001\prueba.bin"
```

