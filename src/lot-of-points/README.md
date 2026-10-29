# Lot Of Points
<!-- id: lot-of-points -->

<img src="../images/lot-of-points-icono.png" alt="Icono de Lot Of Points" width="128">

**Lot Of Points** es un visor y editor de nubes de puntos para Windows. Permite recorrer una nube en tres
dimensiones, consultar las fotografías esféricas que la acompañan y tomar medidas sobre sus puntos. Puedes abrir
varias nubes en una misma vista y combinarlas con capas vectoriales GeoPackage para dibujar sobre ellas.

El trabajo comienza en el panel **Capas**, desde el que se abren tanto archivos locales como nubes publicadas en
Azure con [Lot Of Points Studio](../lot-of-points-studio/README.md). Después de abrir las nubes puedes ajustar la representación
de los puntos, acercarte a una zona de interés o guardar una vista para volver a ella. La [introducción](introduccion.md) explica cómo abrir nubes, ajustar su representación y guardar vistas
y presenta las herramientas de navegación, medida y edición.

Para corregir una nube, selecciona una región o los puntos seleccionados por un comando y aplica Borrar, Clasificar o Aislar.
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

## Licencias del equipo

El panel **Licencias** de **Configuración** registra el equipo en una cuenta de digi21.net mediante el sistema de licenciamiento de digi21.net.
El programa muestra un código y abre la página de activación en el navegador para que el usuario apruebe o deniegue el registro del equipo.
El registro continúa si se cierra la configuración; si el usuario vuelve a abrir **Configuración** durante el registro del equipo, puede cancelar el registro desde esa ventana.

El panel muestra el estado de la autorización, el proveedor de la clave y cada módulo con el tipo de licencia (compra, alquiler o demostración), la fecha de fin de uso y la fecha de fin de soporte.
**Mis licencias en digi21.net** abre en el navegador las licencias de la cuenta.
La autorización se vincula a una clave de firma no exportable del equipo, creada en el módulo de plataforma segura (TPM)
o, si ese proveedor no está disponible, en el almacén de claves por software de Windows.

El programa guarda la credencial de autorización en `%LOCALAPPDATA%\lop\argos\token.jwt`
y utiliza `reloj.json` para guardar el registro firmado de hora.
La credencial caduca al terminar el plazo de revalidación de la licencia, de 30 días por defecto. La fecha de caducidad de la credencial determina hasta cuándo puede usarse el programa sin conexión.
El programa solicita renovar la credencial cuando queda menos de un tercio del periodo de validez de la credencial.
Si la credencial ha caducado o hace falta sincronizar la hora con el servidor del sistema de licenciamiento, el programa reintenta la renovación cada 5 minutos.

La autorización requiere sincronizar la hora con el servidor del sistema de licenciamiento si falta un registro de hora válido
o si la hora estimada del servidor es anterior en más de 5 minutos a la hora mínima guardada.
Si se corrige un error de más de 5 minutos que tenía el reloj de Windows al recibir la credencial, la autorización
puede seguir requiriendo sincronizar la hora con el servidor del sistema de licenciamiento hasta la siguiente renovación de la credencial.

## Acerca de

**Acerca de**, en **Configuración**, muestra la versión del conjunto de datos EPSG
(*European Petroleum Survey Group*), su atribución, los enlaces a epsg.org y a sus términos de uso
y la renuncia de garantía. El texto indica que la aplicación no cobra por los datos EPSG.
Los créditos incluyen Digi21.WinUI.CrsPicker, Digi21.CrsKit.Interop, crskit y SQLite.
