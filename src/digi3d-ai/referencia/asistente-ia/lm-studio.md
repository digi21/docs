# Configurar LM Studio

[LM Studio](https://lmstudio.ai) es una aplicación de escritorio gratuita que ejecuta modelos de
lenguaje en tu propio equipo. Con LM Studio, el [asistente con IA](README.md) funciona sin conexión a
internet, sin coste de uso y sin enviar los datos del dibujo fuera del equipo.

Este tutorial usa el modelo **gpt-oss-20b** de OpenAI, que admite el uso de herramientas (*tool use*) y
cabe en una tarjeta gráfica de 16 GB o más.

## Requisitos

- Una tarjeta gráfica con **al menos 16 GB de memoria de vídeo** (VRAM) para gpt-oss-20b. Con menos
  memoria, LM Studio puede repartir el modelo entre la tarjeta gráfica y la memoria del sistema, pero la
  respuesta es mucho más lenta.
- Unos **13 GB libres en disco** para el modelo.
- **Contexto de al menos 32.768 *tokens*.** El contexto es la cantidad de texto que el modelo puede
  tener en cuenta a la vez. Las instrucciones que Digi3D.AI envía al asistente ocupan unos 22.000
  *tokens*, así que un contexto menor no basta.

## 1. Instalar LM Studio

1. Descarga LM Studio desde [lmstudio.ai](https://lmstudio.ai) e instálalo.
2. Abre LM Studio.

## 2. Descargar el modelo

1. Abre la pestaña **Discover** (icono de la lupa, en la barra lateral izquierda).
2. Busca `gpt-oss-20b`.
3. Elige el modelo de **openai** con la cuantización **MXFP4**. La cuantización es el formato en que se
   guarda el modelo; MXFP4 es el original de gpt-oss-20b.
4. Comprueba que el modelo tiene la etiqueta de uso de herramientas (*Tool use*). Un modelo sin esa
   etiqueta responde con código en lugar de trabajar sobre el dibujo.
5. Pulsa **Download** y espera a que termine la descarga.

## 3. Configurar el contexto del modelo

Configura el contexto como valor por omisión del modelo, para no tener que repetirlo en cada carga:

1. Abre la pestaña **My Models** (icono de la carpeta, en la barra lateral izquierda).
2. Pulsa el engranaje **⚙** junto a `gpt-oss-20b`.
3. En la pestaña **Load**, ajusta estos parámetros:

   | Parámetro | Valor | Motivo |
   |---|---|---|
   | **Context Length** | `32768` o más | Las instrucciones del asistente ocupan unos 22.000 *tokens*. |
   | **GPU Offload** | Deslizador a la derecha del todo | Todas las capas del modelo en la tarjeta gráfica: máxima velocidad. |
   | **Flash Attention** | Activado | Calcula la atención del modelo por bloques: el mismo resultado con menos memoria y más rápido en contextos largos. |

Si ya tenías el modelo cargado, los cambios no se aplican hasta que lo expulsas (**Eject**) y lo
vuelves a cargar.

## 4. Cargar el modelo y arrancar el servidor

1. Abre la pestaña **Developer** (icono de la consola, en la barra lateral izquierda).
2. Carga `gpt-oss-20b` con el selector de modelos de la parte superior (**Select a model to load**).
3. Activa el servidor con el interruptor **Status: Running**. El servidor escucha en el puerto `1234`.
4. Comprueba en el panel derecho que el modelo está cargado con el contexto que configuraste en el
   paso 3.

Carga el modelo **una sola vez**. Si cargas otra copia, LM Studio le pone otro identificador (por
ejemplo `openai/gpt-oss-20b:2`) y las dos copias ocupan memoria de la tarjeta gráfica.

## 5. Configurar Digi3D.AI

1. En Digi3D.AI, selecciona **Ventana → Chat con IA**.
2. Elige **LM Studio** en el desplegable **Proveedor**. LM Studio no necesita API key.
3. Si LM Studio está en el mismo equipo, deja la URL que aparece por omisión: `http://localhost:1234/v1`.
   Si está en otro equipo de la red, pulsa **⚙**, cambia `localhost` por el nombre o la dirección IP de
   ese equipo y pulsa **Guardar**.
4. El desplegable **Modelo** muestra los modelos **cargados** en LM Studio. Elige `openai/gpt-oss-20b`.

## 6. Probar la configuración

Escribe alguna de las [peticiones de ejemplo](README.md#ejemplos-de-peticiones). Empieza por las
consultas, por ejemplo:

- *«¿Cuántas geometrías hay de cada código? Dame los diez más frecuentes.»*
- *«¿Cuál es la cota máxima y la mínima de todo el dibujo?»*

La **primera petición** de una conversación es la más lenta, porque el modelo procesa las
instrucciones completas del asistente. Las siguientes son más rápidas.

En la pestaña **Developer** de LM Studio, el registro (*Developer Logs*) muestra cada petición que
llega desde Digi3D.AI.

## Problemas frecuentes

| Mensaje o síntoma | Causa y solución |
|---|---|
| *No se pudo obtener la lista de modelos…* | El servidor de LM Studio no está arrancado, o la URL no es correcta. Revisa el interruptor **Status** de la pestaña **Developer** y pulsa **↻** en el panel de chat. |
| El desplegable **Modelo** solo muestra **Otro...** | No hay ningún modelo cargado en LM Studio. Carga el modelo (paso 4) y pulsa **↻**. |
| *No hay ningún modelo elegido para LM Studio* | Elige el modelo en el desplegable **Modelo**. |
| La petición falla o el asistente ignora las instrucciones | El contexto del modelo es menor que 32.768 *tokens*. Revisa **Context Length** (paso 3), expulsa el modelo y vuelve a cargarlo. |
| El asistente responde con código en lugar de hacer la tarea | El modelo no admite el uso de herramientas. Usa un modelo con la etiqueta *Tool use*. |
| La primera respuesta tarda mucho | El modelo no cabe entero en la tarjeta gráfica. Comprueba que **GPU Offload** está al máximo y que no hay otro modelo cargado. |
| Error de memoria al cargar el modelo | Hay otro modelo cargado, en LM Studio o en Ollama. Expúlsalo antes de cargar gpt-oss-20b. |
