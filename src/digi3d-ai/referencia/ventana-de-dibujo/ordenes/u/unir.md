# UNIR

Une dos entidades lineales que has de seleccionar, generando un único elemento de dibujo.

![Órdenes para unir y partir líneas: UNIR une dos líneas por sus extremos, UNIR_XYZ solo si coinciden en Z, UNIR_LINEAS_TABLA solo si al nodo llegan dos líneas, PARTIR_LINEAS parte las líneas en sus cruces, INSERTAR_VERTICE_INTERSECCION_LINEAS inserta un vértice en el cruce sin partir, e INSERTAR_VERTICE_INTERSECCION_LINEA_PUNTO inserta la proyección de un punto cercano](../../../../../images/unir-partir.svg)

## Parámetros

No admite parámetros.

## Observaciones

La unión se realiza por el extremo más próximo al punto de selección de cada una de las entidades.

Las entidades deben tener el mismo código y los mismos atributos para poder unirlas.

## Características de la orden


| Tipo de orden | [Orden interactiva](unir.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden |Editar/Polilíneas/Unir dos polilíneas<br>ó<br>Editar/Polilíneas/Unir polilíneas por ventana y código|
| Barra de herramientas en la que aparece la orden | Unir |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {88F56A67-0638-495d-99FB-6265DAD1CF1B} |


