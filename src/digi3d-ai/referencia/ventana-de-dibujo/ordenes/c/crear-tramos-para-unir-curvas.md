# CREAR\_TRAMOS\_PARA\_UNIR\_CURVAS
<!-- id: crear-tramos-para-unir-curvas-2 -->

Crea líneas de dos vértices que unen los extremos próximos de curvas de nivel del mismo nivel que no están unidas.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código de las curvas de nivel | Código. La orden compara el primer código de cada geometría | No |
| 2 | Distancia máxima en planta entre los extremos que se unen | Número. Admite la coma o el punto como separador decimal | No |

Por ejemplo, `CREAR_TRAMOS_PARA_UNIR_CURVAS=020123 10` une las curvas con código `020123` cuyos extremos están a menos de 10 unidades.

## Observaciones

La orden compara cada par de geometrías no borradas cuyo primer código es el indicado. Descarta el par si la Z del primer vértice de las dos geometrías es distinta o si algún extremo de una geometría coincide con algún extremo de la otra. Si no lo descarta, prueba las combinaciones de extremos en este orden: origen-origen, origen-fin, fin-origen y fin-fin. Con la primera combinación cuyos extremos están a menos de la distancia indicada, crea una línea de dos vértices que une esos extremos, con los códigos de la primera geometría.

La distancia se calcula con la calculadora geográfica de la ventana de dibujo.

Al terminar, si la orden ha creado algún tramo, muestra un globo con el número de tramos y emite el sonido de fin. Si no ha creado ninguno, muestra el globo «No se ha añadido nada» y emite el sonido de error.

Si el número de parámetros no es dos o la distancia no es un número, la orden emite el sonido de error y muestra un cuadro con el motivo y la forma de uso.

La orden es el guion de Python `crear_tramos_para_unir_curvas.py` del repositorio [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI lo instala en la carpeta `OrdenesPython` de su carpeta de instalación. Para modificar la orden, copia el archivo en el [directorio de macroinstrucciones](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) y edita la copia: Digi3D.AI ejecuta la copia en lugar del archivo instalado.

La página [Unir curvas de nivel cercanas](/digi3d-ai/programacion/python/panel-de-python/ejemplos/crear-tramos-para-unir-curvas.md) explica el código.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | crear\_tramos\_para\_unir\_curvas.py |
| Implementación | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Código fuente | [crear\_tramos\_para\_unir\_curvas.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/crear_tramos_para_unir_curvas.py) |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
