# Algoritmos básicos
<!-- id: lot-of-points-algoritmos-basicos -->

La biblioteca de enlace dinámico (DLL) `lop_examples.dll` añade cinco comandos.
La sección **Algoritmos básicos** aparece en tres pestañas, según el trabajo que realiza cada comando.

| Pestaña | Botón | Operación |
|---|---|---|
| Visualización | [Información](informacion.md) | Consulta todas las nubes por teselas y escribe estadísticas en **Salida**. |
| Visualización | Datos del punto | Espera clics sobre puntos y escribe sus coordenadas y atributos en **Salida**. |
| Herramientas de selección | Seleccionar objeto | Selecciona los puntos conectados de la clase del punto pulsado. |
| Clasificación de puntos | [Quitar clasificación](quitar-clasificacion.md) | Asigna la clase 1 a los puntos procesados. |
| Clasificación de puntos | [Clasificar por altura](clasificar-por-altura.md) | Asigna clases según la altura sobre el punto más bajo de cada celda. |

El [gestor de extensiones](../../gestor-de-extensiones.md) controla la habilitación de estos comandos.
Los botones dependen además de sus requisitos: **Información** necesita alguna nube abierta;
**Datos del punto** y **Seleccionar objeto** necesitan alguna nube visible;
los dos comandos de clasificación necesitan alguna nube con registro de ediciones e índices del original.

## Datos del punto

1. Pulsa **Datos del punto** en **Visualización**.
2. Pulsa un punto de una nube visible.
3. Consulta sus datos en **Salida**.
4. Pulsa **Esc** para terminar.

El comando escribe coordenadas, identificador de nube, índice del punto en el archivo original, clase,
intensidad, retorno y componentes de color rojo, verde y azul (RGB).
El nombre de la clase procede del panel **Clasificaciones**. Si la nube no conserva el índice original,
el comando escribe «desconocido» para ese dato.

## Seleccionar objeto

1. Ajusta **Lado de la celda** y **Radio máximo de búsqueda** en **Configuración**, dentro de **Algoritmos básicos**.
2. Pulsa **Seleccionar objeto**.
3. Pulsa un punto del objeto.
4. Aplica **Borrar**, **Clasificar** o **Aislar** desde **Acciones** cuando termine la selección.

El comando agrupa puntos de la misma clase en celdas cúbicas y conecta las celdas que se tocan por caras,
aristas o vértices. El comando admite también las clases 0 y 1.
El radio de consulta aumenta hasta el máximo configurado; un objeto que alcanza el margen de búsqueda
al llegar al radio máximo no se selecciona.
El comando advierte si la consulta no contiene todos los puntos o si el lado de celda impide reconocer
el objeto dentro del radio configurado.

| Parámetro | Unidad | Predeterminado | Rango, con ambos extremos incluidos |
|---|---|---|---|
| Lado de la celda | Unidades de la nube | 0,2 | 0,01–5 |
| Radio máximo de búsqueda | Unidades de la nube | 10 | 1–200 |

La selección permanece al terminar el comando. **Esc**, cuando no hay un comando activo, limpia esa selección.
Iniciar otra herramienta de selección también limpia la selección de puntos anterior.
**Restaurar** requiere una región seleccionada, porque la consulta de puntos no incluye puntos borrados.

El código de los cinco comandos está en `Sdk/example`.
Los archivos `Sdk/example/python/point_data.py` y `select_object.py` proporcionan las versiones de Python
de los dos comandos interactivos.
