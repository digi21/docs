# Lot Of Points
<!-- id: lot-of-points -->

<img src="../images/lot-of-points-icono.png" alt="Icono de Lot Of Points" width="128">

**Lot Of Points** es un visor y editor de nubes de puntos para Windows. Permite recorrer una nube en tres
dimensiones, consultar las fotografías esféricas que la acompañan y tomar medidas sobre sus puntos. Puedes abrir
varias nubes en una misma vista y combinarlas con capas vectoriales GeoPackage para dibujar sobre ellas.

El trabajo comienza en el panel **Capas**, desde el que se abren tanto archivos locales como nubes publicadas en
Azure con [Lot Of Points Studio](../lot-of-points-studio/README.md). A partir de ahí puedes ajustar la representación
de los puntos, acercarte a una zona de interés o guardar una vista para volver a ella. La [introducción](introduccion.md) explica este recorrido
y presenta las herramientas de navegación, medida y edición.

Para corregir una nube, selecciona una región o los puntos que deja un comando y aplica la acción.
Lot Of Points guarda las ediciones aparte del original, permite deshacerlas y puede exportar el original
editado de una nube local a un nuevo archivo LAS (formato de intercambio de nubes de puntos).
Las nubes remotas conservan sus ediciones en el equipo del usuario.

Los [comandos por teselas](algoritmos/README.md) pueden consultar nubes, cambiar clasificaciones o borrar puntos.
El comando elige las nubes y puede procesar también las ocultas.
El [gestor de extensiones](gestor-de-extensiones.md) permite habilitar los comandos instalados.

Lot Of Points también ofrece herramientas de [programación](programacion/README.md). El panel
[Python](programacion/python/README.md) permite escribir guiones que controlan el visor y ejecutan sus órdenes;
el kit de desarrollo de software (SDK) de [C y C++](programacion/c-cpp/README.md) y los comandos de Python
permiten pedir puntos, seleccionar puntos, procesar teselas y cargar capas GeoPackage.
