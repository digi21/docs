---
description: Cuadro de diálogo Conflicto con el plano de comparación
---

# Conflicto con el plano de comparación

En el proceso de cálculo de los perfiles, longitudinales y transversales, el programa puede detectar que alguno de los perfiles tiene algún con cota inferior a la cota del plano de comparación. Esto puede ocurrir porque se ha seleccionado una cota absoluta para el plano de comparación, y ésta resulta demasiado grande para que todos los perfiles se encuentren por encima de este plano.

Por el ello, el programa muestra un cuadro de diálogo donde pide al usuario que resuelva este conflicto si así lo desea. En este cuadro se muestra la cota mínima encontrada en los perfiles y la configuración del plano de comparación, teniendo la posibilidad de cambiarla.

Si se elige la opción **Absoluta**, el programa colocará el plano a la cota indicada en el campo Valor de la altura . Si se elige la opción **Relativo a cada perfil**, el programa calculará la altitud del plano restando a la cota más baja de cada perfil la cantidad expresada en el campo **Valor de la altura**. Si se elige la opción **Relativo a todos los perfiles**, el programa calculará la altitud del plano restando a la cota más baja de todos los perfiles la cantidad expresada en el campo **Valor de la altura**.

