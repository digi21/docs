# Extraer líneas de ruptura
<!-- id: linea-de-comando-extraer-lineas-de-ruptura -->

[Extraer líneas de ruptura](/mdtopx/modulo-virtualand/extraer-lineas-de-ruptura.md)

Para ejecutar esta herramienta desde la línea de comando, escribe:

```bash
MDTopX [archivo de entrada] /RUP [archivo de salida]
```

El archivo de entrada es un archivo DEM (modelo digital de elevaciones en rejilla, extensión DEM) que esté suavizado con la herramienta [Suavizado](/mdtopx/modulo-virtualand/suavizado.md) de la interfaz. MDTopX calcula las vaguadas, las divisorias y los puntos de interés del terreno a partir de la curvatura del modelo. Con un DEM sin suavizar o con un DEM de celda variable, MDTopX no calcula nada y no crea el archivo de salida. Con un archivo de triangulación (extensión MDT), la orden no tiene efecto.

El archivo de salida contiene las líneas de ruptura y los puntos de interés calculados. MDTopX lo guarda en formato BIN (DIGI) y no selecciona el formato por la extensión del nombre.

Licencia: la herramienta requiere la licencia de MDTopX; sin ella, MDTopX termina sin ejecutar la orden. MDTopX necesita además el módulo VirtuaLand para guardar el archivo de salida. Sin ese módulo, MDTopX calcula las líneas de ruptura, pero no crea el archivo de salida.

Para configurar el cálculo, añade a MDTopX.ini la sección **\[LineasRuptura]** con las claves siguientes. Si una clave no existe o está vacía, MDTopX usa el valor guardado en la configuración del usuario (el último que se usó en el cuadro de diálogo de la interfaz de MDTopX) o, si no hay ninguno guardado, el valor predeterminado indicado:

* **Escala**: denominador de la escala del resultado, un número entero. MDTopX lo usa para calcular el paso de muestreo dentro de cada celda del DEM: la escala multiplicada por 0,00004 metros, limitado a entre 1/100 y 1/10 del tamaño de la celda. Valor predeterminado: 1000.
* **TolLineal**: tolerancia de generalización lineal en metros. Valor predeterminado: 0,04. MDTopX no la recalcula cuando cambias Escala en el archivo.
* **TolSuperficial**: tolerancia de generalización superficial en metros cuadrados. Valor predeterminado: 0,2. MDTopX no la recalcula cuando cambias Escala en el archivo.
* **CurvaturaMinima**: valor absoluto de la curvatura por debajo del cual un elemento no se considera línea de ruptura. Valor predeterminado: 0.
* **DistanciaMinima**: longitud mínima en metros de una línea de ruptura. MDTopX borra las líneas más cortas. Valor predeterminado: 0.
* **CodigoVaguadas**: código en el que MDTopX registra las líneas de vaguada. Valor predeterminado: A0.
* **CodigoDivisorias**: código en el que MDTopX registra las líneas divisorias. Valor predeterminado: R0.
* **CodigoCumbres**: código en el que MDTopX registra los puntos de cumbre. Valor predeterminado: R0.
* **CodigoFondos**: código en el que MDTopX registra los puntos de fondo. Valor predeterminado: A0.
* **CodigoCollados**: código en el que MDTopX registra los puntos de collado. Valor predeterminado: V0.
* **IncluirPuntos**: 0 (sin textos de cota) o 1 (añade un texto con la cota junto a cada punto de interés). Valor predeterminado: 1.
* **AlturaCota**: altura en metros del texto con la cota. Con el valor 0, MDTopX no añade textos aunque IncluirPuntos valga 1. Valor predeterminado: 1.
* **DxCota**: desplazamiento horizontal en metros del texto respecto al punto. Valor predeterminado: 0,5.
* **DyCota**: desplazamiento vertical en metros del texto respecto al punto. Valor predeterminado: 0,5.
* **IncrX**, **IncrY** y **CambiarAutoTol**: MDTopX lee estas claves, pero el cálculo de las líneas de ruptura no las usa. Valores predeterminados: 1, 1 y 1.

```ini
[LineasRuptura]
Escala = 1000
TolLineal = 0.04
TolSuperficial = 0.2
CurvaturaMinima = 0.001
DistanciaMinima = 5
CodigoVaguadas = A0
CodigoDivisorias = R0
CodigoCumbres = R0
CodigoFondos = A0
CodigoCollados = V0
IncluirPuntos = 1
AlturaCota = 1
DxCota = 0.5
DyCota = 0.5
```

MDTopX no distingue entre mayúsculas y minúsculas en los nombres de sección y de clave.

Vea también:

* [Introducción a la línea de comandos](./)
* [Curvado](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md)
