# Reiniciar las variables al abrir un archivo de dibujo
<!-- id: reiniciar-variables-al-abrir-dibujo -->

Indica si abrir o crear un archivo de dibujo devuelve las variables de la ventana de dibujo a su valor inicial.

Las variables son comunes a todos los archivos de dibujo abiertos, así que el cambio afecta también a los que ya estaban abiertos.

## Valores posibles

* **Sí** \(valor por defecto\). Al abrir o crear un archivo de dibujo, las variables vuelven a su valor inicial: [PITA](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/pita.md), [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md), AUTO, AUTO\_RATON, AUTOMODOB, IR\_TENTATIVO, PATRONS, FIJA\_Z, FIJA\_XY, Z, los FORZAR\_\*, VER\_MDT, GROSOR, GROSORS, DISTMAX y COD\_COTAS.
* **No**. Las variables conservan su valor actual. Solo toman el valor inicial al abrir el primer archivo de dibujo.

La escala, [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md), [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md), [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) y [EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) no dependen de esta opción: toman siempre los valores indicados al abrir el archivo de dibujo.
