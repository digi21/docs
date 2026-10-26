# Información
<!-- id: lot-of-points-informacion -->

**Información**, en la sección **Algoritmos básicos** de **Visualización**, consulta las nubes abiertas
y escribe sus estadísticas en **Salida**. El botón se habilita cuando hay alguna nube abierta.

El comando procesa también las nubes ocultas y las remotas. El modo de solo lectura no necesita registro
de ediciones ni índices en el archivo original. La consulta no modifica puntos ni añade eventos al historial.

## Puntos consultados

El comando recorre los puntos del nivel de detalle con las clases editadas y sin los puntos borrados.
El recuento no se limita a los puntos dibujados en pantalla.
Cuando hay puntos aislados, el procesamiento se limita a esos puntos.

La creación del nivel de detalle descarta los puntos repetidos exactos, por lo que el total puede ser menor
que el del archivo original.

## Salida

El comando escribe un bloque por nube después de completar `process_tiles`.
Una nube sin puntos también tiene bloque, con el nombre, la ruta y el recuento 0.

| Línea | Contenido |
|---|---|
| `Nube i de n: nombre` | Posición de la nube entre las consultadas y nombre del panel **Capas**. |
| `Ruta:` | Ruta original o dirección de la nube remota. |
| `Puntos:` | Número de puntos consultados. |
| `X:`, `Y:` | Mínimo y máximo de cada coordenada. |
| `Z:` | Mínimo, máximo y media de las cotas. |
| `Intensidad:` | Intensidad mínima, máxima y media. |
| `Puntos con RGB distinto de 0 0 0:` | Recuento y porcentaje de puntos con algún componente rojo, verde o azul (RGB) distinto de 0. |
| `Retorno r:` | Recuento y porcentaje por retorno. El retorno 0 se indica como «sin dato». |
| `Superficie ocupada:` | Superficie de las celdas ocupadas y densidad media. |
| `Clase c - nombre:` | Recuento y porcentaje de cada clase, con el nombre actual del panel **Clasificaciones**. |

Las líneas de retornos y clases aparecen únicamente para los valores con puntos.
Si una clase no tiene nombre, el comando escribe `Clase c:`.
El punto negro, con los tres componentes de color a 0, no cuenta entre los puntos con color distinto de cero.

El comando usa tres decimales para coordenadas y cotas, uno para intensidad media y dos para superficies,
densidades y porcentajes. El comando escribe textos y separadores numéricos en español para el idioma
`es` y en inglés para los demás idiomas. El comando no añade el antiguo resumen general de puntos modificados.

## Superficie y parámetros

El comando divide cada núcleo en celdas cuadradas y suma la superficie de las que contienen algún punto.
Las celdas comienzan en la esquina del núcleo y no invaden el núcleo vecino.
Las celdas del borde pueden tener un lado menor que el configurado.
La densidad media divide el número de puntos entre la superficie ocupada.

| Parámetro | Unidad | Predeterminado | Rango, con ambos extremos incluidos |
|---|---|---|---|
| Lado de la celda de la superficie | Unidades de la nube | 1 | 0,1–100 |

Abre **Configuración** y selecciona **Algoritmos básicos** para ajustar el parámetro del grupo **Información**.
La salida expresa las superficies en unidades de la nube al cuadrado y las densidades en puntos por unidad
al cuadrado.

| Característica | Valor |
|---|---|
| Lado del núcleo | 1000 unidades de la nube. |
| Solape | 0. |
| Teselas simultáneas | No. |
| Atributos adicionales requeridos | Ninguno. |
| Modo | Solo lectura. |

El identificador es `lop.example.information`.
El código `Sdk/example/information.c` prepara el estado en `run`, acumula los datos en la función
de cada tesela y escribe los bloques cuando `process_tiles` devuelve `LOP_OK`.
