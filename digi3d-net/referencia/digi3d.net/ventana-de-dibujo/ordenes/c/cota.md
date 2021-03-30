# COTA

Digitaliza una cota altimétrica.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código con el que se digitalizará el punto de la cota altimétrica. | Algún código de la tabla de códigos activa como 020401 | Si. Si no se especifica este parámetro se digitalizará el punto con el conjunto de códigos activos en el momento de ejecutar la orden |
| 2 | Código con el que se digitalizará el texto de la cota altimétrica. | Algún código de la tabla de códigos activa como 020401 | Si. Si no se indica este parámetro se le asignará al texto el mismo código que al punto de la cota altimétrica |

## Observaciones

La distancia entre el punto y el texto es la mitad del valor almacenado en la variable [AT](AT.html) \(altura de texto\).  
El texto digitalizado tendrá la rotación especificada en la variable [AA](AA.html) \(ángulo activo\).  
El texto digitalizado tendrá la justificación especificada en la variable [JT](JT.html) \(justificación de textos\).  
El texto digitalizado tendrá tantos decimales como los especificados en la variable [NDEC](NDEC.html).

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Cota altimétrica |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](REPITE.html), [AA](AA.html), [AT](AT.html), [DA](DA.html), [JT](JT.html) |



