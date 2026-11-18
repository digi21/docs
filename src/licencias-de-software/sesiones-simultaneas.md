# Sesiones simultáneas
<!-- id: sesiones-simultaneas -->

Una licencia de software con sesiones simultáneas limita cuántos programas se pueden usar a la vez. El límite de sesiones simultáneas es independiente del número de ordenadores en los que se activa la licencia: por ejemplo, una licencia puede permitir activar 75 ordenadores y, a la vez, 20 sesiones simultáneas. Los 75 ordenadores pueden iniciar el programa, pero solo 20 usan el programa al mismo tiempo; cuando hay 20 sesiones abiertas, el programa que solicita otra sesión espera a que quede una plaza libre.

Cada licencia con sesiones simultáneas tiene estos datos, que fija Digi21:

* **Máximo de sesiones simultáneas**: entre 1 y 10.000 sesiones, ambos límites incluidos.
* **Modo**: quién reparte las sesiones. Es digi21.net o un servidor de licencias local (consulta [Modos de reparto](#modos-de-reparto)).
* **Minutos sin conexión**: entre 0 y 1.440 minutos, ambos incluidos (30 minutos si Digi21 no indica otro valor). Consulta [Pérdida de la conexión](#pérdida-de-la-conexión).

Las sesiones simultáneas solo están disponibles en licencias de compra y de alquiler, no en demostraciones. El ordenador tiene que tener además la licencia activada (consulta [Activar ordenadores](activar-ordenadores.md)): la activación es la primera condición y la sesión es la segunda.

## Qué cuenta como una sesión

Una sesión es la combinación de una licencia, un ordenador y una sesión de Windows. Un ordenador que tiene dos sesiones de Windows abiertas con el programa, por ejemplo en un servidor de escritorio remoto, ocupa dos plazas de la licencia. Dentro de la misma sesión de Windows, abrir varias veces el programa, o abrir varios programas de la misma licencia, ocupa una sola plaza.

## Cuándo se solicita la sesión

MDTopX, Topcal21 y Digi3D.AI solicitan la sesión al iniciarse, antes de abrir la ventana principal, cuando el módulo principal del programa solo tiene licencia con sesión simultánea. El programa conserva la sesión mientras está abierto y la renueva periódicamente.

Si la licencia no tiene plazas libres, el programa muestra un cuadro de diálogo con los botones **Reintentar** y **Salir**. Los textos indican el motivo; por ejemplo, el de Digi3D.AI dice «Todas las licencias de Digi3D.AI están en uso: 20 de 20 programas abiertos a la vez. Cierra Digi3D.AI en otro ordenador o espera.» El texto de MDTopX y Topcal21 dice «Todas las sesiones de la licencia de *programa* están en uso (20 de 20 sesiones). Cierre *programa* en otro ordenador o espere.»

* **Reintentar** vuelve a pedir la sesión. Con el motivo «todas las licencias están en uso», el cuadro de diálogo también pide la sesión automáticamente cada 30 segundos y muestra los segundos que faltan para la próxima solicitud.
* Si el programa obtiene la sesión, el cuadro se cierra y el programa continúa el inicio.
* **Salir** cierra el programa.

Otros motivos que el cuadro puede mostrar:

* Que el ordenador no tiene configurado el servidor de licencias local (consulta [Configurar los ordenadores cliente](servidor-de-licencias.md#configurar-los-ordenadores-cliente)).
* Que el servidor de licencias local no tiene una licencia válida para el ordenador.
* Que la licencia no está activada en el ordenador o ha terminado.
* Que no hay conexión de red con digi21.net o con el servidor de licencias local.

## Modos de reparto

El modo lo asigna Digi21 a cada licencia, y el usuario no lo elige.

| | Modo «digi21.net» | Modo «servidor de licencias local» |
| --- | --- | --- |
| Quién reparte las sesiones | digi21.net | Un servidor instalado en la red de la organización ([Servidor de licencias local](servidor-de-licencias.md)) |
| Conexión que necesita el ordenador | Internet, hacia digi21.net | La red local, hacia el servidor |
| Renovación de la sesión | Cada 3 minutos | Cada minuto |
| Validez de la sesión desde su última renovación | 10 minutos | 3 minutos |
| Configuración en el ordenador | Ninguna | Dirección del servidor, en cada ordenador |
| Dónde consulta el titular las sesiones en uso | Página **Mis licencias de software** de digi21.net | Panel web y órdenes del servidor |

Los tiempos de renovación y de validez los indica el servidor en cada respuesta; los de la tabla son los que usan digi21.net y el servidor de licencias local de Digi21. El programa limita ambos tiempos al intervalo de 30 segundos a 30 minutos, ambos límites incluidos.

Una sesión que se queda sin renovar, porque el programa se ha cerrado de forma inesperada o porque el ordenador ha perdido la conexión, deja de ocupar plaza cuando termina su validez: como máximo 10 minutos después de la última renovación con digi21.net y 3 minutos con el servidor de licencias local.

## Qué ve el usuario

### Cuadro de diálogo Licencias de software

Con una sesión abierta, el cuadro de diálogo **Licencias de software** muestra una línea de estado de la sesión, por ejemplo «Sesión: activa con *servidor* (hasta 20 programas abiertos a la vez).» Otros estados son «Sesión: sin iniciar.», «Sesión: sin conexión con *servidor*; los módulos autorizados por esta sesión conservan la licencia hasta las *hora*», «Sesión: perdida; los módulos conservan la licencia hasta las *hora*» y «Sesión: sin licencia».

El botón **Obtener licencia** pide una sesión inmediatamente. Solo aparece cuando el módulo principal del programa tiene una sesión simultánea o necesita una.

### Pérdida de la conexión

Si el programa no puede renovar la sesión porque no obtiene respuesta del servidor (digi21.net o servidor de licencias local), o el servidor responde con un error del protocolo de transferencia de hipertexto (HTTP) con un código entre 500 y 599, ambos incluidos, o con un aviso de exceso de peticiones (HTTP 429), el programa muestra el aviso «*Programa* no puede comunicarse con *servidor*. Los módulos autorizados por la sesión conservan la licencia hasta las *hora*. Guarda tu trabajo.» El programa sigue funcionando y reintenta la renovación cada 30 segundos.

La hora límite es la suma de tres tiempos: la fecha y hora de la última concesión o renovación de la sesión, la validez de la sesión (10 minutos con digi21.net, 3 con el servidor de licencias local) y los minutos sin conexión de la licencia. Con 30 minutos sin conexión, el programa conserva la licencia hasta 40 minutos después de la última renovación con digi21.net y hasta 33 minutos después de la última renovación con el servidor de licencias local. Si el servidor concede o renueva la sesión antes de la hora límite, la sesión vuelve a estar activa y el aviso desaparece.

### Sesión perdida

Si el servidor responde y rechaza la sesión, el programa muestra un aviso con el motivo y deja 10 minutos para guardar el trabajo. Los motivos son, por ejemplo, que todas las licencias están en uso (otro ordenador ha ocupado la plaza), que el ordenador ya no está activado para la licencia, o que el servidor de licencias local no concede sesiones al ordenador. El aviso indica la hora límite y dice que el programa intenta obtener una licencia cada minuto. Un ejemplo del texto de Digi3D.AI:

> El servidor no ha renovado la sesión de Digi3D.AI: todas las licencias están en uso (20 de 20 programas abiertos a la vez). Guarda tu trabajo antes de las 12:30; a partir de esa hora Digi3D.AI no puede usar los módulos de esa licencia. Digi3D.AI intenta obtener una licencia cada minuto.

Cuando pasa la hora límite sin que el programa recupere la sesión:

* MDTopX y Topcal21 no pueden calcular ni guardar.
* Digi3D.AI no puede usar los módulos de la licencia. Si el ordenador pierde la licencia de edición con un dibujo abierto, Digi3D.AI muestra el cuadro de diálogo [Licencias de software](../digi3d-ai/referencia/cuadros-de-dialogo/licencias-de-software.md).

El programa muestra el aviso «*Programa* ya no tiene licencia. *Programa* intenta obtener una licencia cada minuto. Para solicitar una licencia manualmente, pulsa «Obtener licencia» en Ayuda > Licencias de software.» Cuando el programa consigue una sesión en uno de sus intentos, el cuadro de diálogo **Licencias de software** muestra «*Programa* ha obtenido una licencia.»

## Cierre del programa

Al cerrar el programa, este devuelve sus sesiones al servidor y espera la respuesta como máximo 2 segundos. La plaza queda libre en cuanto el servidor recibe la devolución. Si la devolución no llega, por ejemplo porque el ordenador no tiene conexión o el proceso se ha terminado desde el Administrador de tareas, la plaza queda libre cuando termina la validez de la sesión (10 minutos con digi21.net y 3 minutos con el servidor de licencias local, desde la última renovación).

## Liberar una sesión manualmente

Liberar una sesión cierra en el servidor las sesiones de la misma licencia que comparten ordenador y sesión de Windows con la sesión elegida. La liberación no impide que el programa solicite una sesión nueva: si el programa sigue abierto en ese ordenador, la pide en su siguiente renovación y la obtiene si hay una plaza libre.

### Con digi21.net

El titular de una licencia en modo «digi21.net» libera sesiones desde la página **Mis licencias de software** de digi21.net:

1. Inicia sesión en digi21.net con la cuenta titular de la licencia y abre **Mis licencias de software** en el menú de la cuenta (`https://www.digi21.net/MisLicenciasArgos`).
2. Busca la licencia. El apartado **Sesiones simultáneas** muestra cuántas sesiones hay en uso, por ejemplo «Sesiones simultáneas: 12 de 20», y una tabla con el ordenador, la sesión de Windows y la hora de la última renovación de cada una.
3. Pulsa **Liberar** en la fila de la sesión.

Solo el titular de la licencia puede liberar sesiones. La página no muestra las sesiones de licencias en modo «servidor de licencias local»; en ese modo muestra solo el máximo de sesiones simultáneas.

### Con el servidor de licencias local

El administrador del servidor libera sesiones con el botón **Liberar** del panel web o con la orden `liberar <sesión>`. Consulta [Servidor de licencias local](servidor-de-licencias.md).
