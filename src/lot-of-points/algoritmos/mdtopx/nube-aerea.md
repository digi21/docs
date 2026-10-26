# Nube aérea
<!-- id: lot-of-points-nube-aerea -->

**Nube aérea**, en la sección **MDTopX** de **Clasificación de puntos**, clasifica los puntos de un vuelo
LiDAR en suelo, vegetación y edificios mediante la Superficie Mágica de MDTopX.
El comando aplica a cada tesela la secuencia de la orden `/MAGIC` y entrega las clases resultantes
a Lot Of Points mediante `process_tiles`.

## Requisitos de la nube

El botón requiere alguna nube con registro de ediciones e índices del archivo original.
El comando elige las nubes abiertas que cumplen esas dos condiciones y conservan el tiempo del sistema
de posicionamiento global (GPS) y el identificador de pasada (`point_source_id`).
El comando incluye las nubes ocultas que cumplen los requisitos y escribe en **Salida** el nombre de cada nube omitida.

El cálculo agrupa los puntos por identificador de pasada y recibe los puntos de cada pasada ordenados por tiempo GPS.
El cálculo representa las coordenadas en centímetros mediante enteros de 32 bits.
Si alguna coordenada de una tesela no supera la comprobación de rango, el cálculo devuelve un fallo
y escribe el motivo en **Salida**.

## Parámetros

Abre **Configuración** y selecciona **MDTopX**. Los ajustes se organizan en los grupos
**Nube aérea: General**, **Nube aérea: Alturas**, **Nube aérea: Edificaciones**, **Nube aérea: Puntos**
y **Nube aérea: Códigos LiDAR**.

La **Distancia máxima entre puntos** es el mayor hueco entre puntos de suelo y sirve de base para las demás
distancias del cálculo. Con **Desclasificar primero** activado, el cálculo parte de la clase 1;
desactivado, el cálculo parte de las clases existentes. Esta opción se añade en Lot Of Points.
Las unidades de la tabla son las que declara la DLL para los parámetros.

| Grupo | Parámetro | Unidad | Predeterminado | Rango declarado, con ambos extremos incluidos | Tipo |
|---|---|---|---|---|---|
| General | Distancia máxima entre puntos | m | 3 | 0,5 – 50 | Real |
| General | Desclasificar primero | | No | Sí / No | Booleano |
| Alturas | Altura mínima para punto aéreo | m | 50 | 0 – 1000 | Real |
| Alturas | Altura mínima para edificación | m | 4 | 0 – 100 | Real |
| Alturas | Altura máxima para vegetación | m | 15 | 0 – 1000 | Real |
| Alturas | Altura mínima para vegetación alta | m | 3 | 0 – 100 | Real |
| Alturas | Altura mínima para vegetación media | m | 2 | 0 – 100 | Real |
| Alturas | Altura mínima para vegetación baja | m | 1 | 0,01 – 100 | Real |
| Edificaciones | Mínima área para edificaciones | m² | 30 | 0 – 1.000.000 | Real |
| Edificaciones | Máxima pendiente para edificaciones | ° | 30 | 0 – 90 | Real |
| Puntos | Precisión en cota de los puntos | m | 0,2 | 0,01 – 10 | Real |
| Puntos | Nivel de búsqueda de puntos | % | 1 | 1 – 10 | Entero |
| Códigos LiDAR | Hundidos | | 7 | 0 – 255 | Entero |
| Códigos LiDAR | Paredes | | 12 | 0 – 255 | Entero |
| Códigos LiDAR | Aéreos | | 13 | 0 – 255 | Entero |
| Códigos LiDAR | Otros | | 90 | 0 – 255 | Entero |
| Códigos LiDAR | Puentes | | 250 | 0 – 255 | Entero |

Los **Códigos LiDAR** configuran las clases de esos tipos de punto. La fase `SoloSuelo` utiliza el código
de puentes y asigna la clase 2 al suelo.

## Características del procesamiento

| Característica | Valor |
|---|---|
| Lado del núcleo | 1000 unidades de la nube. |
| Ancho del solape | 100 unidades de la nube. |
| Teselas simultáneas | Sí. |
| Estimación de memoria máxima por punto | 600 bytes. |
| Atributos adicionales requeridos | Tiempo GPS e identificador de pasada. |
| Orden de los puntos | Por identificador de pasada y, dentro de cada pasada, por tiempo GPS. |

El identificador del comando es `mdtopx.magic_surface`.
El cálculo ejecuta `SoloSuelo` y `SuperficieMagica`. `SoloSuelo` puede realizar una segunda pasada
con una distancia de búsqueda de 25 m. Si `SuperficieMagica` devuelve `Ok`, `SinPuntos` o `ErrorDatos`,
el cálculo ejecuta `BuscaPicosIterado`, salvo que se haya solicitado la cancelación.

Si `SuperficieMagica` devuelve `Incompleto`, el cálculo conserva las clases obtenidas en los pasos anteriores
y omite `BuscaPicosIterado`. Ese resultado corresponde a `SuperficiesPlanas`, una función de MDTopX
que esta DLL no incluye.

## Mensajes

El comando escribe en **Salida** estos mensajes de selección de nubes y resumen cuando el idioma es `es`.
La DLL utiliza los textos equivalentes en inglés para los demás idiomas.

| Mensaje | Significado |
|---|---|
| `Nube aérea: se omite la nube a la que le falta al menos uno de estos datos: registro de ediciones, índices de punto, tiempo GPS o fuente de punto: nombre` | La nube indicada carece de alguno de los requisitos del comando. |
| `Nube aérea: no hay ninguna nube que se pueda clasificar.` | Ninguna nube abierta cumple todos los requisitos; el comando termina sin llamar a `process_tiles`. |
| `Nube aérea: n puntos cambian de clase en k nubes.` | `process_tiles` ha devuelto `LOP_OK`; el resumen indica los puntos reclasificados y las nubes modificadas. |

Los mensajes del cálculo de las teselas se escriben en inglés con cualquier idioma.
En los mensajes siguientes, *N* es el número de tesela, contado desde 1.

| Mensaje | Significado |
|---|---|
| `magic_surface: tile N: SuperficieMagica stopped at SuperficiesPlanas, which the port does not have (Incompleto); the tile keeps the classes of the steps before it, without E4` | La tesela conserva las clases de los pasos anteriores y no ejecuta `BuscaPicosIterado`. |
| `magic_surface: tile N: a coordinate does not fit in centimetres as a 32-bit integer` | Una coordenada no supera la comprobación de rango. El cálculo devuelve `LOP_FAILED`. |
| `magic_surface: tile N: K points have no matching classification result and keep their original class` | El cálculo no encuentra un resultado de clasificación para *K* puntos, que conservan la clase original. |
| `magic_surface: tile N: SuperficieMagica answered R` | `SuperficieMagica` devuelve el código numérico *R*, distinto de `Incompleto`, `Ok`, `SinPuntos` y `ErrorDatos`. |
| `magic_surface: texto del error` | El cálculo captura una excepción estándar, escribe el texto de la excepción y devuelve `LOP_FAILED`. |
| `magic_surface: unknown error` | El cálculo captura otra excepción y devuelve `LOP_FAILED`. |
