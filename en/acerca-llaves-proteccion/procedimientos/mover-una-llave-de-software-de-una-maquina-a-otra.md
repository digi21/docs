# Move a software dongle between machines
<!-- id: mover-una-llave-de-software-de-una-maquina-a-otra -->
<!-- origen: 0bb182d3b19972311d933a3e702ba424d9acf692 -->

**Software** dongles can be moved between computers with [ActualizarLlaveLDK.exe](http://digi21.blob.core.windows.net/download/ActualizarLlaveLDK.exe).

The process collects information from the recipient machine, generates a transfer file on the hosting machine intended **exclusively** for that recipient, then applies it on the recipient.

## Step 1: Collect recipient machine information

On the **machine receiving the dongle**:

1. Run _ActualizarLlaveLDK.exe_.
2. Open _Transfer License_.
3. Under _Collect information about the recipient computer_, click the three-dot (`…`) button in _Save recipient information to_ and specify an _.id_ file identifying the recipient.
4. Copy this _.id_ to the computer hosting the dongle.

## Step 2: Generate the transfer file on the hosting machine

On the **computer hosting the dongle**:

5. Open _ActualizarLlaveLDK.exe_.
6. Open _Transfer License_.
7. Under _Step 2: On the computer…_, select the dongle to move.
8. In _Read the recipient information file from_, select the recipient's _.id_ copied earlier.
9. In _Generate the license transfer file to_, specify the output filename. Its extension is _.h2h_.

> [!WARNING]
> After transfer, **the license disappears from the source machine's memory**. Losing the _.h2h_ just created means **you cannot recover the dongle**. Keep it safe until the whole process is complete.

10. Copy _.h2h_ to the recipient machine.

> [!IMPORTANT]
> The _.h2h_ **can only be loaded on the recipient machine**, because it was created using that machine's _ID_. It cannot be used on another computer.

## Step 3: Apply the file on the recipient

Back on the **recipient machine**:

11. Run _ActualizarLlaveLDK.exe_ again, this time opening the second tab: _Apply License File_.
12. In _Update file_, select the _.h2h_ created on the hosting machine.
13. Click _Apply update_.

The dongle is now on the recipient machine.
