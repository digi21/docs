# Licencias de software
<!-- id: sistema-licencias-de-software -->

Las licencias de software autorizan el uso de un programa de Digi21 en un ordenador concreto sin que el ordenador tenga conectada una llave de protección. Son una alternativa a la llave de protección (llave HASP, la llave de hardware o de software que se describe en [Acerca de las llaves de protección](../acerca-llaves-proteccion/README.md)).

Digi21 asocia cada licencia (compra, alquiler o demostración de uno o varios módulos de un programa) a una cuenta de digi21.net. Cuando activas un ordenador, digi21.net emite al ordenador una autorización de uso firmada. El programa lee esa autorización al iniciarse y comprueba qué módulos puede usar.

## Programas que usan licencias de software

| Programa | Dónde se consulta el estado de las licencias | Cómo se activa el ordenador |
| --- | --- | --- |
| Digi3D.AI | Opción **Ayuda/Licencias de software...** (cuadro [Licencias de software](../digi3d-ai/referencia/cuadros-de-dialogo/licencias-de-software.md)) | Botón **Activar este equipo** del cuadro, con aprobación en digi21.net |
| MDTopX y Topcal21 | Opción **Ayuda/Licencias de software...** | Botón **Activar este equipo** o botón **Activar con código...** del cuadro, o la orden `/activar-equipo` |

Consulta [Activar ordenadores](activar-ordenadores.md) para el procedimiento completo.

## Cómo elige el programa entre la licencia de software y la llave de protección

Digi3D.AI, MDTopX y Topcal21 deciden la protección al iniciarse, con estas reglas aplicadas en este orden:

1. Si el ordenador tiene una activación de licencias de software del programa, para el usuario de Windows que inicia el programa o para todos los usuarios del ordenador, el programa usa licencias de software y no consulta ninguna llave.
2. Si no, el programa intenta iniciar sesión en una llave de protección: la conectada al ordenador o la de un servidor de llaves de la red, a través del servicio de licencias de la llave (puerto 1947 del propio ordenador). Si la llave tiene licencia del programa, el programa usa la llave.
3. Si no, el programa muestra el cuadro **Protección de** *programa* con tres botones: **Activar una licencia de software**, **Seleccionar llave** y **Salir**. **Activar una licencia de software** abre el cuadro Licencias de software para activar el ordenador. **Seleccionar llave** abre el programa Selecciona llave y, cuando se cierra Selecciona llave, el programa que solicitó la licencia repite el paso 2.

> [!IMPORTANT]
> Mientras el ordenador tiene una activación de licencias de software, el programa no busca la llave de protección en ese ordenador (regla 1).

## Qué incluye el sistema

* **Activación de ordenadores.** Cada ordenador necesita una activación de la licencia y una autorización de uso. El programa renueva periódicamente la autorización de uso con digi21.net. Consulta [Activar ordenadores](activar-ordenadores.md).
* **Sesiones simultáneas.** Una licencia puede limitar cuántos programas se usan a la vez, con independencia de cuántos ordenadores estén activados. Consulta [Sesiones simultáneas](sesiones-simultaneas.md).
* **Servidor de licencias local.** Un servicio de Windows instalado en la red de la organización reparte las sesiones simultáneas sin que cada ordenador pida la sesión a digi21.net. Consulta [Servidor de licencias local](servidor-de-licencias.md).

## Páginas de esta sección

* [Activar ordenadores](activar-ordenadores.md): códigos de activación, cuadro Licencias de software, orden `/activar-equipo`, número de ordenadores y renovación de la autorización de uso.
* [Sesiones simultáneas](sesiones-simultaneas.md): qué cuenta como una sesión, qué muestra el programa cuando faltan sesiones o se pierde la conexión y cómo se liberan las sesiones.
* [Servidor de licencias local](servidor-de-licencias.md): instalación, activación, órdenes de administración, panel web, configuración de los ordenadores cliente y solución de problemas. Esta página va dirigida al servicio informático de la organización.
