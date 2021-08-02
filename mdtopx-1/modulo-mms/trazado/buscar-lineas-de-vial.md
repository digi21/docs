---
description: Cuadro de diálogo Buscar líneas de vial
---

# Buscar líneas de vial

[Ficha de herramientas MMS Trazado](./)

Mediante esta herramienta se calcularán los límites generados por los puntos clasificados como asfalto y/o marcas horizontales de la carretera. Estos puntos podrán haber sido clasificados previamente con la herramienta [Asfalto](clasificar-lineas-de-vial.md).

El resultado de esta herramienta será:

* Clasificación del documento original de los puntos pertenecientes al asfalto mediante el tipo 35 y los puntos pertenecientes a las marcas viales.
* Generación de un nuevo documento de geometría vectorial con los límites del asfalto, que representará la plataforma, y de las marcas viales horizontales.

El cuadro de diálogo necesita los siguientes datos:

* **Punto de registro**: Se deberán seleccionar los puntos de registro que se utilizarán en el cálculo.
* **Máxima distancia entre puntos**: Se indicará la distancia máxima entre dos puntos para ser considerados vecinos en el espacio.
* **Mínimo valor de intensidad**: Valor mínimo de intensidad que deberá tener un punto para ser considerado perteneciente a una señal horizontal sobre el asfalto.

{% embed url="https://youtu.be/J4uEcv8OIGU" caption="Detección de carriles en vial a partir de datos MMS" %}

