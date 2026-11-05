# Interactive commands
<!-- id: ordenes-interactivas -->
<!-- origen: 47da1ac5829b7260179e00d78f81b485851dda04 -->

These commands require you to digitize a point with the input device or enter values in dialog boxes or windows.

An interactive command stays in the [command stack](apilar-y-desapilar-ordenes.md) while it waits for your data, unlike a [non-interactive command](ordenes-no-interactivas.md), which runs and ends without asking you for any data, and unlike a [variable](variables/README.md), which changes or queries a configuration value. Some interactive commands end after receiving the data they request; others remain active to request more points or selections until you [cancel them](formas-de-cancelar-una-orden.md).

The **Command type** row of the **Command characteristics** table on each page indicates whether the command is interactive. The **Repeats automatically** row indicates whether Digi3D.AI runs the command again when the command ends, without you typing it again.

Some commands are interactive when you run them without parameters and non-interactive when you run them with parameters. The **Command type** row of those commands indicates whether they are interactive when run with or without parameters.