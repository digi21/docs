# Configurar Ollama

[Ollama](https://ollama.com) es un programa gratuito y de código abierto que ejecuta modelos de
lenguaje como un servicio de Windows. Con Ollama, el [asistente con IA](README.md) funciona sin
conexión a internet, sin coste de uso y sin enviar los datos del dibujo fuera de tu red.

A diferencia de [LM Studio](lm-studio.md), Ollama se maneja desde la línea de comandos y arranca con
Windows. Por eso encaja bien como **servidor de la empresa**: un equipo con una tarjeta gráfica potente
ejecuta el modelo y varios puestos de Digi3D.AI se conectan a él.

Este tutorial usa el modelo **gpt-oss:20b** de OpenAI, que admite el uso de herramientas y cabe en una
tarjeta gráfica de 16 GB o más.

## Requisitos

- Una tarjeta gráfica con **al menos 16 GB de memoria de vídeo** (VRAM) para gpt-oss:20b. Con menos
  memoria, Ollama reparte el modelo entre la tarjeta gráfica y la memoria del sistema, pero la respuesta
  es mucho más lenta.
- Unos **14 GB libres en disco** para el modelo.
- **Contexto de al menos 32.768 *tokens*.** El contexto es la cantidad de texto que el modelo puede
  tener en cuenta a la vez. Las instrucciones que Digi3D.AI envía al asistente ocupan unos 22.000
  *tokens*. El contexto por omisión de Ollama es menor, así que **hay que ampliarlo** (paso 3).

## 1. Instalar Ollama

1. Descarga Ollama desde [ollama.com](https://ollama.com) e instálalo.
2. Al terminar, Ollama queda funcionando en segundo plano: aparece su icono en la bandeja del sistema
   (junto al reloj de Windows) y escucha en el puerto `11434`.

Si ejecutas `ollama` sin argumentos en una consola, Ollama muestra un menú para instalar agentes de
programación de otros fabricantes (OpenClaw, Cline, Qwen Code…). Digi3D.AI no los necesita: sal del
menú con **Esc**.

## 2. Descargar el modelo

Abre una consola (**Símbolo del sistema** o **PowerShell**) y ejecuta:

```
ollama pull gpt-oss:20b
```

La descarga ocupa unos 13 GB. Cuando termine, comprueba que el modelo aparece en la lista de modelos
descargados:

```
ollama list
```

## 3. Ampliar el contexto

Digi3D.AI se comunica con Ollama por la API compatible con OpenAI, y esa API no permite indicar el
tamaño del contexto en cada petición: Ollama usa su valor por omisión. Hay que ampliarlo de una de
estas dos formas.

**Desde la aplicación de Ollama:**

1. Pulsa con el botón derecho en el icono de Ollama de la bandeja del sistema y abre **Settings**.
2. Sube **Context length** a `32768` o más.

**Con una variable de entorno**, si tu versión de Ollama no tiene esa opción:

1. En una consola, ejecuta:

   ```
   setx OLLAMA_CONTEXT_LENGTH 32768
   ```

2. Cierra Ollama desde su icono de la bandeja del sistema (**Quit Ollama**).
3. Vuelve a abrir Ollama desde el menú Inicio, para que lea la variable nueva.

## 4. Comprobar la carga del modelo

1. Carga el modelo con una pregunta de prueba:

   ```
   ollama run gpt-oss:20b "hola"
   ```

2. Consulta los modelos cargados:

   ```
   ollama ps
   ```

3. Comprueba las dos columnas siguientes:

   | Columna | Valor esperado | Si no coincide |
   |---|---|---|
   | **CONTEXT** | `32768` o más | Repite el paso 3. |
   | **PROCESSOR** | `100% GPU` | El modelo no cabe entero en la tarjeta gráfica y la respuesta será lenta. Cierra otros programas que usen la tarjeta gráfica, como LM Studio con un modelo cargado. |

Ollama descarga el modelo de la memoria tras unos minutos sin uso y lo vuelve a cargar con la siguiente
petición. La primera petición después de una pausa es, por eso, más lenta.

## 5. Configurar Digi3D.AI

1. En Digi3D.AI, selecciona **Ventana → Chat con IA**.
2. Elige **Ollama** en el desplegable **Proveedor**. Ollama no necesita API key.
3. Si Ollama está en el mismo equipo, deja la URL que aparece por omisión: `http://localhost:11434/v1`.
   Si Ollama está en un servidor de la red, pulsa **⚙**, cambia `localhost` por el nombre o la dirección
   IP del servidor y pulsa **Guardar** (ver *Usar Ollama como servidor de la red*).
4. Elige `gpt-oss:20b` en el desplegable **Modelo**.

## 6. Probar la configuración

Escribe alguna de las [peticiones de ejemplo](README.md#ejemplos-de-peticiones). Empieza por las
consultas, por ejemplo:

- *«¿Cuántas geometrías hay de cada código? Dame los diez más frecuentes.»*
- *«¿Cuál es la cota máxima y la mínima de todo el dibujo?»*

La **primera petición** de una conversación es la más lenta, porque el modelo procesa las
instrucciones completas del asistente. Las siguientes son más rápidas.

## Usar Ollama como servidor de la red

Por omisión, Ollama solo acepta conexiones del propio equipo. Para que otros puestos de Digi3D.AI se
conecten al servidor:

1. En el servidor, ejecuta en una consola:

   ```
   setx OLLAMA_HOST 0.0.0.0:11434
   ```

2. Cierra Ollama desde su icono de la bandeja del sistema y vuelve a abrirlo.
3. Permite en el Firewall de Windows del servidor las conexiones entrantes al puerto TCP `11434`.
4. En cada puesto, configura en Digi3D.AI la URL `http://servidor:11434/v1`, sustituyendo `servidor` por
   el nombre o la dirección IP del servidor.

Ollama no pide contraseña: cualquier equipo que llegue al puerto `11434` puede usar el modelo. Abre el
puerto solo a la red interna.

## Comandos útiles

| Comando | Qué hace |
|---|---|
| `ollama pull gpt-oss:20b` | Descarga un modelo. Los nombres de los modelos están en [ollama.com/library](https://ollama.com/library). |
| `ollama list` | Lista los modelos descargados. |
| `ollama ps` | Lista los modelos cargados, con su contexto y si están en la tarjeta gráfica. |
| `ollama stop gpt-oss:20b` | Descarga un modelo de la memoria. |
| `ollama rm gpt-oss:20b` | Borra un modelo descargado del disco. |

## Problemas frecuentes

| Mensaje o síntoma | Causa y solución |
|---|---|
| *No se pudo obtener la lista de modelos…* | Ollama no está funcionando, o la URL no es correcta. Comprueba que el icono de Ollama está en la bandeja del sistema y pulsa **↻** en el panel de chat. |
| El desplegable **Modelo** solo muestra **Otro...** | No hay ningún modelo descargado. Ejecuta `ollama pull gpt-oss:20b` y pulsa **↻**. |
| *No hay ningún modelo elegido para Ollama* | Elige el modelo en el desplegable **Modelo**. |
| La petición falla o el asistente ignora las instrucciones | El contexto es menor que 32.768 *tokens*. Comprueba la columna **CONTEXT** de `ollama ps` y repite el paso 3. |
| El asistente responde con código en lugar de hacer la tarea | El modelo no admite el uso de herramientas. En [ollama.com/library](https://ollama.com/library), usa un modelo con la etiqueta **tools**. |
| Las respuestas son muy lentas | La columna **PROCESSOR** de `ollama ps` no dice `100% GPU`: el modelo no cabe en la tarjeta gráfica. Cierra otros programas que la usen. |
