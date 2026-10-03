# Tentativo inserta un vértice en la línea seleccionada

Indica cuándo un tentativo inserta un vértice en la línea seleccionada. Solo tiene efecto si la variable [TENTATIVO\_INSERTA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-inserta.md) está activada.

## Valores posibles

* **Siempre que se confirme una selección**. El vértice se inserta al confirmar el tentativo, con independencia de la orden en ejecución.
* **Sólo al registrar líneas** \(valor por defecto\). El vértice solo se inserta si no hay ninguna orden en ejecución o si la orden en ejecución es [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md).
