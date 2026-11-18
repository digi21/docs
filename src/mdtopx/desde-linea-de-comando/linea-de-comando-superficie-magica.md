# Superficie mágica
<!-- id: linea-de-comando-superficie-magica -->

[Superficie mágica](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/)

Esta herramienta clasifica automáticamente los puntos de una nube LiDAR (detección y medición por luz láser): suelo, vegetación, edificación y el resto de clases que describe la página de la interfaz. Para ejecutarla desde la línea de comando, escribe:

```bash
MDTopX [archivo de entrada] /MAGIC
```

## Archivos

La herramienta no tiene archivo de salida. MDTopX toma como archivo de entrada la primera cadena de la línea de comando que no es una opción (una opción empieza por `/` o `-`); esa cadena puede estar antes o después de `/MAGIC`.

* **Archivo de nube de puntos**: MDTopX clasifica los puntos de la nube y guarda el resultado en el mismo archivo. Si la nube tiene objetos, MDTopX los guarda en el archivo con extensión OBJ que está junto a la nube.
* **Proyecto**: MDTopX clasifica, uno a uno, los archivos de nube de puntos del proyecto y guarda cada archivo clasificado. Al clasificar un archivo, MDTopX usa también los puntos de los archivos vecinos que están cerca de su borde y no guarda esos puntos en el archivo. MDTopX guarda los objetos de cada nube en un archivo OBJ situado en la misma carpeta que el archivo de la nube.

Haz una copia de los archivos de entrada si necesitas conservar la clasificación original.

## Licencia

La herramienta exige la licencia del módulo MDTopX para iniciarse. Para guardar la clasificación, exige además la licencia del módulo Láser. Sin la licencia del módulo Láser, MDTopX calcula la clasificación pero no guarda ningún archivo.

## Configuración

MDTopX lee la sección **\[LineaVuelo]** del archivo MDTopX.ini. Otras herramientas de nubes de puntos de MDTopX usan la misma sección. Si una clave no está en la sección, MDTopX usa el valor guardado en la configuración del usuario, que es el último que se aceptó en el cuadro de diálogo de la herramienta [Superficie mágica](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/). Si nunca se guardó ese valor, MDTopX usa el valor predeterminado que se indica en cada clave.

MDTopX no comprueba los valores que lee de MDTopX.ini. El cuadro de diálogo exige que **DistanciaMax**, **ToleranciaCota** y **AlturaVegBaja** sean mayores que 0.

Las unidades de longitud, altura y cota son metros, y la superficie se mide en metros cuadrados.

Parámetros de la clasificación:

* **DistanciaMax**: distancia máxima entre dos puntos para que sean vecinos. Valor predeterminado: 3.
* **AlturaAereos**: diferencia de cota mínima respecto al entorno para que un punto sea aéreo. 0 desactiva la comprobación. Valor predeterminado: 50.
* **AlturaEdificacion**: diferencia de cota mínima respecto al entorno para que un punto sea edificación. 0 desactiva la comprobación. Valor predeterminado: 4.
* **AlturaVegMaxima**: diferencia de cota máxima respecto al entorno para que un punto sea vegetación. Valor predeterminado: 15.
* **AlturaVegAlta**: diferencia de cota mínima respecto al entorno para que un punto sea vegetación alta. Valor predeterminado: 3.
* **AlturaVegMedia**: diferencia de cota mínima respecto al entorno para que un punto sea vegetación media. Valor predeterminado: 2.
* **AlturaVegBaja**: diferencia de cota mínima respecto al entorno para que un punto sea vegetación baja. Valor predeterminado: 1.
* **ToleranciaCota**: precisión de la cota de los puntos. Valor predeterminado: 0.2.
* **NivelBusqueda**: nivel de búsqueda de puntos, un número entero. Cuanto menor es el valor, más exhaustiva es la búsqueda. El cuadro de diálogo limita el valor a un entero entre 1 y 100. Valor predeterminado: 1.
* **Suavizar**: 1 suaviza los perfiles de la nube antes de clasificar; 0 no los suaviza. Valor predeterminado: 0.
* **OrdenarAuto**: 1 ordena los puntos con el tiempo GPS de cada punto antes de clasificar; 0 no los ordena. Valor predeterminado: 0.
* **UtilizarIntensidad**: 1 usa la intensidad de cada punto en la clasificación; 0 no la usa. Valor predeterminado: 0.
* **IntensidadMax**: intensidad máxima, entre 0 y 255, que puede tener un punto para ser vegetación. Solo se usa con **UtilizarIntensidad** = 1. Valor predeterminado: 100.
* **AreaMinEdificio**: superficie mínima, en metros cuadrados, de una zona para ser edificación. Valor predeterminado: 30.
* **PendienteMax**: pendiente máxima, en grados, de la superficie de una edificación. Valor predeterminado: 30.
* **DesnivelMaxEdificio**: desnivel máximo entre los puntos del límite de una edificación. Valor predeterminado: 0.5.
* **EsTerrestre**: 1 si el registro es terrestre; 0 si es aéreo. Valor predeterminado: 0.
* **UtilizarIR**: 1 usa el valor infrarrojo de los puntos, que deben tener falso color con la terna infrarrojo-rojo-azul; 0 no lo usa. Valor predeterminado: 0.
* **SensibilidadIR**: sensibilidad del índice NDVI (índice de vegetación de diferencia normalizada), entre 0 (poca diferencia) y 10 (mucha diferencia). Solo se usa con **UtilizarIR** = 1. Valor predeterminado: 5.
* **EsLiDAR**: 1 si la nube procede de medidas láser; 0 si procede de una multicorrelación fotogramétrica. Con un archivo, MDTopX deduce el valor de la propia nube y no usa esta clave: la nube es LiDAR si algún punto tiene tiempo GPS o intensidad, y fotogramétrica si ningún punto tiene ninguno de los dos y algún punto tiene color. MDTopX usa la clave si la nube no tiene tiempo GPS, intensidad ni color, y siempre que la entrada es un proyecto. Valor predeterminado: 1.
* **ConservarClases**: 1 conserva la clase de los puntos que ya tienen una clase distinta de 0 y 1 (sin clasificar); 0 clasifica toda la nube de nuevo. Valor predeterminado: 1.
* **TolAlineacion**: tolerancia de alineación. El cuadro de diálogo no tiene este campo. Valor predeterminado: 0.3.

MDTopX lee también las claves **InfoDetalle** y **Vectorial**, pero la línea de comando no las aplica. **Vectorial** controla en la interfaz la creación del dibujo con los vectores de los edificios al terminar; la línea de comando no crea ese dibujo.

Clases (códigos de clasificación LAS, enteros entre 0 y 255) que MDTopX asigna a cada tipo de punto:

* **TipoHundidos**: puntos muy por debajo de su entorno. Valor predeterminado: 7.
* **TipoPared**: fachadas. Valor predeterminado: 91.
* **TipoAereo**: puntos muy por encima de su entorno. Valor predeterminado: 18.
* **TipoOtros**: puntos que no son suelo, vegetación ni edificación. Valor predeterminado: 80.
* **TipoPuentes**: tableros de puente y pasarelas. Valor predeterminado: 17.
* **TipoCalzada**: calles y carreteras. Valor predeterminado: 11.
* **TipoVehiculo**: vehículos. Valor predeterminado: 82.
* **TipoCables**: conductores y cables de guarda de líneas eléctricas. Valor predeterminado: 14.
* **TipoApoyos**: torres y postes de líneas eléctricas. Valor predeterminado: 15.
* **RevisionClases**: número de revisión de las clases. MDTopX lee **TipoPared**, **TipoAereo**, **TipoOtros**, **TipoCalzada** y **TipoVehiculo** de MDTopX.ini solo si la sección contiene **RevisionClases** con el valor 1 o mayor. Si la clave no está, MDTopX conserva el valor de la configuración del usuario para esas cinco claves. Escribe `RevisionClases = 1` para que MDTopX lea esos códigos. Si la clave no está en la sección, MDTopX la interpreta como 0.
* **AlturaHundidos**: altura asociada a la clase de los puntos hundidos. Con la configuración predeterminada de MDTopX, la clasificación no la usa. Valor predeterminado: -3.

Las clases de los puntos sin clasificar (1), suelo (2), vegetación baja (3), vegetación media (4), vegetación alta (5) y edificación (6) no tienen clave en MDTopX.ini.

```ini
[LineaVuelo]
DistanciaMax = 3
AlturaEdificacion = 4
AlturaVegBaja = 1
ToleranciaCota = 0.2
EsTerrestre = 0
ConservarClases = 1
RevisionClases = 1
TipoPared = 91
```

Es indiferente que los nombres de las claves estén en mayúsculas o en minúsculas.

Vea también:

* [Introducción a la línea de comandos](./)
