# Claude Code
<!-- id: conectar-claude-code -->

El botón **Copiar** copia al portapapeles la orden que conecta Claude Code con el [servidor MCP](../../../asistente-ia/servidor-mcp.md). La orden usa el puerto y el token que muestra el cuadro, aunque todavía no hayas pulsado **Aceptar**.

## Uso

1. Pulsa **Copiar**.
2. Pega la orden en una consola y ejecútala. Claude Code guarda el servidor con el nombre `digi3d`.
3. Pulsa **Aceptar** en el cuadro Configuración para guardar el puerto y el token, y activar el servidor si no lo estaba.

La orden copiada tiene este formato:

```
claude mcp add --transport http digi3d http://127.0.0.1:<puerto>/mcp --header "Authorization: Bearer <token>"
```

Si el token está vacío, el botón crea uno nuevo antes de copiar. Si el portapapeles no está disponible, Digi3D.AI muestra el mensaje «No se ha podido copiar al portapapeles.».

Más información en [Servidor MCP](../../../asistente-ia/servidor-mcp.md).
