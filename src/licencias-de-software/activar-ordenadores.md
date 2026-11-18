# Activar ordenadores
<!-- id: activar-ordenadores -->

Para usar una licencia de software en un ordenador, hay que activar la licencia en ese ordenador. Una activación registra la clave criptográfica del ordenador en digi21.net y asocia el ordenador a la licencia. Después de activar el ordenador, el ordenador recibe de digi21.net una autorización de uso que el programa renueva periódicamente.

Hay dos procedimientos de activación:

| | Con aprobación en digi21.net | Con código de activación |
| --- | --- | --- |
| Quién lo ejecuta | Un usuario con una cuenta de digi21.net que es titular de la licencia o que el titular ha autorizado a activarla | Un usuario que tiene un código de activación que ha entregado Digi21 |
| Inicio de sesión en digi21.net | Sí, en el navegador | No |
| Programas | Digi3D.AI, MDTopX y Topcal21 | MDTopX y Topcal21 |
| Usuarios de Windows que quedan activados | El usuario de Windows que ejecuta el programa | El usuario de Windows que ejecuta el programa o, si se activa para todos los usuarios, todos los usuarios de Windows del ordenador |
| Permisos de administrador de Windows | No, salvo para añadir licencias a un ordenador que ya está activado para todos los usuarios | Solo para activar para todos los usuarios |

Digi3D.AI no tiene botón ni orden para activar con un código de activación.

## Activar con aprobación en digi21.net

Este procedimiento es igual en Digi3D.AI, MDTopX y Topcal21:

1. Abre el cuadro de diálogo **Licencias de software**. El programa lo abre automáticamente al iniciarse cuando no encuentra una llave de protección ni una licencia de software activada y eliges **Activar una licencia de software**; también puedes abrirlo con la opción **Ayuda/Licencias de software...**.
2. Pulsa **Activar este equipo**. El programa muestra un código de usuario y abre en el navegador la página de verificación de digi21.net.
3. Comprueba que la página muestra el mismo código de usuario que el programa, inicia sesión en digi21.net, aprueba el registro del ordenador y elige las licencias que quieres activar.
4. Vuelve al programa. El programa detecta la aprobación automáticamente y muestra las licencias del ordenador.

El cuadro de diálogo de Digi3D.AI está descrito en [Licencias de software](../digi3d-ai/referencia/cuadros-de-dialogo/licencias-de-software.md). El cuadro de diálogo de MDTopX y Topcal21 tiene los mismos controles que el cuadro de Digi3D.AI y, además, el botón **Activar con código...**.

## Activar con un código de activación

Un código de activación activa una licencia en un ordenador sin que ningún usuario inicie sesión en digi21.net. Es el procedimiento adecuado para activar muchos ordenadores, por ejemplo los de un aula, con un guion o con una herramienta de distribución de software.

Digi21 entrega los códigos de activación al titular de la licencia. Cada código se asocia a una licencia y puede tener una fecha de caducidad y un rango de direcciones IP (direcciones de red) desde las que se puede usar. Un código no sirve para activar el servidor de licencias local: ese servidor usa un código distinto (consulta [Servidor de licencias local](servidor-de-licencias.md)).

### Desde el cuadro de diálogo de MDTopX o Topcal21

1. Abre el cuadro de diálogo **Licencias de software** con la opción **Ayuda/Licencias de software...**.
2. Pulsa **Activar con código...**.
3. En el cuadro **Activar con un código**, escribe el código de activación en el campo **Código de activación**.
4. Marca **Activar para todos los usuarios de este equipo** si quieres que todos los usuarios de Windows del ordenador usen la activación. Windows pide permisos de administrador. Si no marcas la casilla, solo queda activado el usuario de Windows que ejecuta el programa.
5. Pulsa **Activar**. Si la activación se concede, el cuadro se cierra y el programa muestra las licencias del ordenador. Si falla, el cuadro muestra el motivo.

### Con la orden `/activar-equipo`

La orden `/activar-equipo <código>` de MDTopX y Topcal21 activa el ordenador para todos los usuarios de Windows. La orden no muestra ninguna ventana y requiere un proceso con el grupo Administradores habilitado (una consola abierta con **Ejecutar como administrador**); si el proceso no tiene permisos de administrador, la orden no envía ninguna petición y termina con el código 108.

La orden escribe el resultado en la salida estándar. Los programas son aplicaciones de ventanas, así que, para esperar a que termine el proceso del programa y consultar el código de salida de ese proceso, ejecuta la orden con PowerShell:

```powershell
$proceso = Start-Process -FilePath 'C:\Ruta\de\instalación\Topcal21.exe' -ArgumentList '/activar-equipo', '<código>' -Wait -PassThru
$proceso.ExitCode
```

Sustituye la ruta del ejemplo por la ruta absoluta del ejecutable de MDTopX o Topcal21 y `<código>` por el código de activación. La orden no distingue mayúsculas de minúsculas.

Códigos de salida de `/activar-equipo`:

| Código | Significado |
| --- | --- |
| 100 | El ordenador se ha activado para todos los usuarios de Windows. |
| 101 | El código de activación no es válido, ha caducado o se ha revocado. |
| 102 | El código solo se puede usar desde la red de la organización titular de la licencia: la dirección IP pública del ordenador no está en el rango del código. |
| 103 | La licencia no tiene plazas libres de ordenador. |
| 104 | El ordenador ha alcanzado el número máximo de usuarios de Windows que admite la licencia. |
| 105 | El código corresponde a una licencia que no incluye este programa. |
| 106 | digi21.net ha rechazado la petición por exceso de intentos. Espera un minuto y vuelve a intentarlo. |
| 107 | La activación ha fallado: error de conexión con digi21.net o cualquier otro error. |
| 108 | La orden requiere permisos de administrador. |
| 109 | Falta el código de activación después de la orden. |

## Número de ordenadores de una licencia

Cada licencia tiene un número máximo de ordenadores activados. Cada ordenador con alguna activación vigente de la licencia ocupa una plaza. Todas las activaciones de la licencia en el mismo ordenador, de distintos usuarios de Windows o del ordenador completo, ocupan una sola plaza. La plaza queda libre cuando no queda ninguna activación vigente de la licencia en el ordenador.

La licencia también limita cuántas claves de equipo, es decir, cuántos usuarios de Windows de un mismo ordenador, pueden tener la licencia activada.

Si el cuadro de diálogo o la orden indican que la licencia no tiene plazas libres, solicita a Digi21 que revoque la activación de uno de los ordenadores registrados.

Las activaciones vigentes y sus fechas de fin se consultan en la página **Mis licencias de software** de digi21.net (`https://www.digi21.net/MisLicenciasArgos`, también accesible con el botón **Mis licencias de software** del cuadro de diálogo). En cada licencia, la tabla de ordenadores muestra el ordenador, la cuenta que realizó la activación y la fecha hasta la que la activación está vigente. Según la licencia, las activaciones se comportan de una de estas dos formas:

* **Licencia anclada** (sus activaciones no tienen fecha de fin). El ordenador ocupa su plaza hasta que Digi21 revoca todas las activaciones de la licencia en ese ordenador.
* **Licencia no anclada** (sus activaciones tienen fecha de fin). Cada activación dura hasta su fecha de fin o hasta que Digi21 la revoque. El titular de la licencia (y la cuenta que realizó la activación, si sigue autorizada a activar la licencia) puede posponer la fecha de fin, pero no adelantarla, con el botón **Posponer**. La fecha de fin posterior no puede superar el fin de la licencia ni los 365 días desde el momento en que la pospones.

## Renovación periódica de la autorización de uso

La autorización de uso que recibe un ordenador tiene un plazo de validez. El plazo, llamado días de revalidación, lo fija Digi21 para cada licencia entre 1 y 365 días, ambos incluidos (30 días si Digi21 no indica otro). Si el ordenador tiene activadas varias licencias, el plazo de validez de la autorización es el menor de los plazos de revalidación de las licencias activadas.

* Cuando queda menos de un tercio del plazo y el ordenador tiene conexión a internet, el programa renueva la autorización de uso automáticamente. La renovación incorpora los cambios de la licencia, por ejemplo un módulo añadido.
* Si el ordenador no se conecta a digi21.net antes de que termine el plazo, la autorización caduca y el programa deja de usar las licencias del ordenador. Para volver a usar las licencias del ordenador, conecta el ordenador a internet y pulsa **Renovar la autorización de uso** en el cuadro de diálogo **Licencias de software**. MDTopX y Topcal21 también intentan la renovación al iniciarse cuando la autorización ha caducado y hay conexión.
* La autorización de uso se renueva siempre con digi21.net. Un ordenador de una licencia con sesiones simultáneas en modo «servidor de licencias local» necesita, además del servidor local, conexión con digi21.net antes de que termine el plazo de su autorización. Consulta [Funcionamiento sin conexión a internet](servidor-de-licencias.md#funcionamiento-sin-conexión-a-internet).

Si la hora del ordenador es incorrecta, el programa pide sincronizar la hora con digi21.net: el estado del cuadro de diálogo indica que hay que conectarse a internet y pulsar **Renovar la autorización de uso**.

## Resultados posibles al activar con código

El cuadro **Activar con código** de MDTopX y Topcal21 y la orden `/activar-equipo` usan los mismos resultados. Los textos del cuadro son:

* «El equipo se ha activado para todos los usuarios de Windows.»
* «El código de activación no es válido, ha caducado o se ha revocado. Compruébalo y vuelve a escribirlo.»
* «Este código solo se puede usar desde la red de la organización titular de la licencia.»
* «La licencia no tiene plazas libres. Pide al responsable de la licencia que revoque la autorización de uso de uno de los equipos registrados.»
* «Este ordenador ha alcanzado el número máximo de usuarios de Windows que admite la licencia.»
* «El código corresponde a una licencia que no incluye este programa.»
* «Se han hecho demasiados intentos. Espera un minuto y vuelve a intentarlo.»
* «No se ha podido activar el equipo. Comprueba la conexión a internet con www.digi21.net y vuelve a intentarlo.»
* «Se ha cancelado la petición de permisos de administrador. El equipo no se ha activado para todos los usuarios.» (solo en el cuadro, cuando eliges activar para todos los usuarios y cancelas la petición de permisos de Windows)
