# Claude Code
<!-- id: conectar-claude-code -->

El botón **Copiar** copia al portapapeles la orden que conecta Claude Code con el [servidor MCP](../../../asistente-ia/servidor-mcp.md) (Model Context Protocol). Antes de copiar la orden, Digi3D.AI guarda los valores de **Activado**, **Puerto** y **Token** tal como aparecen en el cuadro de diálogo y, si ha cambiado alguno de esos tres valores, reinicia el servidor. La orden copiada permite conectar con el servidor aunque pulses **Cancelar** después de copiar la orden con Copiar.

## Uso

1. Activa la opción [Activado](activar-servidor-mcp.md).
2. Pulsa **Copiar**.
3. Pega la orden en una consola y ejecútala. Claude Code guarda el servidor con el nombre `digi3d`.

La orden copiada tiene este formato:

```
claude mcp add --transport http digi3d http://127.0.0.1:<puerto>/mcp --header "Authorization: Bearer <token>"
```

Si el token está vacío, al pulsar **Copiar**, Digi3D.AI crea un token nuevo y lo guarda antes de copiar la orden. Si el portapapeles no está disponible, Digi3D.AI muestra el mensaje «No se ha podido copiar al portapapeles.».

Más información en [Servidor MCP](../../../asistente-ia/servidor-mcp.md).
