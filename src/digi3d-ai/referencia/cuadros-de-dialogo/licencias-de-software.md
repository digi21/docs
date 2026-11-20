# Licencias de software
<!-- id: licencias-de-software -->

![Cuadro de diálogo Licencias de software](../../../images/licencias-de-software.png)

Este cuadro de diálogo muestra el estado de las licencias de software del equipo y permite activar el equipo, renovar la autorización de uso, obtener una sesión simultánea y consultar los módulos con licencia. Digi3D.AI usa licencias de software, en lugar de una llave de protección, cuando el equipo tiene una activación de licencias de software o cuando eliges **Activar una licencia de software** en el cuadro [Protección de Digi3D.AI](#elegir-la-protección-al-iniciar-digi3dai). Para una visión general de las licencias de software, consulta la sección [Licencias de software](../../../licencias-de-software/README.md).

## Elegir la protección al iniciar Digi3D.AI

Al iniciarse, Digi3D.AI decide si usa licencias de software o una llave de protección con las reglas descritas en [Cómo elige el programa entre la licencia de software y la llave de protección](../../../licencias-de-software/README.md#cómo-elige-el-programa-entre-la-licencia-de-software-y-la-llave-de-protección). Cuando el equipo no tiene ninguna activación de licencias de software y Digi3D.AI no inicia sesión en una llave que tenga licencia de Digi3D.AI, Digi3D.AI muestra el cuadro **Protección de Digi3D.AI**.

![Cuadro de diálogo Protección de Digi3D.AI](../../../images/proteccion-de-digi3dai.png)

El cuadro **Protección de Digi3D.AI** indica que Digi3D.AI no ha encontrado una llave de protección con licencia de Digi3D.AI ni una licencia de software activada en el equipo. Tiene tres botones:

* **Activar una licencia de software**: Digi3D.AI usa licencias de software y abre el cuadro de diálogo **Licencias de software** de esta página, con los botones **Continuar** y **Salir**, para que actives el equipo. Cuando el equipo tiene una licencia de software activada, Digi3D.AI deja de usar la llave de protección en ese equipo.
* **Seleccionar llave**: Digi3D.AI abre el programa [Selecciona llave](../../../acerca-llaves-proteccion/programas-relacionados-con-licencias-y-llaves-de-proteccion/selecciona-llave.md), espera a que termine y vuelve a intentar iniciar sesión en una llave de protección. Si la llave tiene licencia de Digi3D.AI, Digi3D.AI se inicia con la llave; en caso contrario, vuelve a mostrar el cuadro **Protección de Digi3D.AI**.
* **Salir**: cierra Digi3D.AI sin completar el inicio.

## Abrir el cuadro de diálogo

El cuadro de diálogo aparece en tres casos:

* Al iniciar Digi3D.AI, si el equipo no tiene licencia de edición. Digi3D.AI no continúa el inicio hasta que el equipo tenga licencia de edición o pulses **Salir**.
* Al seleccionar la opción del menú **Ayuda/Licencias de software...**. En este caso el cuadro de diálogo tiene un único botón, **Cerrar**.
* Cuando el equipo pierde la licencia de edición con un dibujo abierto, por ejemplo porque se ha revocado la activación del equipo. Mientras hay algún dibujo abierto, Digi3D.AI comprueba la licencia cada 5 minutos. En este caso el cuadro de diálogo tiene los botones **Cerrar** y **Salir**.

## Información que muestra

En la parte superior, el cuadro de diálogo muestra estas líneas de texto, sin etiqueta:

* **Estado** de las licencias del equipo. Los textos posibles son:
  * «Digi3D.AI todavía no ha leído las licencias de software de este equipo.»
  * «Este equipo no está registrado. Haz clic en Activar este equipo para registrarlo.»
  * «El registro de este equipo está en curso.»
  * «Este equipo tiene una autorización de uso válida.»
  * «La autorización de uso de este equipo ha caducado o no se ha podido verificar. Conéctate a Internet y haz clic en Renovar la autorización de uso.»
  * «Digi3D.AI necesita sincronizar la hora con el servidor. Conéctate a Internet y haz clic en Renovar la autorización de uso.»
  * «Windows no ha podido abrir ni crear la clave criptográfica de este equipo.» Con este estado, el botón de activación está deshabilitado.
* Si alguna de las licencias del equipo permite ejecutar esta versión de Digi3D.AI (licencia de edición): «Digi3D.AI tiene licencia de software en este equipo.» o «Ninguna de las licencias de software de este equipo permite ejecutar esta versión de Digi3D.AI.»
* La fecha y la hora antes de las cuales el equipo tiene que conectarse con el servidor de licencias («El equipo tiene que conectarse con el servidor de licencias antes del…»). Solo aparece cuando el equipo tiene una autorización de uso válida.
* La sesión simultánea de la licencia de edición (línea **Sesión:**). Solo aparece cuando la licencia de edición tiene una sesión simultánea o necesita una. Los textos posibles son:
  * «Sesión: sin iniciar.» (la licencia de edición necesita una sesión y Digi3D.AI todavía no ha solicitado ninguna)
  * «Sesión: activa con *servidor* (hasta *n* programas abiertos a la vez).»
  * «Sesión: sin conexión con *servidor*; los módulos autorizados por esta sesión conservan la licencia hasta las *hora*.»
  * «Sesión: perdida; los módulos conservan la licencia hasta las *hora*.»
  * «Sesión: sin licencia.»

  La hora es «sin límite» si Digi3D.AI no dispone de la hora límite. Consulta [Sesiones simultáneas](../../../licencias-de-software/sesiones-simultaneas.md).
* El resultado de la última operación (por ejemplo, que el servidor ha concedido la autorización o que la petición ha fallado) o el progreso de la operación en curso.

Debajo de los botones aparece la lista de módulos:

* **Módulos con licencia en este equipo**: una fila por cada módulo con licencia, ordenadas por el nombre del módulo:
  * **Módulo**: el nombre del módulo (consulta [Módulos de Digi3D.AI](#módulos-de-digi3dai)).
  * **Tipo**: compra, alquiler, demostración o desconocido.
  * **Uso permitido hasta**: la fecha y la hora hasta las que se puede usar el módulo. La columna **Uso permitido hasta** muestra «sin límite» si la licencia no tiene fecha de fin.
  * **Versiones compiladas hasta, inclusive**: la fecha de compilación más reciente de las versiones de Digi3D.AI que pueden usar este módulo. Una versión compilada después de esa fecha no puede usar el módulo. La columna **Versiones compiladas hasta, inclusive** muestra «sin límite» si la licencia no limita la fecha de compilación.

## Activar el equipo con aprobación en digi21.net

1. Pulsa **Activar este equipo**. Digi3D.AI solicita un código de usuario al servidor y abre la página de verificación en el navegador. El cuadro de diálogo muestra el código de usuario y la dirección de la página.
2. Comprueba que la página del navegador muestra el mismo código de usuario que el cuadro de diálogo. Si el navegador no se ha abierto, escribe en él la dirección que muestra el cuadro de diálogo («Si el navegador no se ha abierto, ve a esta dirección:»).
3. Inicia sesión en digi21.net.
4. Aprueba el registro del equipo y elige las licencias que quieres activar en él.
5. Vuelve a Digi3D.AI. Mientras Digi3D.AI espera la aprobación del registro del equipo, el programa consulta al servidor de licencias, detecta la aprobación automáticamente y actualiza el estado de las licencias y la lista de módulos. No hace falta pulsar ningún botón.

Si el código de usuario caduca antes de que apruebes el registro, el cuadro de diálogo lo indica; pulsa **Activar este equipo** para solicitar un código nuevo. Si rechazas el registro en la página, el cuadro de diálogo indica que se ha rechazado.

## Activar el equipo con un código de activación

Un código de activación activa el equipo sin que ningún usuario inicie sesión en digi21.net. Digi21 entrega los códigos de activación al titular de la licencia. Consulta [Activar con un código de activación](../../../licencias-de-software/activar-ordenadores.md#activar-con-un-código-de-activación).

![Cuadro de diálogo Activar con un código](../../../images/activar-con-un-codigo.png)

1. Pulsa **Activar con un código...**. Digi3D.AI abre el cuadro **Activar con un código**.
2. Escribe el código de activación en el campo **Código de activación**. El botón **Activar** está deshabilitado mientras el campo está vacío.
3. Marca **Activar para todos los usuarios de este equipo** si quieres que todos los usuarios de Windows del equipo usen la activación. Windows pide permisos de administrador. Si no marcas la casilla, solo queda activado el usuario de Windows que ejecuta Digi3D.AI. Si Digi3D.AI ya usa una activación para todos los usuarios del equipo, la casilla aparece marcada y deshabilitada.
4. Pulsa **Activar**. Mientras la activación está en curso, el cuadro muestra «Activando el equipo...» y deshabilita el campo, la casilla y el botón **Activar**. Si la activación se concede, el cuadro **Activar con un código** se cierra y el cuadro **Licencias de software** actualiza el estado y la lista de módulos. Si la activación falla, el cuadro **Activar con un código** muestra el motivo y vuelve a habilitar el campo, la casilla y el botón **Activar**. Los motivos posibles están en [Resultados posibles al activar con código](../../../licencias-de-software/activar-ordenadores.md#resultados-posibles-al-activar-con-código).

Pulsa **Cancelar** para cerrar el cuadro **Activar con un código** sin activar el equipo. La orden de línea de órdenes `/activar-equipo <código>` de `Digi3D.exe` activa el equipo para todos los usuarios de Windows sin mostrar ningún cuadro de diálogo; consulta [Con la orden /activar-equipo](../../../licencias-de-software/activar-ordenadores.md#con-la-orden-activar-equipo).

## Botones

* **Activar este equipo**: inicia el procedimiento de aprobación en digi21.net cuando el equipo no está registrado. Si el equipo ya está registrado, el botón se llama **Activar licencias en este equipo** y repite el mismo procedimiento para activar más licencias en el equipo. El botón de activación está deshabilitado mientras hay otra operación en curso, mientras Digi3D.AI inicia el servicio de licencias, mientras el registro del equipo está en curso y cuando Windows no puede abrir ni crear la clave del equipo.
* **Cancelar el registro**: interrumpe la espera de la aprobación. Solo está habilitado mientras hay un registro en curso.
* **Renovar la autorización de uso**: pide al servidor una autorización de uso nueva. El botón de renovación está habilitado cuando el equipo tiene una autorización válida, cuando la autorización ha caducado o cuando hace falta sincronizar la hora del equipo, y está deshabilitado mientras hay otra operación en curso.
* **Mis licencias de software**: abre en el navegador la página de digi21.net con las licencias de software de tu cuenta.
* **Activar con un código...**: abre el cuadro **Activar con un código** (consulta [Activar el equipo con un código de activación](#activar-el-equipo-con-un-código-de-activación)). Está habilitado en las mismas condiciones que **Activar este equipo**.
* **Obtener licencia**: solicita inmediatamente una sesión simultánea de la licencia de edición y muestra en la línea de resultado «Digi3D.AI está obteniendo una licencia.» y, a continuación, «Digi3D.AI ha obtenido una licencia.» o el motivo por el que no la ha obtenido. El botón solo aparece cuando la licencia de edición tiene una sesión simultánea o necesita una. Está habilitado cuando no hay otra operación en curso, el equipo tiene una autorización de uso válida y la línea **Sesión:** indica «sin iniciar», «perdida» o «sin licencia».
* **Continuar**: cierra el cuadro de diálogo que aparece al iniciar Digi3D.AI y continúa el inicio. El botón **Continuar** está habilitado solo cuando el equipo tiene licencia de edición.
* **Salir**: al iniciar Digi3D.AI, cierra el cuadro de diálogo y Digi3D.AI no se inicia. Cuando el equipo ha perdido la licencia de edición, cierra el cuadro de diálogo y cierra Digi3D.AI igual que al cerrar la ventana principal. No aparece en el cuadro de diálogo abierto desde el menú **Ayuda**.
* **Cerrar**: cierra el cuadro de diálogo abierto desde el menú **Ayuda** o al perder la licencia de edición. Si el cuadro de diálogo se abrió al perder la licencia de edición y el equipo sigue sin licencia de edición, Digi3D.AI muestra el mensaje «No tienes licencia para esta característica» y vuelve a abrir el cuadro de diálogo.

## Autorización de uso y trabajo sin conexión

La autorización de uso permite trabajar sin conexión a Internet hasta la fecha que muestra el cuadro de diálogo en la línea «El equipo tiene que conectarse con el servidor de licencias antes del…». Cuando queda menos de un tercio del plazo de la autorización y hay conexión, Digi3D.AI la renueva automáticamente. Si la fecha pasa sin que el equipo se haya conectado, el estado cambia a que la autorización ha caducado y debes conectarte a Internet y pulsar **Renovar la autorización de uso**.

Cuando Digi3D.AI renueva la autorización de uso, la autorización incluye los módulos añadidos a una licencia del equipo. Para actualizar la autorización de uso sin esperar a la renovación automática, pulsa **Renovar la autorización de uso**. Si el módulo añadido es `digi3d.fotogrametria`, reinicia Digi3D.AI después de renovar la autorización: Digi3D.AI carga las extensiones fotogramétricas al iniciarse.

## Módulos de Digi3D.AI

* `digi3d.edicion`: permite ejecutar Digi3D.AI.
* `digi3d.fotogrametria`: permite usar la ventana fotogramétrica. Sin este módulo, Digi3D.AI solo carga las extensiones Digi3D.Orthophoto y Digi3D.CommonCommands, de modo que la ventana fotogramétrica solo puede abrir modelos de ortofoto. Si la licencia del equipo no incluye `digi3d.fotogrametria`, Digi3D.AI muestra un aviso de falta de licencia cuando intentas abrir un modelo de un sensor distinto de la ortofoto o ejecutar una orden de una extensión fotogramétrica.

## Limitaciones de esta versión

* Las órdenes de modelos digitales del terreno de MDTopX (triangulación e importador de MDT) no están disponibles.
* No se pueden abrir ni crear tablas de códigos cifradas.
