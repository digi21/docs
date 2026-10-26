# Órdenes

Digi3D.AI implementa todas sus funcionalidades mediante órdenes. 

Existen órdenes que se ejecutan en la ventana de dibujo y órdenes que se ejecutan en la ventana fotogramétrica.

La mayoría de las órdenes tienen asignada una opción que las ejecuta en el menú del programa y en las barras de herramientas, pero hay algunas que no están pensadas para tener una opción en el menú y se tienen que ejecutar forzosamente desde la línea de comandos o al pulsar una tecla \(a la que hayas asignado la orden\) o desde una macroinstrucción.

## Ejecutar una orden desde la línea de comandos

Pulsa **Enter** para ejecutar una orden desde la línea de comandos. El programa mostrará en la barra de mensajes un campo de texto para introducir el nombre de la orden que quieres ejecutar.

![Barra de mensajes de Digi3D.AI solicitando introducir una orden](../../images/barramensajessolicitandoorden.png)

Introduce el nombre de la orden y pulsa **Enter** para ejecutarla:

```text
ZOOME
```

Algunas órdenes admiten parámetros. Para pasar parámetros a una orden, escribe el nombre de la orden, un signo igual \(=\) y los parámetros separados por espacios:

```text
MODOB=2 4 7
```

Algunas órdenes requieren que pases un texto como parámetro. Si el texto tiene espacios, introdúcelo entre comillas, como en este ejemplo:

```text
EXPORTAR="c:\mis trabajos\2021001\prueba.bin"
```

### Nombre interno de la orden

Digi3D.AI se puede ejecutar en castellano y en inglés. 

Los nombres de las órdenes varían en función de si el programa se está mostrando en castellano o en inglés.

Esto es así porque las órdenes tienen un nombre interno, y el programa dispone de un archivo de _alias_ que hace corresponder el nombre en un determinado idioma con el nombre interno.

Por ejemplo: la orden de tipo variable real [AA](ventana-de-dibujo/variables/a/aa.md) tiene como nombre interno el siguiente: {55EDDC5E-2B30-4bd0-B4FF-1BD954EF937C}.

Digi3D.AI admite que introduzcas el nombre interno de una orden en lugar de su nombre en un idioma. Ejecuta la siguiente orden para asignar como ángulo activo el valor 27 grados sexagesimales:

```text
{55EDDC5E-2B30-4bd0-B4FF-1BD954EF937C}=27
```

El nombre interno permite asignar una orden a una pulsación de tecla y ejecutarla independientemente del idioma configurado en el programa.

