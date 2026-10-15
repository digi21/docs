# EGM08_REDNAP pasa a Alicante height y Tenerife height
<!-- id: egm08-rednap-sustituido-por-alicante-height -->

Digi3D.AI sustituye automáticamente los dos sistemas verticales EGM08_REDNAP por los sistemas oficiales de EPSG
que representan las mismas alturas:

| Sistema anterior | Código anterior | Sistema nuevo | Código EPSG |
| :--- | :--- | :--- | :--- |
| EGM08_REDNAP Península | 69036406 | Alicante height | 5782 |
| EGM08_REDNAP Canarias | 69036407 | Tenerife height | 9398 |

Por ejemplo, un archivo cuyo sistema de referencia era _ETRS89 / UTM zone 30N + EGM08\_REDNAP Península_ se abre
ahora como _ETRS89 / UTM zone 30N + Alicante height_.

## Por qué cambia

Los sistemas EGM08_REDNAP no forman parte de la base de datos EPSG. Digi21 los añadió a la base de datos que
distribuía Digi3D.NET con dos códigos propios, 69036406 y 69036407, para poder usar el modelo de geoide
EGM08-REDNAP del Instituto Geográfico Nacional.

EPSG publica ahora sistemas oficiales que usan ese mismo modelo de geoide:

- **Alicante height** (EPSG 5782), con la operación EPSG 9410, para la Península.
- Un sistema por isla para Canarias, del 9395 al 9401, con las operaciones 9415 a 9421.

Digi3D.AI usa ahora la base de datos EPSG 12.057, que contiene esos sistemas oficiales y no contiene los dos
códigos propios.

## Las alturas no cambian

Los sistemas nuevos usan los mismos archivos de rejilla que los anteriores, `EGM08_REDNAP.txt` para la Península
y `EGM08_REDNAP_Canarias.txt` para Canarias, en la carpeta `C:\ProgramData\Digi3D.NET\OpenGis`. Las alturas
ortométricas y las elipsoidales que calcula Digi3D.AI son las mismas que calculaba Digi3D.NET.

Por ejemplo, en el punto de latitud 40° y longitud −3°, una altura ortométrica de 100 m en _Alicante height_ se
convierte en una altura elipsoidal de 151,850 m en ETRS89. La diferencia, 51,850 m, es el valor de la rejilla
`EGM08_REDNAP.txt` en ese punto.

## Qué vas a ver

- **Al abrir un archivo**, un proyecto o un archivo de puntos de apoyo que usaba EGM08_REDNAP, Digi3D.AI muestra el
  sistema nuevo. No hay que hacer nada: la sustitución se hace al leer el sistema de referencia, tanto si el
  archivo guarda el código (69036406 o 69036407) como si guarda solo el nombre.
- **Al guardar** ese archivo, Digi3D.AI escribe el sistema nuevo, con su código EPSG.
- **En el cuadro de selección de sistemas de referencia**, EGM08_REDNAP ya no aparece en la lista de sistemas
  verticales. Selecciona _Alicante height_ para la Península, o el sistema de la isla para Canarias.
- **En las transformaciones memorizadas**, Digi3D.AI guarda la transformación elegida para cada par de sistemas
  por el nombre de los sistemas. Para los pares en los que aparecía EGM08_REDNAP, Digi3D.AI puede volver a mostrar
  una vez el cuadro de selección de transformación. Marca de nuevo la casilla para que Digi3D.AI la recuerde.

## Canarias

EPSG define un sistema vertical por isla, pero los siete usan la misma rejilla, `EGM08_REDNAP_Canarias.txt`.
EGM08_REDNAP Canarias se sustituye siempre por **Tenerife height** (EPSG 9398), sea cual sea la isla del trabajo.
Las alturas son las mismas con cualquiera de los siete sistemas; solo cambia el nombre.

Si quieres que el archivo indique el sistema de la isla del trabajo, selecciónalo en el cuadro de selección de
sistemas de referencia:

| Isla | Sistema vertical | Código EPSG |
| :--- | :--- | :--- |
| Lanzarote | Lanzarote height | 9395 |
| Fuerteventura | Fuerteventura height | 9396 |
| Gran Canaria | Gran Canaria height | 9397 |
| Tenerife | Tenerife height | 9398 |
| La Gomera | La Gomera height | 9399 |
| La Palma | La Palma height | 9400 |
| El Hierro | El Hierro height | 9401 |

## Archivos abiertos con Digi3D.NET

Digi3D.NET ya incluía _Alicante height_ y los sistemas de las islas, con sus operaciones de geoide. Un archivo
guardado con Digi3D.AI se abre con Digi3D.NET con el mismo sistema de referencia.
