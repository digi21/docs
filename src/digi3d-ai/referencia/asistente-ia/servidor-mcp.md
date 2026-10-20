# Servidor MCP
<!-- id: servidor-mcp -->

El **servidor MCP** permite que un cliente de IA externo a Digi3D.AI —por ejemplo **Claude Code** o
**Claude Desktop**— consulte y modifique el dibujo de una instancia abierta de Digi3D.AI. MCP (*Model
Context Protocol*) es el protocolo que usan estos clientes para conectarse a herramientas externas.

El cliente trabaja con las mismas posibilidades que el [panel de chat con IA](README.md): ejecuta
código Python sobre el dibujo con la API de Digi3D.AI, lanza órdenes, abre y cierra dibujos, controla la
ventana fotogramétrica y ve las dos ventanas. Tú ves en Digi3D.AI lo que hace el cliente mientras
trabaja.

## Activar el servidor

El servidor está desactivado por omisión. Para activarlo:

1. Selecciona **Herramientas/Configuración...**. Se abre el cuadro de diálogo
   [Configuración](../cuadros-de-dialogo/configuracion/README.md).
2. Abre la categoría [**Servidor MCP**](../cuadros-de-dialogo/configuracion/servidor-mcp/README.md).
3. Cambia [**Activado**](../cuadros-de-dialogo/configuracion/servidor-mcp/activar-servidor-mcp.md) a
   **Sí**.
4. Si otro programa usa el puerto 4457, escribe otro número en
   [**Puerto**](../cuadros-de-dialogo/configuracion/servidor-mcp/puerto-del-servidor-mcp.md).
5. Pulsa **Aceptar**. Si has cambiado **Activado**, **Puerto** o **Token**, Digi3D.AI reinicia el
   servidor.

Cuando el servidor arranca, Digi3D.AI escribe en la ventana **Resultados** la dirección
`http://127.0.0.1:4457/mcp`, con el puerto configurado. Si el puerto está ocupado, escribe en esa
ventana que el servidor no ha arrancado: otro programa —normalmente otra instancia de Digi3D.AI— usa ese
puerto. Cambia el número del puerto o cierra la otra instancia.

Digi3D.AI recuerda si el servidor está activado y lo arranca cada vez que se inicia el programa.

## Conectar Claude Code

1. En la categoría **Servidor MCP** del cuadro Configuración, pulsa el botón **Copiar** de la opción
   [**Claude Code**](../cuadros-de-dialogo/configuracion/servidor-mcp/conectar-claude-code.md). Digi3D.AI
   copia al portapapeles una orden como esta:

   ```
   claude mcp add --transport http digi3d http://127.0.0.1:4457/mcp --header "Authorization: Bearer 3f9a…"
   ```

2. Pega la orden en una consola y ejecútala. Claude Code guarda el servidor con el nombre `digi3d`.
3. Abre Claude Code y pide algo sobre el dibujo, por ejemplo *«dibuja en Digi3D una línea de (0,0,0) a
   (100,100,0) con el código 020100 y haz una captura de la ventana»*.

La orden incluye el [**token**](../cuadros-de-dialogo/configuracion/servidor-mcp/token-del-servidor-mcp.md),
una clave que Digi3D.AI genera la primera vez que se activa el servidor. Digi3D.AI rechaza cualquier
petición que no lleve ese token.

## Conectar Claude Desktop

Claude Desktop no se conecta directamente a una dirección HTTP local: lanza un programa y habla con él
por su entrada y su salida estándar. Ese programa es `Digi3D.Mcp.exe`, que está en la carpeta de
instalación de Digi3D.AI y reenvía cada mensaje a la instancia de Digi3D.AI abierta.

1. En la categoría **Servidor MCP** del cuadro Configuración, pulsa el botón **Copiar** de la opción
   [**Claude Desktop**](../cuadros-de-dialogo/configuracion/servidor-mcp/conectar-claude-desktop.md).
   Digi3D.AI copia al portapapeles un fragmento como este:

   ```json
   {
     "mcpServers": {
       "digi3d": {
         "command": "C:\\Program Files\\Digi21.net\\Digi3D.AI\\Digi3D.Mcp.exe"
       }
     }
   }
   ```

2. En Claude Desktop, abre **Settings → Developer → Edit Config**. Se abre el archivo
   `claude_desktop_config.json`.
3. Añade la entrada `digi3d` dentro de `mcpServers`. Si el archivo no tiene `mcpServers`, pega el
   fragmento completo.
4. Reinicia Claude Desktop.

`Digi3D.Mcp.exe` no necesita el token: lo lee del archivo `%LOCALAPPDATA%\Digi3D.NET\mcp.json`, que
Digi3D.AI escribe al arrancar el servidor y borra al pararlo. Si Digi3D.AI no está abierto, el cliente
recibe un error que lo indica.

## Herramientas que ofrece Digi3D.AI

| Herramienta | Qué hace |
|---|---|
| `run_python` | Ejecuta código Python en el intérprete de Digi3D.AI, con el mismo entorno restringido que el panel de chat. Devuelve lo que imprime el código y los errores. Es la herramienta principal: consulta, crea, modifica y borra geometrías. |
| `run_command` | Ejecuta una orden de Digi3D.AI igual que si se escribiera en la línea de órdenes, por ejemplo `NOMBRE=parámetros`. Indica si la orden ha terminado, ha fallado, no existe o se ha quedado activa esperando datos. Si la orden describe sus parámetros y los indicados no corresponden a ninguna de sus formas, o corresponden a una forma que abre un cuadro de diálogo, no la ejecuta y devuelve un error con las formas que admite. Si solo está abierta la ventana fotogramétrica, ejecuta las órdenes de esa ventana. |
| `list_commands` | Lista las órdenes con su título y su descripción. Admite un filtro de texto. |
| `get_command_help` | Devuelve la página de la ayuda de una orden y las formas de parámetros que admite: el nombre y el tipo de cada parámetro, los parámetros que dependen del valor de otro, lo que hace cada valor y las formas que abren un cuadro de diálogo. |
| `get_state` | Devuelve el estado de la ventana de dibujo (archivos cargados, archivo activo, número de geometrías, códigos activos, sistema de coordenadas, extensión, escala activa, equidistancia y orden en curso), de la ventana fotogramétrica (modelo, sensor, posición del cursor, zoom y cámara 3D) y del proyecto fotogramétrico cargado. |
| `view_screenshot` | Devuelve una imagen de la ventana de dibujo o de la ventana fotogramétrica, para que el cliente compruebe lo que ha dibujado o dónde está el cursor. |
| `get_api_reference` | Devuelve la referencia completa de la API de Python de Digi3D.AI. También está disponible como recurso `digi3d://api-reference`. |

Al conectarse, el cliente recibe además las mismas instrucciones de uso de la API que recibe el
asistente del panel de chat.

## Qué puede y qué no puede hacer el cliente

- **Dibujar y editar.** El cliente crea puntos, líneas, polígonos y textos con `run_python`, les asigna
  códigos y los añade al dibujo. También modifica y borra geometrías.
- **Abrir y cerrar dibujos.** El cliente cierra el dibujo abierto y abre otro archivo, con su tabla de
  códigos y sus parámetros. Digi3D.AI abre un solo dibujo a la vez. Los parámetros que el cliente no
  indica toman los últimos valores usados en el cuadro de abrir dibujo.
- **Ventana fotogramétrica.** El cliente carga un proyecto fotogramétrico y uno de sus modelos, abre
  un archivo `.d3d`, mueve el cursor a unas coordenadas o al punto de origen, cambia el zoom, pasa al
  modelo o a la pasada siguiente o anterior y, en los modelos de nube de puntos y de ortofoto
  estereoscópica, cambia la posición y la orientación de la cámara.
- **Órdenes interactivas.** Una orden que espera que el usuario marque puntos con el ratón o con el
  pedal se queda activa, y el cliente no puede marcarlos. Completa o cancela esa orden en Digi3D.AI con
  **Esc**. Para dibujar, el cliente usa `run_python`.
- **Cuadros de diálogo.** Si una orden abre un cuadro de diálogo, la petición del cliente espera a que
  lo cierres. Abrir un dibujo, un proyecto o un modelo no muestra ninguno: lo que Digi3D.AI
  preguntaría recibe la respuesta prudente y el cliente recibe un aviso (ver
  [Abrir sin cuadros de diálogo](../../programacion/python/referencia/digi3d/functions.md#abrir-sin-cuadros-de-diálogo)).
  El cliente no puede abrir menús ni rellenar cuadros de diálogo.
- **Una operación cada vez.** Digi3D.AI ejecuta las peticiones de una en una. Si llega una petición
  mientras se espera la respuesta a un cuadro de diálogo, el cliente recibe un aviso de que Digi3D.AI
  está ocupado y puede repetirla después.
- **Variables de Python.** Las variables que define el código del cliente se conservan entre
  peticiones. El panel de chat usa el mismo espacio de variables: empezar una conversación nueva en el
  panel las borra.

## Deshacer y confirmaciones

Cada llamada a `run_python` o a `run_command` es un paso de **UNDO**.

Las operaciones que piden confirmación en el panel de chat —borrar geometrías, borrar o sobrescribir
archivos, ejecutar comandos del sistema y acceder a la red— también la piden cuando las ejecuta un
cliente MCP: Digi3D.AI muestra el cuadro **Confirmación de seguridad** y la petición espera tu
respuesta. Si marcas **Permitir el resto de operaciones de esta conversación**, Digi3D.AI no vuelve a
preguntar a ningún cliente MCP hasta que el servidor se reinicie.

## Seguridad

- El servidor solo acepta conexiones del propio equipo (`127.0.0.1`). Otros equipos de la red no
  pueden conectarse.
- Cada petición debe llevar el token. Pulsa **Regenerar** en la opción **Token** del cuadro Configuración y **Aceptar** si crees que otra
  persona lo conoce; después vuelve a configurar los clientes, porque el token anterior deja de valer.
- El servidor rechaza las peticiones que vienen de una página web abierta en el navegador.
- El token se guarda sin cifrar en el registro de _Windows_ del usuario y en
  `%LOCALAPPDATA%\Digi3D.NET\mcp.json`. Cualquier programa que se ejecute con tu usuario puede leerlo.

## Ajustes en el registro

Las opciones de la categoría [Servidor MCP](../cuadros-de-dialogo/configuracion/servidor-mcp/README.md)
del cuadro Configuración se guardan en la clave
`HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration`. Esta tabla permite cambiarlas fuera
del cuadro, por ejemplo con una herramienta de despliegue. Digi3D.AI las lee al arrancar.

| Valor | Tipo | Por omisión | Efecto |
|---|---|---|---|
| `McpActivo` | DWORD | 0 | 1 arranca el servidor MCP al iniciar Digi3D.AI. |
| `McpPuerto` | DWORD | 4457 | Puerto en el que escucha el servidor. |
| `McpToken` | Cadena | (vacío) | Token que deben enviar los clientes. Si está vacío, Digi3D.AI genera uno al arrancar el servidor. |
| `ClaudeChatConfirmaciones` | DWORD | 1 | 0 desactiva el cuadro **Confirmación de seguridad**, también para los clientes MCP. No se recomienda. |

## Véase también

- [Asistente con IA](README.md)
- [Programación en Python](../../programacion/python/README.md): la API que usa el cliente.
