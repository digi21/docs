# Claude Desktop
<!-- id: conectar-claude-desktop -->

El botón **Copiar** copia al portapapeles el fragmento de `claude_desktop_config.json` que arranca el puente `Digi3D.Mcp.exe`. Claude Desktop no se conecta a una dirección HTTP local: ejecuta ese programa y se comunica con él por su entrada y su salida estándar. El puente reenvía los mensajes al [servidor MCP](../../../asistente-ia/servidor-mcp.md) de la instancia abierta de Digi3D.AI.

## Uso

1. Pulsa **Copiar**.
2. En Claude Desktop, abre **Settings → Developer → Edit Config**. Se abre el archivo `claude_desktop_config.json`.
3. Añade la entrada `digi3d` dentro de `mcpServers`. Si el archivo no tiene `mcpServers`, pega el fragmento completo.
4. Reinicia Claude Desktop.
5. Pulsa **Aceptar** en el cuadro Configuración para activar el servidor si no lo estaba.

El fragmento copiado tiene este formato. La ruta es la de la carpeta donde está instalado Digi3D.AI:

```json
{
  "mcpServers": {
    "digi3d": {
      "command": "C:\\Program Files\\Digi21.net\\Digi3D.AI\\Digi3D.Mcp.exe"
    }
  }
}
```

El fragmento no contiene el puerto ni el token: `Digi3D.Mcp.exe` los lee del archivo `%LOCALAPPDATA%\Digi3D.NET\mcp.json`, que Digi3D.AI escribe al arrancar el servidor y borra al pararlo. Si Digi3D.AI no está abierto, el cliente recibe un error que lo indica.

Si el token está vacío, el botón crea uno nuevo antes de copiar. Si el portapapeles no está disponible, Digi3D.AI muestra el mensaje «No se ha podido copiar al portapapeles.».
