# Solo Suelo
<!-- id: solo-suelo -->

[Ficha de herramientas Clasificar LiDAR](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Esta herramienta está destina a la búsqueda rápida de puntos pertenecientes al suelo. Sólo clasificaría puntos encontrados bajo esta condición con el tipo "2".

![Cuadro de diálogo Solo Suelo](../../../images/image-170.png)

El cuadro de diálogo únicamente solicita los siguientes parámetros:

* **Actuar sólo en la selección actual**: Se podrá activar esta opción para calcular sólo en los puntos que actualmente se tengan seleccionados.
* **Distancia máxima entre puntos**: Distancia máxima para considerar que los puntos están situados en la misma vertical. No conviene dar un valor muy alto. Se recomienda dar un valor cercano a la precisión planimétrica que pueda tener el LiDAR. Al contrario que en el resto de herramientas, este valor no se corresponde con la densidad de puntos tomados.
* **Tolerancia en cota**: para considerar puntos pertenecientes a la misma superficie.
* **Primera distancia de búsqueda**: Es un parámetro opcional. Indicaría cómo de denso sería el primer MDT para buscar suelo. No es aconsejable poner un valor muy pequeño si existen edificaciones con cubierta plana y de grandes dimensiones.
* **Conservar los puntos de suelo actuales**: Activar si se desean conservar los puntos previamente clasificados como suelo.

## Nubes muy densas (escáner terrestre o móvil)

Con una nube muy densa, en la que más de la mitad de sus puntos están en zonas con más de 500 puntos/m², y sin selección, la herramienta trabaja como [Superficie mágica](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/#nubes-muy-densas-escáner-terrestre):

* Busca el suelo en una muestra de la nube, con un punto por cubo de 10 cm. Si la clase del punto de un cubo cambia, los demás puntos del cubo toman la clase nueva; si no cambia, conservan la suya.
* Tras la búsqueda, los puntos sin clasificar y los de vegetación baja y media que quedan a menos de **Tolerancia en cota** por encima del suelo encontrado, o hasta 1 m por debajo, pasan a suelo, y la herramienta repite esta búsqueda con el suelo nuevo mientras pase a suelo más del 1 % de los puntos.
* Un punto no es suelo si tiene debajo, en su columna de 10 cm, al menos 3 puntos a más de 0,3 m por debajo: el tronco de un árbol no es suelo. Esos puntos pasan a sin clasificar (0).

Donde el escáner no ve el terreno, por ejemplo bajo las copas densas, no hay suelo que clasificar.

Vea también:

* [Buscar puntos elevados](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-elevados.md)
* [Buscar puntos aislados](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aislados.md)
* [Buscar puntos aéreos](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aereos.md)
* [Buscar puntos hundidos](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-hundidos.md)
* [Buscar puntos en Superficies Planas](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-superficies-planas.md)
* [Buscar puntos en Paredes](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-paredes.md)
* [Superficie mágica](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/)
* [Buscar puntos vecinos](buscar-vecinos.md)
* [Buscar puntos según infrarrojo](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-infrarrojo.md)
* [Buscar huecos](/mdtopx/modulo-laser/buscar-puntos/buscar-huecos.md)
* [Buscar puntos según Área de superficie](buscar-puntos-segun-area.md)
* [Buscar puntos según planos de usuario](../formas-geometricas/buscar-puntos-sobre-planos.md)
