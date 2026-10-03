# Atributos de BBDD del código destino

Indica cómo se rellenan los atributos de base de datos del código destino al sustituir un código con la orden [RENOMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md).

## Valores posibles

* **Esquema de tabla** \(valor por defecto\). Los atributos se crean con los campos del esquema de la tabla del código destino.
* **Esquema de tabla + Valores por defecto**. Además, se asignan los valores de los atributos que el código destino tiene definidos en la tabla de códigos.
* **Esquema de tabla + Valores por defecto + Valores \(no nulos\) del código sustituido**. Además, se copian los valores no nulos de los atributos del código sustituido.
