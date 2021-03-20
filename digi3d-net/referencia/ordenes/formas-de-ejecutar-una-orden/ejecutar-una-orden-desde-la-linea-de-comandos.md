# Ejecutar una orden desde la línea de comandos

Para ejecutar una orden desde la línea de comandos, tan solo tendremos que pulsar **Enter** y el programa nos mostrará en la barra de mensajes una ventana para introducir el nombre de la orden a ejecutar.

![Barra de mensajes de Digi3D.NET solicitando introducir una orden](../../../../.gitbook/assets/barramensajessolicitandoorden.png)

Introduciremos el nombre de la orden y pulsaremos **Enter** para que esta se ejecute:

```text
ZOOME
```

Algunas órdenes admiten parámetros. Para pasar parámetros a dichas órdenes lo haremos poniendo el nombre de la orden, un signo de igual \(=\) y los parámetros separados por espacios:

```text
MODOB=2 4 7
```

Algunas órdenes requieren que les pasemos como parámetro un texto. Si el texto tiene espacios, tendremos que introducir el texto entre comillas como, por ejemplo:

```text
EXPORTAR="c:\mis trabajos\2021001\prueba.bin"
```

### Nombre interno de la orden

Digi3D.NET se puede ejecutar en Castellano y en inglés. 

Los nombres de las órdenes varían en función de si el programa se está mostrando en castellano o en inglés.

Esto es así porque las órdenes tienen un nombre interno, y el programa dispone de un archivo de _alias_ que hace corresponder el nombre en un determinado idioma con el nombre interno.

Por ejemplo: la orden de tipo variable real [AA ](../../ventana-de-dibujo/variables/a/aa.md)\(ángulo activo\) tiene como nombre interno el siguiente: {55EDDC5E-2B30-4bd0-B4FF-1BD954EF937C}.

Digi3D.NET admite que introduzcamos como nombre de una orden el nombre de orden interno, de manera que, si queremos asignar como ángulo activo el valor 27, podemos ejecutar el siguiente comando:

```text
{55EDDC5E-2B30-4bd0-B4FF-1BD954EF937C}=27
```

Esto nos puede servir por ejemplo para asignar una orden a una pulsación de tecla y que ésta funcione independientemente del idioma configurado en el programa.

