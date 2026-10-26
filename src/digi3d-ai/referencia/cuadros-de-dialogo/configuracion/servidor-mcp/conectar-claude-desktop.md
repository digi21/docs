# Claude Desktop
<!-- id: conectar-claude-desktop -->

El botón **Copiar** copia al portapapeles el fragmento de `claude_desktop_config.json` que arranca el puente `Digi3D.Mcp.exe`. Claude Desktop no se conecta a una dirección HTTP local: ejecuta ese programa y se comunica con él por su entrada y su salida estándar. El puente reenvía los mensajes al [servidor MCP](../../../asistente-ia/servidor-mcp.md) de la instancia abierta de Digi3D.AI.

## Uso

1. Activa la opción [Activado](activar-servidor-mcp.md).
2. Pulsa **Copiar**. Antes de copiar el fragmento de configuración de Claude Desktop, Digi3D.AI guarda los valores de **Activado**, **Puerto** y **Token** y, si ha cambiado alguno de esos tres valores, reinicia el servidor.
3. En Claude Desktop, abre **Settings → Developer → Edit Config**. Se abre el archivo `claude_desktop_config.json`.
4. Añade la entrada `digi3d` dentro de `mcpServers`. Si el archivo no tiene `mcpServers`, pega el fragmento completo.
5. Reinicia Claude Desktop.

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

El fragmento no contiene el puerto ni el token: `Digi3D.Mcp.exe` los lee del archivo `%LOCALAPPDATA%\Digi3D.NET\mcp.json`, que Digi3D.AI escribe al iniciar el servidor y borra al detener el servidor. Si Digi3D.AI no está abierto, Claude Desktop recibe un error que indica que Digi3D.AI no está abierto.

Si el token está vacío, al pulsar **Copiar**, Digi3D.AI crea un token nuevo y lo guarda antes de copiar el fragmento. Si el portapapeles no está disponible, Digi3D.AI muestra el mensaje «No se ha podido copiar al portapapeles.».
