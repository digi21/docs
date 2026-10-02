# TRAZA

Crea un gráfico de hojas en forma de traza con centroides para crear con posterioridad hojas con la orden [RECORTA\_TRAZA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recorta-traza.md).

![HOJA, TRAZA, RECORTA_TRAZA, DESPLAZAR_ORIGEN, EJE_A_POLIGONO y SIGUIENTE_SEGMENTO_VERTICAL: resultado de cada orden](../../../../../images/hojas-origen-eje-vertical.svg)

## Parámetros

No admite parámetros. La orden muestra un cuadro de diálogo con estos campos:

| Campo | Descripción |
| :--- | :--- |
| Tamaño de las hojas en horizontal | Largo de cada marco, medido a lo largo del eje |
| Tamaño de las hojas en vertical | Alto de cada marco, centrado en el eje |
| Código con el que crear las hojas | Código de los marcos y de sus textos |
| Prefijo | Texto que se antepone al número de cada hoja |
| Postfijo | Texto que se añade detrás del número de cada hoja |

Después, selecciona la línea que sirve de eje. La orden coloca marcos consecutivos a lo largo del eje, empezando en su primer vértice. Para ajustar la posición de los marcos:

* La tecla **+** desplaza todos los marcos 50 unidades hacia atrás, en sentido contrario al de digitalización del eje.
* La tecla **−** los desplaza 50 unidades hacia delante.
* La tecla **espacio** añade los marcos y, en el centro de cada uno, un texto con el prefijo, el número de hoja y el postfijo. La altura del texto es la mitad del alto del marco.

Hasta que el usuario no acepte mediante la tecla espaciadora no se representarán los textos y no se registrarán las hojas.

## Observaciones

Se puede utilizar para generar hojas en batería.

Antes de ejecutar la orden, tendrá que estar representada la línea que sirve de eje central para las hojas a generar.

## Características de la orden

| Tipo de orden | [Orden interactiva](traza.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Gráfico de hojas/Crear gráfico de hojas \(traza\) |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {C1531BAF-268D-4b68-A830-884AF84BF21F} |

