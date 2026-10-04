# Proveedores en la nube
<!-- id: proveedores -->

Esta página explica cómo configurar en el [panel de chat con IA](README.md) cada proveedor que
funciona como servicio en internet. Para ejecutar el modelo en tu propio equipo, consulta
[Configurar LM Studio](lm-studio.md) o [Configurar Ollama](ollama.md).

Todos los proveedores de esta página cobran por uso a quien contrata la API key. Consulta los precios
en la web de cada proveedor antes de empezar.

## Pasos comunes

1. Crea una cuenta en el proveedor y genera una **API key** (clave de acceso). La web de cada proveedor
   se indica en su sección.
2. En Digi3D.AI, selecciona **Ventana → Chat con IA**.
3. Elige el proveedor en el desplegable **Proveedor**.
4. Pulsa **⚙**, pega la API key en el campo **API key** y pulsa **Guardar**. Digi3D.AI pide al proveedor
   la lista de modelos disponibles para tu cuenta.
5. Elige el modelo en el desplegable **Modelo**.
6. Escribe una de las [peticiones de ejemplo](README.md#ejemplos-de-peticiones) para comprobar que
   funciona.

## Claude (Anthropic)

| Campo | Valor |
|---|---|
| API key | Se crea y se administra en [platform.claude.com/settings/keys](https://platform.claude.com/settings/keys). |
| URL | `https://api.anthropic.com/v1` (la que aparece por omisión). |
| Modelo | El desplegable propone Opus 5.5, Sonnet 5, Fable 5.1 y Haiku 4.5, más los modelos que devuelve Anthropic para tu cuenta. |

Haiku 4.5 es el modelo más rápido y económico, y basta para la mayoría de las peticiones. Los modelos
más grandes razonan mejor las peticiones de varios pasos, a un coste mayor.

## OpenAI

| Campo | Valor |
|---|---|
| API key | Se crea y se administra en [platform.openai.com/api-keys](https://platform.openai.com/api-keys). |
| URL | `https://api.openai.com/v1` (la que aparece por omisión). |
| Modelo | El desplegable muestra los modelos de texto de tu cuenta. Digi3D.AI no muestra los modelos de imagen, voz, transcripción ni *embeddings*, porque el asistente no puede usarlos. |

## Azure OpenAI

Azure OpenAI sirve los modelos de OpenAI desde una suscripción de Microsoft Azure. Es la opción
habitual en empresas que ya contratan servicios de Azure.

| Campo | Valor |
|---|---|
| API key | La clave del recurso de Azure OpenAI, en el portal de Azure: recurso → **Claves y punto de conexión**. |
| URL | El punto de conexión del recurso, terminado en `/openai/v1`. Por ejemplo: `https://mi-recurso.openai.azure.com/openai/v1`. Este campo aparece vacío y es obligatorio. |
| Modelo | El **nombre de la implementación** (*deployment*) que creaste en Azure, no el nombre del modelo. Elige **Otro...** en el desplegable y escribe el nombre. |

Azure no permite a Digi3D.AI consultar tus implementaciones, así que el desplegable no muestra ninguna
lista.

## Kimi (Moonshot AI)

| Campo | Valor |
|---|---|
| API key | Se crea y se administra en [platform.kimi.ai/console/api-keys](https://platform.kimi.ai/console/api-keys). |
| URL | `https://api.moonshot.ai/v1` (la que aparece por omisión). |
| Modelo | El desplegable propone los modelos Kimi, más los que devuelve Moonshot AI para tu cuenta. |

## OpenRouter

OpenRouter da acceso con una sola API key a modelos de muchos fabricantes.

| Campo | Valor |
|---|---|
| API key | Se crea y se administra en [openrouter.ai/settings/keys](https://openrouter.ai/settings/keys). |
| URL | `https://openrouter.ai/api/v1` (la que aparece por omisión). |
| Modelo | El desplegable muestra todos los modelos de OpenRouter. Elige uno que admita el **uso de herramientas** (*tool calling*): el asistente lo necesita para trabajar sobre el dibujo. |

## Servidor compatible con OpenAI

El proveedor **OpenAI-compatible** sirve para cualquier otro servidor que implemente la API de OpenAI
(por ejemplo, un servidor de la empresa).

| Campo | Valor |
|---|---|
| API key | La que pida el servidor. Déjala vacía si el servidor no la pide. |
| URL | La dirección del servidor, terminada normalmente en `/v1`. Por ejemplo: `http://servidor:8000/v1`. |
| Modelo | El desplegable muestra los modelos que devuelve el servidor. Si no muestra ninguno, elige **Otro...** y escribe el identificador. |

El modelo tiene que admitir el uso de herramientas y un contexto de al menos 32.768 *tokens*.

## Problemas frecuentes

| Mensaje o síntoma | Causa y solución |
|---|---|
| *No hay ningún modelo elegido para…* | El desplegable **Modelo** está vacío. Elige un modelo, o escribe su identificador con **Otro...**. |
| *No se pudo obtener la lista de modelos…* | La URL o la API key no son correctas, o no hay conexión con el proveedor. Revísalas con **⚙** y pulsa **↻**. |
| *Error HTTP 401* | La API key no es válida o ha caducado. Genera otra en la web del proveedor. |
| *Error HTTP 429* | Se ha superado el límite de uso o el saldo de la cuenta. Digi3D.AI repite la petición hasta 3 veces; si el error persiste, revisa la cuenta en la web del proveedor. |
| El asistente responde con código en lugar de hacer la tarea | El modelo no admite el uso de herramientas. Elige otro modelo. |
