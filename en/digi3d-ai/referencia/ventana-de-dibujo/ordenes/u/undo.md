# UNDO
<!-- id: undo -->
<!-- origen: b57c97bfc61c9647255e2516a582079db762b3b9 -->

Undo the most recent actions performed by the application.

## Parameters

Does not accept parameters.

## Notes

The application stores executed commands on a stack, with each command above the previous one. UNDO undoes commands in reverse execution order: the last command first, then the one before it, and so on.

Each execution of UNDO undoes only one command.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/Undo |
| Toolbar | Undo |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [REDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/redo.md) |
| Internal name | {57B9A609-A048-42f6-AB11-8BD2DDBC9CE2} |
