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

1. Abre el panel de chat con **Ventana → Chat con IA**.
2. Pulsa el botón **⚙** de la cabecera del panel.
3. En el bloque **Servidor MCP**, marca **Activado**.
4. Si el puerto 4457 está ocupado por otro programa, escribe otro número en **Puerto** y pulsa
   **Aplicar**.

Debajo de las casillas aparece el estado del servidor: **Escuchando en http://127.0.0.1:4457/mcp**
cuando funciona. Si aparece **el puerto está ocupado**, otro programa —normalmente otra instancia de
Digi3D.AI— usa ese puerto: cambia el número del puerto o cierra la otra instancia.

Digi3D.AI recuerda si el servidor está activado y lo arranca cada vez que se inicia el programa. Cuando
el servidor arranca, Digi3D.AI escribe la dirección en la ventana **Resultados**.

## Conectar Claude Code

1. En el bloque **Servidor MCP**, pulsa **Copiar orden para Claude Code**. Digi3D.AI copia al
   portapapeles una orden como esta:

   ```
   claude mcp add --transport http digi3d http://127.0.0.1:4457/mcp --header "Authorization: Bearer 3f9a…"
   ```

2. Pega la orden en una consola y ejecútala. Claude Code guarda el servidor con el nombre `digi3d`.
3. Abre Claude Code y pide algo sobre el dibujo, por ejemplo *«dibuja en Digi3D una línea de (0,0,0) a
   (100,100,0) con el código 020100 y haz una captura de la ventana»*.

La orden incluye el **token**, una clave que Digi3D.AI genera la primera vez que se activa el servidor.
Digi3D.AI rechaza cualquier petición que no lleve ese token.

## Conectar Claude Desktop

Claude Desktop no se conecta directamente a una dirección HTTP local: lanza un programa y habla con él
por su entrada y su salida estándar. Ese programa es `Digi3D.Mcp.exe`, que está en la carpeta de
instalación de Digi3D.AI y reenvía cada mensaje a la instancia de Digi3D.AI abierta.

1. En el bloque **Servidor MCP**, pulsa **Copiar configuración de Claude Desktop**. Digi3D.AI copia al
   portapapeles un fragmento como este:

   ```json
   {
     "mcpServers": {
       "digi3d": {
         "command": "C:\\Program Files\\Digi21\\Digi3D.AI\\Digi3D.Mcp.exe"
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
| `run_command` | Ejecuta una orden de Digi3D.AI igual que si se escribiera en la línea de órdenes, por ejemplo `NOMBRE=parámetros`. Indica si la orden ha terminado, ha fallado, no existe o se ha quedado activa esperando datos. Si solo está abierta la ventana fotogramétrica, ejecuta las órdenes de esa ventana. |
| `list_commands` | Lista las órdenes con su título y su descripción. Admite un filtro de texto. |
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
  lo cierres. Lo mismo ocurre si al abrir un dibujo, un proyecto o un modelo Digi3D.AI pregunta algo,
  por ejemplo el sistema de coordenadas de un proyecto que no lo tiene. El cliente no puede abrir menús
  ni rellenar cuadros de diálogo.
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
- Cada petición debe llevar el token. Pulsa **Regenerar token** si crees que otra persona lo conoce;
  después vuelve a configurar los clientes, porque el token anterior deja de valer.
- El servidor rechaza las peticiones que vienen de una página web abierta en el navegador.
- El token se guarda sin cifrar en el registro de _Windows_ del usuario y en
  `%LOCALAPPDATA%\Digi3D.NET\mcp.json`. Cualquier programa que se ejecute con tu usuario puede leerlo.

## Ajustes en el registro

Los valores están en la clave `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\Configuration`. Sirven,
por ejemplo, si el panel de chat está desactivado con `CrearPanelChat`. Digi3D.AI los lee al arrancar.

| Valor | Tipo | Por omisión | Efecto |
|---|---|---|---|
| `McpActivo` | DWORD | 0 | 1 arranca el servidor MCP al iniciar Digi3D.AI. |
| `McpPuerto` | DWORD | 4457 | Puerto en el que escucha el servidor. |
| `McpToken` | Cadena | (vacío) | Token que deben enviar los clientes. Si está vacío, Digi3D.AI genera uno al arrancar el servidor. |
| `ClaudeChatConfirmaciones` | DWORD | 1 | 0 desactiva el cuadro **Confirmación de seguridad**, también para los clientes MCP. No se recomienda. |

## Véase también

- [Asistente con IA](README.md)
- [Programación en Python](../../programacion/python/README.md): la API que usa el cliente.
