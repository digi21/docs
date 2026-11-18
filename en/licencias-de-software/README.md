# Software licenses
<!-- id: sistema-licencias-de-software -->
<!-- origen: e57d3223527e5d1eaec72e40fffb2970601a7e24 -->

Software licenses authorize the use of a Digi21 program on a specific computer without a dongle connected to the computer. Software licenses are an alternative to the dongle (the hardware or software key described in [About dongles](../acerca-llaves-proteccion/README.md)).

Digi21 associates each license (a purchase, rental or trial of one or more modules of a program) with a digi21.net account. When you activate a computer, digi21.net issues a signed usage authorization to the computer. The program reads that authorization when it starts and checks which modules it can use.

## Programs that use software licenses

| Program | Where to check the status of the licenses | How to activate the computer |
| --- | --- | --- |
| Digi3D.AI | **Help/Software licenses...** option ([Software licenses](../digi3d-ai/referencia/cuadros-de-dialogo/licencias-de-software.md) dialog box) | **Activate this computer** button or **Activate with a code...** button in the dialog box, or the `/activar-equipo` command |
| MDTopX and Topcal21 | **Help/Software licenses...** option | **Activate this computer** button or **Activate with a code...** button in the dialog box, or the `/activar-equipo` command |

See [Activate computers](activar-ordenadores.md) for the complete procedure.

## How the program chooses between the software license and the dongle

Digi3D.AI, MDTopX and Topcal21 decide the protection when they start, applying these rules in this order:

1. If the computer has a software license activation for the program, either for the Windows user that starts the program or for all users of the computer, the program uses software licenses and does not query any dongle.
2. Otherwise, the program tries to sign in to a dongle: the one connected to the computer or the one on a network dongle server, through the dongle license service (port 1947 of the computer itself). If the dongle has a license for the program, the program uses the dongle.
3. Otherwise, the program shows the **Protection of** *program* dialog box with three buttons: **Activate a software license**, **Select dongle** (**Select key** in MDTopX and Topcal21) and **Exit**. **Activate a software license** opens the Software licenses dialog box to activate the computer. **Select dongle** opens the Select dongle program and, when Select dongle closes, the program that requested the license repeats step 2. **Exit** closes the program.

> [!IMPORTANT]
> While the computer has a software license activation, the program does not look for the dongle on that computer (rule 1).

## What the system includes

* **Computer activation.** Each computer needs a license activation and a usage authorization. The program periodically renews the usage authorization with digi21.net. See [Activate computers](activar-ordenadores.md).
* **Simultaneous sessions.** A license can limit the number of simultaneous sessions, independently of the number of activated computers. See [Simultaneous sessions](sesiones-simultaneas.md).
* **Local license server.** A Windows service installed on the network of the organization distributes the simultaneous sessions without each computer requesting the session from digi21.net. See [Local license server](servidor-de-licencias.md).

## Pages in this section

* [Activate computers](activar-ordenadores.md): activation with approval on digi21.net, activation with a code, the `/activar-equipo` command, number of computers and renewal of the usage authorization.
* [Simultaneous sessions](sesiones-simultaneas.md): what counts as a session, what the program shows when sessions run out or the connection is lost, and how sessions are released.
* [Local license server](servidor-de-licencias.md): installation, activation, administration commands, web panel, configuration of the client computers and troubleshooting. This page is aimed at the IT department of the organization.
