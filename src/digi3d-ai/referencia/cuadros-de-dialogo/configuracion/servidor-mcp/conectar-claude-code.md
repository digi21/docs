# Claude Code
<!-- id: conectar-claude-code -->

El botón **Copiar** copia al portapapeles la orden que conecta Claude Code con el [servidor MCP](../../../asistente-ia/servidor-mcp.md). Antes de copiar, el botón guarda **Activado**, **Puerto** y **Token** tal como los muestra el cuadro y, si alguno ha cambiado, reinicia el servidor: la orden copiada conecta aunque después pulses **Cancelar**.

## Uso

1. Activa la opción [Activado](activar-servidor-mcp.md).
2. Pulsa **Copiar**.
3. Pega la orden en una consola y ejecútala. Claude Code guarda el servidor con el nombre `digi3d`.

La orden copiada tiene este formato:

```
claude mcp add --transport http digi3d http://127.0.0.1:<puerto>/mcp --header "Authorization: Bearer <token>"
```

Si el token está vacío, el botón crea uno nuevo y lo guarda antes de copiar. Si el portapapeles no está disponible, Digi3D.AI muestra el mensaje «No se ha podido copiar al portapapeles.».

Más información en [Servidor MCP](../../../asistente-ia/servidor-mcp.md).
