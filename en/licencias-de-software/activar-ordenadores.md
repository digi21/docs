# Activate computers
<!-- id: activar-ordenadores -->
<!-- origen: 10dd5894cf20c7c166c2e0845f6dcae4a8e13e20 -->

To use a software license on a computer, you must activate the license on that computer. An activation registers the cryptographic key of the computer on digi21.net and associates the computer with the license. After you activate the computer, the computer receives a usage authorization from digi21.net, which the program renews periodically.

There are two activation procedures:

| | With approval on digi21.net | With an activation code |
| --- | --- | --- |
| Who runs it | A user with a digi21.net account who is the license holder or whom the holder has authorized to activate it | A user who has an activation code delivered by Digi21 |
| Sign-in to digi21.net | Yes, in the web browser | No |
| Programs | Digi3D.AI, MDTopX and Topcal21 | Digi3D.AI, MDTopX and Topcal21 |
| Windows users who can use the activation | The Windows user that runs the program | The Windows user that runs the program or, if you activate for all users, all Windows users of the computer |
| Windows administrator permissions | No, except to add licenses to a computer that is already activated for all users | Only to activate for all users |

## Activate with approval on digi21.net

This procedure is the same in Digi3D.AI, MDTopX and Topcal21:

1. Open the **Software licenses** dialog box. The program opens it automatically at startup when it finds neither a dongle nor an activated software license and you choose **Activate a software license**; you can also open it with the **Help/Software licenses...** option.
2. Click **Activate this computer**. The program shows a user code and opens the digi21.net verification page in the web browser.
3. Check that the page shows the same user code as the program, sign in to digi21.net, approve the registration of the computer and choose the licenses you want to activate.
4. Return to the program. The program detects the approval automatically and shows the licenses of the computer.

The Digi3D.AI dialog box is described in [Software licenses](../digi3d-ai/referencia/cuadros-de-dialogo/licencias-de-software.md). The Digi3D.AI, MDTopX and Topcal21 dialog boxes have the same controls, including the **Activate with a code...** button.

## Activate with an activation code

An activation code activates a license on a computer without any user signing in to digi21.net. An activation code lets a script or software distribution tool activate multiple computers, for example those of a classroom, without signing in to digi21.net on each computer.

Digi21 delivers the activation codes to the license holder. Each code is associated with a license and can have an expiration date and a range of IP addresses (network addresses) from which it can be used. A code does not activate the local license server: that server uses a different code (see [Local license server](servidor-de-licencias.md)).

### From the Digi3D.AI, MDTopX or Topcal21 dialog box

1. Open the **Software licenses** dialog box with the **Help/Software licenses...** option.
2. Click **Activate with a code...**.
3. In the **Activate with a code** dialog box, type the activation code in the **Activation code** field.
4. Select **Activate for all users of this computer** if you want all Windows users of the computer to use the activation. Windows asks for administrator permissions. If you do not select the check box, the activation is available only to the Windows user running the program. If the program already uses an activation for all users of the computer, the check box appears selected and disabled.
5. Click **Activate**. If the activation is granted, the dialog box closes and the program shows the licenses of the computer. If the activation fails, the dialog box shows the reason for the failure.

### With the `/activar-equipo` command

The `/activar-equipo <code>` command of Digi3D.AI, MDTopX and Topcal21 activates the computer for all Windows users. The command shows no window and requires a process with the Administrators group enabled (a console opened with **Run as administrator**); if the process has no administrator permissions, the command sends no request and ends with code 108.

The command writes the result to the standard output. The programs are windowed applications, so, to wait for the program process to end and read its exit code, run the command with PowerShell:

```powershell
$process = Start-Process -FilePath 'C:\Path\to\installation\Topcal21.exe' -ArgumentList '/activar-equipo', '<code>' -Wait -PassThru
$process.ExitCode
```

Replace the path in the example with the absolute path of the program executable (`Digi3D.exe` in Digi3D.AI, `MDTopX.exe` in MDTopX and `Topcal21.exe` in Topcal21) and `<code>` with the activation code. The `/activar-equipo` command name is not case-sensitive.

Exit codes of `/activar-equipo`:

| Code | Meaning |
| --- | --- |
| 100 | The computer has been activated for all Windows users. |
| 101 | The activation code is not valid, has expired or has been revoked. |
| 102 | The code can only be used from the network of the organization that holds the license: the public IP address of the computer is not in the range of the code. |
| 103 | The license has no free computer seats. |
| 104 | The computer has reached the maximum number of Windows users that the license allows. |
| 105 | The code belongs to a license that does not include this program. |
| 106 | digi21.net rejected the request because of too many attempts. Wait a minute and try again. |
| 107 | The activation failed: connection error with digi21.net or any other error. |
| 108 | The command requires administrator permissions. |
| 109 | The activation code is missing after the command. |

## Number of computers of a license

Each license has a maximum number of activated computers. Each computer with at least one current activation of the license takes one seat. All activations of the license on the same computer, for different Windows users or for the whole computer, take a single seat. The seat is freed when the computer has no current activation of the license left.

The license also limits how many computer keys, that is, how many Windows users of the same computer, can have the license activated.

If the dialog box or the command says that the license has no free seats, ask Digi21 to revoke the activation of one of the registered computers.

The current activations and their end dates are shown on the **My software licenses** page of digi21.net (`https://www.digi21.net/MisLicenciasArgos`, also available with the **My software licenses** button of the dialog box). For each license, the table of computers shows the computer, the account that performed the activation and the date until which the activation is current. Depending on the license, activations behave in one of these two ways:

* **License with activations that do not expire** (its activations have no end date). The computer keeps its seat until Digi21 revokes all activations of the license on that computer.
* **License with expiring activations** (its activations have an end date). Each activation lasts until its end date or until Digi21 revokes it. The license holder (and the account that performed the activation, if it is still authorized to activate the license) can postpone the end date, but not bring it forward, with the **Postpone** button. The later end date cannot exceed the end of the license or 365 days from the moment you postpone it.

## Periodic renewal of the usage authorization

The usage authorization that a computer receives has a validity period. The period, called revalidation days, is set by Digi21 for each license between 1 and 365 days, both included (30 days if Digi21 does not indicate another value). If the computer has several licenses activated, the validity period of the authorization is the shortest of the revalidation periods of the activated licenses.

* When less than a third of the period remains and the computer has an internet connection, the program renews the usage authorization automatically. The renewal incorporates the changes of the license, for example an added module.
* If the computer does not connect to digi21.net before the period ends, the authorization expires and the program stops using the licenses of the computer. To use the licenses of the computer again, connect the computer to the internet and click **Renew the usage authorization** in the **Software licenses** dialog box. Digi3D.AI, MDTopX and Topcal21 also try the renewal at startup when the authorization has expired and a connection is available.
* The usage authorization is always renewed with digi21.net. A computer of a license with simultaneous sessions in "local license server" mode needs, in addition to the local server, a connection to digi21.net before the period of its authorization ends. See [Operation without an internet connection](servidor-de-licencias.md#operation-without-an-internet-connection).

If the clock of the computer is incorrect, the program asks to synchronize the time with digi21.net: the status of the dialog box says that you must connect to the internet and click **Renew the usage authorization**.

## Possible results when activating with a code

The **Activate with a code** dialog box and the `/activar-equipo` command of Digi3D.AI, MDTopX and Topcal21 use the same results. The messages of the dialog box and of the command are:

* "The computer has been activated for all Windows users." (only the command writes this text; when the activation is granted, the dialog box closes without showing it)
* "The activation code is not valid, has expired or has been revoked. Check it and type it again."
* "This code can only be used from the network of the organization that holds the license."
* "The license has no free seats. Ask the license administrator to revoke the usage authorization of one of the registered computers."
* "This computer has reached the maximum number of Windows users allowed by the license."
* "The code belongs to a license that does not include this program."
* "Too many attempts. Wait a minute and try again."
* "The computer could not be activated. Check the internet connection to www.digi21.net and try again."
* "The request for administrator permission was canceled. The computer has not been activated for all users." (only in the dialog box, when you choose to activate for all users and cancel the Windows permission request)
