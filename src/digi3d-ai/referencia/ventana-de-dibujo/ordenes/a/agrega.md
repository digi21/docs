# AGREGA
<!-- id: agrega -->

Añade las coordenadas de un punto al fichero de puntos que se haya definido en la pantalla de inicio de DigiNG, o que se haya determinado con [FICHERO\_P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fichero-p.md).

## Parámetros

Esta orden no admite parámetros.

## Observaciones

Si no hay ningún fichero de puntos definido, la orden muestra un cuadro de diálogo para elegirlo. Si cancelas el cuadro de diálogo, la orden termina.

Con el fichero de puntos definido, la orden muestra un cuadro de diálogo en el que introduces el nombre del punto y un texto con información referente a ese punto. El nombre del punto es un texto. Si la variable [AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) es distinta de 0, el programa propone como nombre el número del último punto más AUTONUM, con el formato de [FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md). Si AUTONUM es 0, el programa propone el último nombre de punto introducido.

Si activas la casilla "Si me engancho con el tentativo en un elemento, prefiero que la descripción se obtenga automáticamente de Digi.tab", al seleccionar una entidad con el pulsador de tentativo, la orden utilizará como texto de información la descripción del código de la entidad en lugar del texto introducido. Indica numérica \(con la orden [XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xy.md)\) o gráficamente las coordenadas del punto. Para indicar el punto gráficamente, utiliza el pulsador de dato o selecciona una entidad dibujada con el pulsador de tentativo y acepta la selección.

El nombre del punto, las coordenadas \(X Y Z\), con el número de decimales de la ventana de dibujo, y el texto de información se añadirán al final del fichero de puntos. Si se ha realizado un tentativo sobre una entidad al indicar el punto, el primer código de la entidad se guarda también en el fichero, después de las coordenadas y antes del texto explicativo.

Si hay una ventana fotogramétrica abierta, la orden guarda además una captura de la ventana en un archivo `<nombre del punto>.bmp`, en la carpeta del fichero de puntos.

Después de cada punto, la orden vuelve a mostrar el cuadro de diálogo para el punto siguiente. La orden termina cuando cancelas el cuadro de diálogo.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Inmediato/Agregar... |
| Barra de herramientas en la que aparece la orden | Coordenadas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) — factor de autonumeración<br>[FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) — formato del texto cuando se usa AUTONUM |
| Órdenes relacionadas | [FICHERO\_P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fichero-p.md)<br>[N](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/n/n.md) |
| Nombre interno | {83730CD6-5D81-45dc-BDF4-B1ADEF65C5F5} |

