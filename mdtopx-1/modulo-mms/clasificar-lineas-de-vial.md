---
description: Cuadro de diálogo Clasificar líneas de vial
---

# Clasificar líneas de vial

[Módulo MMS](./)

Mediante esta herramienta se clasificarán los puntos pertenecientes al asfalto y a las marcas horizontales de la carretera. Previamente a ejecutar esta herramienta, se debe haber ejecutado la herramienta de [Trazado](clasificar-suelo-de-trazado.md).

El resultado de esta herramienta será:

* Clasificación del documento original de los puntos pertenecientes al asfalto mediante el tipo 35 y los puntos pertenecientes a las marcas viales.
* Generación de un nuevo documento de geometría vectorial con los límites del asfalto, que representará la plataforma, y de las marcas viales horizontales.

El cuadro de diálogo necesita los siguientes datos:

* Punto de registro: Se deberán seleccionar los puntos de registro que se utilizarán en el cálculo.
* Máxima distancia entre puntos: Se indicará la distancia máxima entre dos puntos para ser considerados vecinos en el espacio.
* Mínimo valor de intensidad: Valor mínimo de intensidad que deberá tener un punto para ser considerado perteneciente a una señal horizontal sobre el asfalto.

