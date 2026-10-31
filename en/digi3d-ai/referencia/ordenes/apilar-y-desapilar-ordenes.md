# Pushing and popping commands
<!-- id: apilar-y-desapilar-ordenes -->
<!-- origen: 7b839259efec5b6334ac7ac89433f01afdf308e0 -->

Digi3D.AI stores commands in a stack.

Running a command places it on top of the stack. Finishing removes it. When the stack is empty, the application is in [ready mode](formas-de-ejecutar-una-orden/de-manera-automatica/modo-preparado.md).

Commands are removed in reverse execution order. If you run a first, second, and third command, they are popped third, second, then first.

Running another command before the current one finishes pushes the new command above it. When the new command ends, you can resume the interrupted command.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/apilar_desapilar_ordenes.mp4" type="video/mp4"></video>
