# Buscar geometría
<!-- id: buscar-geometria -->

[Ficha de herramientas Trazado](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-trazado.md)

Calcula la geometría de un trazado definido por una secuencia de puntos: rectas, clotoides y curvas circulares en planta y, si se pide, rasantes y acuerdos parabólicos en alzado. Usa el mismo ajuste que [Ajustar geometría de eje](/mdtopx/modulo-mms/ffcc/ajustar-geometria-de-eje.md).

## Cómo se usa

Con un archivo .VIA abierto, en la cinta **Trazado** pulse **Buscar geometría** y pique el trazado. Salen dos cuadros de diálogo, uno detrás de otro:

1. **Ajustar geometría de eje**, solo con los campos de la planta: tipo de vía, radios mínimo y máximo, giro mínimo, desarrollo mínimo de la curva e informe de resultados. Son los mismos que en [Ajustar geometría de eje](/mdtopx/modulo-mms/ffcc/ajustar-geometria-de-eje.md#el-cuadro-de-diálogo).
2. **Ajustar alzado**, con la casilla **Ajustar también el alzado**. Sin marcar, solo se ajusta la planta. Marcada, se ajusta además la rasante, como en [Ajustar alzado](../alzado/ajustar-alzado.md): a partir de la rasante del vial o de su terreno, y con sus límites.

Al acabar, el programa muestra la [definición del trazado](informacion-del-trazado.md) calculado. Si se acepta, sustituye al trazado del vial.

## Qué hace

* **Planta**: los puntos del trazado son las medidas. Un trazado con pocos vértices separados se parte para que no haya más de un metro entre puntos. El ajuste busca el número de alineaciones que mejor explica los puntos, con curvas compuestas y giros de más de 120° (horquillas) repartidos en varias curvas. El trazado nuevo llega hasta los extremos del de partida. Si el ajuste deja sin cubrir hasta 20 m en un extremo, el resumen lo dice.
* **Radios pequeños**: con un radio mínimo por debajo de 50 m, el ajuste se hace también con una escala más fina, proporcional al radio mínimo, y se queda el que menos se aparta de los puntos. Así se ajustan las carreteras de montaña, con radios de 30 m.
* **PK**: los alzados, las secciones tipo y los peraltes del vial van por PK y se quedan en su sitio en planta.
* **Un ajuste que no es la geometría del trazado no se escribe**: si se aparta más de 1 m (error medio cuadrático) de los puntos, el trazado no cambia y la ventana de información dice por qué. Pasa, por ejemplo, con una poligonal con quiebros vivos y un radio mínimo muy pequeño. En ese caso, pruebe con un radio o un desarrollo mínimo mayores.

## Qué genera

* **El trazado nuevo** del vial.
* **La rasante nueva**, si se ha marcado **Ajustar también el alzado**. Si la rasante no se puede ajustar, la planta se queda igual y se avisa.
* **El informe del trazado** (opcional): una página HTML junto al .VIA, *&lt;archivo&gt; informe del trazado.html*, con la planta y, si se ha pedido, el alzado. Se abre en el navegador al acabar. Ver [Informe del trazado](/mdtopx/modulo-mms/ffcc/informe-del-trazado.md).
* **Un resumen** en la ventana de información: el número de curvas (cuántas con clotoide), el error medio cuadrático y el residuo máximo, lo que no se ha cubierto en cada extremo y, con el alzado, lo que ha salido de la rasante.

## Otras herramientas con el mismo ajuste

Las herramientas que sacan transversales de un eje medido (líneas de vial y de raíles, en las nubes y en los proyectos) calculan la geometría de ese eje con este mismo ajuste. En ellas el trazado llega siempre a los dos extremos del eje y cada punto conserva su PK. Si el eje no se puede ajustar, se sigue con él tal cual, como una poligonal.
