# Licencias de software
<!-- id: licencias-de-software -->

<!-- captura pendiente: licencias-de-software.png -->

Este cuadro de diálogo muestra el estado de las licencias de software del equipo y permite activar el equipo, renovar la autorización de uso y consultar los módulos con licencia. Existe solo en la versión de Digi3D.AI que usa Licencias de software en lugar de la llave de protección.

## Abrir el cuadro de diálogo

El cuadro de diálogo aparece en dos casos:

* Al iniciar Digi3D.AI, si el equipo no tiene licencia de edición. Digi3D.AI no continúa el inicio hasta que el equipo tenga licencia de edición o pulses **Salir**.
* Al seleccionar la opción del menú **Ayuda/Licencias de software...**. En este caso el cuadro de diálogo tiene un único botón, **Cerrar**.

## Información que muestra

En la parte superior, el cuadro de diálogo muestra estas líneas de texto, sin etiqueta:

* **Estado** de las licencias del equipo, por ejemplo «Este equipo tiene una autorización de uso válida» o «Este equipo no está registrado». Si la autorización ha caducado o hace falta sincronizar la hora, el texto indica que debes conectarte a Internet y pulsar **Renovar la autorización de uso**.
* Si alguna de las licencias del equipo permite ejecutar esta versión de Digi3D.AI (licencia de edición).
* Dónde está guardada la clave criptográfica del equipo, que lo identifica ante el servidor de licencias: protegida por el módulo de plataforma segura (TPM) o almacenada en el proveedor de claves de software de Windows. Si Windows no puede abrir ni crear la clave, el cuadro de diálogo lo indica y no permite activar el equipo.
* La fecha y la hora antes de las cuales el equipo tiene que conectarse con el servidor de licencias («El equipo tiene que conectarse con el servidor de licencias antes del…»). Solo aparece cuando el equipo tiene una autorización de uso válida.
* El resultado de la última operación (por ejemplo, que el servidor ha concedido la autorización o que la petición ha fallado) o el progreso de la operación en curso.

Después de los botones aparece la lista de módulos:
* **Módulos con licencia en este equipo**: una fila por cada módulo con licencia, ordenadas por el nombre del módulo:
  * **Módulo**: el nombre del módulo (consulta [Módulos de Digi3D.AI](#módulos-de-digi3dai)).
  * **Tipo**: compra, alquiler, demostración o desconocido.
  * **Uso permitido hasta**: la fecha y la hora hasta las que se puede usar el módulo. La columna **Uso permitido hasta** muestra «sin límite» si la licencia no tiene fecha de fin.
  * **Versiones compiladas hasta, inclusive**: la fecha de compilación más reciente de las versiones de Digi3D.AI que pueden usar este módulo. Una versión compilada después de esa fecha no puede usar el módulo. La columna **Versiones compiladas hasta, inclusive** muestra «sin límite» si la licencia no limita la fecha de compilación.

## Activar el equipo

1. Pulsa **Activar este equipo**. Digi3D.AI solicita un código de usuario al servidor y abre la página de verificación en el navegador. El cuadro de diálogo muestra el código de usuario y la dirección de la página.
2. Comprueba que la página del navegador muestra el mismo código de usuario que el cuadro de diálogo. Si el navegador no se ha abierto, escribe en él la dirección que muestra el cuadro de diálogo.
3. Inicia sesión en digi21.net.
4. Aprueba el registro del equipo y elige las licencias que quieres activar en él.
5. Vuelve a Digi3D.AI. Mientras Digi3D.AI espera la aprobación del registro del equipo, el programa consulta al servidor de licencias, detecta la aprobación automáticamente y actualiza el estado de las licencias y la lista de módulos. No hace falta pulsar ningún botón.

Si el código de usuario caduca antes de que apruebes el registro, el cuadro de diálogo lo indica; pulsa **Activar este equipo** para solicitar un código nuevo. Si rechazas el registro en la página, el cuadro de diálogo indica que se ha rechazado.

## Botones

* **Activar este equipo**: inicia el procedimiento anterior cuando el equipo no está registrado. Si el equipo ya está registrado, el botón se llama **Activar licencias en este equipo** y repite el mismo procedimiento para activar más licencias en el equipo. El botón de activación está deshabilitado mientras hay otra operación en curso, mientras Digi3D.AI inicia el servicio de licencias y cuando Windows no puede abrir ni crear la clave del equipo.
* **Cancelar el registro**: interrumpe la espera de la aprobación. Solo está habilitado mientras hay un registro en curso.
* **Renovar la autorización de uso**: pide al servidor una autorización de uso nueva. El botón de renovación está habilitado cuando el equipo tiene una autorización válida, cuando la autorización ha caducado o cuando hace falta sincronizar la hora del equipo, y está deshabilitado mientras hay otra operación en curso.
* **Mis licencias de software**: abre en el navegador la página de digi21.net con las licencias de software de tu cuenta.
* **Continuar**: cierra el cuadro de diálogo que aparece al iniciar Digi3D.AI y continúa el inicio. El botón **Continuar** está habilitado solo cuando el equipo tiene licencia de edición.
* **Salir**: cierra el cuadro de diálogo y Digi3D.AI no se inicia. Solo aparece al iniciar Digi3D.AI.
* **Cerrar**: cierra el cuadro de diálogo abierto desde el menú **Ayuda**.

## Autorización de uso y trabajo sin conexión

La autorización de uso permite trabajar sin conexión a Internet hasta la fecha que muestra el cuadro de diálogo en la línea «El equipo tiene que conectarse con el servidor de licencias antes del…». Cuando queda menos de un tercio del plazo de la autorización y hay conexión, Digi3D.AI la renueva automáticamente. Si la fecha pasa sin que el equipo se haya conectado, el estado cambia a que la autorización ha caducado y debes conectarte a Internet y pulsar **Renovar la autorización de uso**.

Cuando Digi3D.AI renueva la autorización de uso, la autorización incluye los módulos añadidos a una licencia del equipo. Para actualizar la autorización de uso sin esperar a la renovación automática, pulsa **Renovar la autorización de uso**. Si el módulo añadido es `digi3d.fotogrametria`, reinicia Digi3D.AI después de renovar la autorización: Digi3D.AI carga las extensiones fotogramétricas al iniciarse.

## Módulos de Digi3D.AI

* `digi3d.edicion`: permite ejecutar Digi3D.AI.
* `digi3d.fotogrametria`: permite usar la ventana fotogramétrica. Sin este módulo, Digi3D.AI solo carga las extensiones Digi3D.Orthophoto y Digi3D.CommonCommands, de modo que la ventana fotogramétrica solo puede abrir modelos de ortofoto. Si la licencia del equipo no incluye `digi3d.fotogrametria`, Digi3D.AI muestra un aviso de falta de licencia cuando intentas abrir un modelo de un sensor distinto de la ortofoto o ejecutar una orden de una extensión fotogramétrica.

## Limitaciones de esta versión

* Las órdenes de modelos digitales del terreno de MDTopX (triangulación e importador de MDT) no están disponibles.
* No se pueden abrir ni crear tablas de códigos cifradas.
