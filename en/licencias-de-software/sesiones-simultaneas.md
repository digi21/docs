# Simultaneous sessions
<!-- id: sesiones-simultaneas -->
<!-- origen: e963cd7674f9227608a009053fe79654b46be058 -->

A software license with simultaneous sessions limits the number of license sessions that can be active at the same time. The limit of simultaneous sessions is independent of the number of computers on which the license is activated: for example, a license can allow 75 activated computers and, at the same time, 20 simultaneous sessions. The 75 computers can start the program, but only 20 use the program at the same time; when 20 sessions are open, the program that requests another session waits until a seat is free.

Each license with simultaneous sessions has this data, which Digi21 sets:

* **Maximum simultaneous sessions**: between 1 and 10,000 sessions, both limits included.
* **Mode**: the service that distributes sessions: digi21.net or a local license server (see [Distribution modes](#distribution-modes)).
* **Minutes without connection**: between 0 and 1,440 minutes, both included (30 minutes if Digi21 does not indicate another value). See [Loss of the connection](#loss-of-the-connection).

Simultaneous sessions are available only in purchase and rental licenses, not in trials. The computer must also have the license activated (see [Activate computers](activar-ordenadores.md)): the activation is the first condition and the session is the second.

## What counts as a session

A session is the combination of a license, a computer and a Windows session. A computer that has two Windows sessions open with the program, for example on a remote desktop server, takes two seats of the license. Within the same Windows session, opening the program several times, or opening several programs of the same license, takes a single seat.

## When the session is requested

MDTopX, Topcal21 and Digi3D.AI request the session at startup, before opening the main window, when the main module of the program only has a license with a simultaneous session. The program keeps and periodically renews the session while the program remains open.

If the license has no free seats, the program shows a dialog box with the **Retry** and **Exit** buttons (**Try again** and **Exit** in Digi3D.AI). The texts indicate the reason; for example, the Digi3D.AI one says "All Digi3D.AI licenses are in use: 20 of 20 programs open at the same time. Close Digi3D.AI on another computer or wait." The MDTopX and Topcal21 text says "All sessions for the *program* license are in use (20 of 20 sessions). Close *program* on another computer or wait."

* **Retry** requests the session again. With the reason "all licenses are in use", the dialog box also requests the session automatically every 30 seconds and shows the seconds left for the next request.
* If the program obtains the session, the dialog box closes and the program continues the startup.
* **Exit** closes the program.

Other reasons that the dialog box can show:

* That the computer does not have the local license server configured (see [Configure the client computers](servidor-de-licencias.md#configure-the-client-computers)).
* That the local license server does not have a valid license for the computer.
* That the license is not activated on the computer or has ended.
* That there is no network connection to digi21.net or to the local license server.

## Distribution modes

Digi21 assigns the mode to each license, and the user does not choose it.

| | "digi21.net" mode | "local license server" mode |
| --- | --- | --- |
| Who distributes the sessions | digi21.net | A server installed on the network of the organization ([Local license server](servidor-de-licencias.md)) |
| Connection the computer needs | Internet, to digi21.net | The local network, to the server |
| Session renewal | Every 3 minutes | Every minute |
| Validity of the session from its last renewal | 10 minutes | 3 minutes |
| Configuration on the computer | None | Address of the server, on each computer |
| Where the holder checks the sessions in use | **My software licenses** page of digi21.net | Web panel and commands of the server |

The server indicates the renewal and validity times in each response; the times in the table are those that digi21.net and the Digi21 local license server use. The program limits both times to the interval from 30 seconds to 30 minutes, both limits included.

A session that is not renewed, because the program closed unexpectedly or because the computer lost the connection, stops taking a seat when its validity ends: at most 10 minutes after the last renewal with digi21.net and 3 minutes with the local license server.

## What the user sees

### Software licenses dialog box

With an open session, the **Software licenses** dialog box shows a session status line, for example "Session: active with *server* (up to 20 programs open at the same time)." Other statuses are "Session: not started.", "Session: no connection with *server*; the modules authorized by this session remain licensed until *time*", "Session: lost; the modules keep their license until *time*" and "Session: no license".

The **Get a license** button requests a session immediately. The **Get a license** button appears only when the main module of the program has a simultaneous session or needs one.

### Loss of the connection

If the program cannot renew the session because it gets no response from the server (digi21.net or local license server), or the server responds with a Hypertext Transfer Protocol (HTTP) error with a code between 500 and 599, both included, or with a too-many-requests warning (HTTP 429), the program shows the warning "*Program* cannot communicate with *server*. The modules authorized by the session remain licensed until *time*. Save your work." The program keeps working and retries the renewal every 30 seconds.

The time limit is the date and time of the last grant or renewal of the session plus two durations: the validity of the session (10 minutes with digi21.net, 3 with the local license server) and the minutes without connection of the license. With 30 minutes without connection, the program keeps the license until 40 minutes after the last renewal with digi21.net and until 33 minutes after the last renewal with the local license server. If the server grants or renews the session before the time limit, the session is active again and the warning disappears.

### Lost session

If the server responds and rejects the session, the program shows a warning with the reason and leaves 10 minutes to save your work. The reasons are, for example, that all licenses are in use (another computer has taken the seat), that the computer is no longer activated for the license, or that the local license server does not grant sessions to the computer. The warning indicates the time limit and says that the program tries to obtain a license every minute. An example of the Digi3D.AI text:

> The server did not renew the Digi3D.AI session: all the licenses are in use (20 of 20 programs open at the same time). Save your work before 12:30; after that time Digi3D.AI cannot use the modules of that license. Digi3D.AI tries to obtain a license every minute.

When the time limit passes without the program recovering the session:

* MDTopX and Topcal21 cannot calculate or save.
* Digi3D.AI cannot use the modules of the license. If the computer loses the editing license with a drawing open, Digi3D.AI shows the [Software licenses](../digi3d-ai/referencia/cuadros-de-dialogo/licencias-de-software.md) dialog box.

The program shows the warning "*Program* no longer has a license. *Program* tries to obtain a license every minute. To request a license manually, click “Get a license” in Help > Software licenses." When the program obtains a session in one of its attempts, the **Software licenses** dialog box shows "*Program* has obtained a license."

## Closing the program

When the program closes, it sends session release requests to the server and waits for the response for at most 2 seconds. The seat is free as soon as the server receives the release request. If the release request does not reach the server, for example because the computer has no connection or the process was ended from Task Manager, the seat is free when the validity of the session ends (10 minutes with digi21.net and 3 minutes with the local license server, from the last renewal).

## Release a session manually

Releasing a session closes on the server the sessions of the same license that share the computer and Windows session with the chosen session. The release does not prevent the program from requesting a new session: if the program is still open on that computer, it requests one on its next renewal and obtains it if a seat is free.

### With digi21.net

The holder of a license in "digi21.net" mode releases sessions from the **My software licenses** page of digi21.net:

1. Sign in to digi21.net with the account that holds the license and open **My software licenses** in the account menu (`https://www.digi21.net/MisLicenciasArgos`).
2. Find the license. The **Simultaneous sessions** section shows how many sessions are in use, for example "Simultaneous sessions: 12 of 20", and a table with the computer, the Windows session and the time of each license session's last renewal.
3. Click **Release** in the row of the session.

Only the holder of the license can release sessions. The page does not show the sessions of licenses in "local license server" mode; in that mode it shows only the maximum of simultaneous sessions.

### With the local license server

The server administrator releases sessions with the **Release** button of the web panel or with the `liberar <session>` command. See [Local license server](servidor-de-licencias.md).
