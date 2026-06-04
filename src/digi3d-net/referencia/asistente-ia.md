# Asistente con IA (chat con Claude)

El **panel de chat** permite pedirle a un asistente de inteligencia artificial (Claude, de
Anthropic), **en lenguaje natural**, que consulte y modifique el dibujo activo. Le escribes lo que
quieres —por ejemplo *"haz un zoom al primer edificio"*, *"¿cuántas curvas de nivel hay?"* o
*"borra los textos con el código 050146"*— y el asistente lo realiza sobre la ventana de dibujo.

No necesitas saber programar: hablas con el asistente con normalidad.

## Abrir el panel

Desde el menú **Ver → Chat**. Es un panel acoplable, como los demás.

## Configurar la clave de API

El asistente usa el servicio de Anthropic, que requiere una **clave de API**. Cada usuario utiliza
**su propia clave** y paga su propio consumo.

- La primera vez que abras el panel sin una clave configurada, aparecerá un campo para introducirla.
- Para cambiarla más adelante, pulsa el botón **⚙** de la cabecera del panel, pega la clave y pulsa
  **Guardar**.
- La clave se obtiene creando una cuenta en [console.anthropic.com](https://console.anthropic.com).

## Elegir el modelo

En la cabecera hay un desplegable **Modelo**:

| Modelo | Cuándo usarlo |
|---|---|
| **Haiku 4.5** (por defecto) | El más rápido y económico. Suficiente para la mayoría de tareas. |
| **Sonnet 4.6** | Equilibrio: más capaz que Haiku para tareas que requieren razonar en varios pasos. |
| **Opus 4.8** | El más capaz (y caro). Para las peticiones más complejas. |

La elección se recuerda entre sesiones.

## Qué le puedes pedir

- **Consultas**: *"¿cuántas geometrías hay?"*, *"lista los códigos que hay en el dibujo"*.
- **Navegación**: *"haz un zoom al primer edificio"*, *"céntrate en las curvas maestras"*.
- **Edición**: *"borra los textos con el código 050146"*, *"redondea la cota de las curvas de nivel"*.

El asistente conoce la **tabla de códigos del proyecto**, de modo que entiende conceptos como
"edificio", "curva de nivel" o "parcela" sin que tengas que indicarle los códigos.

## A tener en cuenta

- **Modifica el dibujo**: todos los cambios se pueden **deshacer** con la orden UNDO (cada acción se
  realiza dentro de una transacción).
- Antes de operaciones destructivas o de gran alcance (borrados masivos, etc.), el asistente explica
  lo que va a hacer y, si hay riesgo o ambigüedad, pide confirmación.
- Necesita **conexión a internet** (consulta el servicio de Anthropic).
- La IA **puede equivocarse**: revisa el resultado, sobre todo en operaciones importantes.
- Responde siempre en español.

## Requisitos

- El componente **WebView2** (Microsoft Edge), incluido de serie en Windows 10 y 11.
- Una **clave de API** de Anthropic.

## Véase también

- [Programación en Python](../programacion/python/README.md) — si quieres automatizar tareas tú mismo
  escribiendo guiones (el asistente usa esta misma API por debajo).
