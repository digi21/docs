# MenuItemGroup
<!-- id: menuitemgroup -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Menu`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Posición del menú de la ventana de dibujo en la que [CommandInMenuAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.menu/atributos/commandinmenuattribute.md) añade una opción.

```csharp
public enum MenuItemGroup
```

El menú de la ventana de dibujo tiene un marcador oculto en cada posición. Cuando el usuario abre el submenú que contiene un marcador, Digi3D.AI inserta en la posición del marcador una opción por cada orden registrada con ese grupo. El nombre del valor indica el menú y el grupo: `EditGroup9Group15` es el grupo 15 del submenú que contiene el grupo 9 del menú **Editar**. Los nombres no siguen el orden del menú: la tabla indica dónde está cada grupo.

En la tabla, **Menú** es la ruta del submenú en la interfaz en español y **Posición** indica la opción o el submenú que precede a las opciones insertadas. «La lista de…» es una lista de opciones que Digi3D.AI genera al abrir el submenú, por ejemplo la lista de etiquetas o de topologías. Si el marcador sigue a un separador, la primera opción insertada abre un grupo nuevo del menú.

## Valores

> El ensamblado de referencia del paquete NuGet `Digi21.DigiNG.Plugin` 26.0.0 declara 170 valores: le faltan `GeometricAnalysisGroup1Group9`, `GeometricAnalysisGroup1Group10` y `GeometricAnalysisGroup2Group1` a `GeometricAnalysisGroup2Group4`, y desde `GeometricAnalysisGroup2` sus números son menores que los del ensamblado instalado (por ejemplo, `TopologyGroup1` vale 137 en el paquete y 143 en Digi3D.AI). Un atributo compilado con el paquete coloca la orden en otro grupo.
>
> Digi3D.AI solo añade las órdenes .NET a los menús si el valor de registro `MostrarMenusNativos` (del usuario) vale 0.

| Valor | Número | Menú | Posición |
| :--- | ---: | :--- | :--- |
| `FileGroup1` | 0 | Archivo | Tras «Nuevo/Abrir modelo fotogramétrico o archivo de dibujo...». |
| `FileGroup2` | 1 | Archivo | Tras «Exportar entidades seleccionadas...». |
| `FileGroup3` | 2 | Archivo | Tras la lista de archivos de referencia. |
| `FileGroup4` | 3 | Archivo | Tras «Herramientas». |
| `FileGroup4Group1` | 4 | Archivo > Herramientas | Tras «Información del archivo». |
| `FileGroup4Group2` | 5 | Archivo > Herramientas | Tras «Comprimir». |
| `EditGroup1` | 6 | Editar | Tras «Rehacer». |
| `EditGroup2` | 7 | Editar | Tras «Buscar». |
| `EditGroup3` | 8 | Editar | Tras «Eliminar entidades por código...». |
| `EditGroup4` | 9 | Editar | Tras «Cortar fichero...». |
| `EditGroup5` | 10 | Editar | Tras «Recuperar las entidades seleccionadas». |
| `EditGroup6` | 11 | Editar | Tras «Renombrar códigos desconocidos...». |
| `EditGroup6Group1` | 12 | Editar > Más | Tras «Separar códigos generando geometría duplicada». |
| `EditGroup7` | 13 | Editar | Tras «ZFija (asignar la coordenada Z de vértices al múltiplo de equidistancia más cercano)». |
| `EditGroup8` | 14 | Editar | Tras «Reescribe geometrías seleccionadas». |
| `EditGroup9` | 15 | Editar | Tras «Complejos». |
| `EditGroup10` | 16 | Editar | Tras «Avanzado». |
| `EditGroup4Group1` | 17 | Editar > Más | Tras «Recortar polilíneas dentro de polígonos o del área de influencia de un texto...». |
| `EditGroup5Group1` | 18 | Editar > Más | Tras «Recuperar entidades por código». |
| `EditGroup9Group1` | 19 | Editar > Polilíneas | Tras «Modificar en XYZ múltiples polilíneas existentes con la que estás registrando». |
| `EditGroup9Group2` | 20 | Editar > Polilíneas | Tras «Interpolar Z entre vértices». |
| `EditGroup9Group3` | 21 | Editar > Polilíneas | Tras «Suavizar por código...». |
| `EditGroup9Group4` | 22 | Editar > Polilíneas | Tras «Asignar Z automáticamente a curvas de nivel (código, 2 puntos y equidistancia)». |
| `EditGroup9Group5` | 23 | Editar > Polilíneas | Tras «Recortar múltiples líneas en el cruce con otra línea (a un lado)». |
| `EditGroup9Group6` | 24 | Editar > Polilíneas | Tras «Partir una polilínea y eliminar uno de los dos extremos». |
| `EditGroup9Group7` | 25 | Editar > Polilíneas | Tras «Unir polilíneas por ventana y código». |
| `EditGroup9Group8` | 26 | Editar > Polilíneas | Tras «Ordenando sus coordenadas Z descendentemente». |
| `EditGroup9Group9` | 27 | Editar > Polilíneas | Tras «Alinear los vértices de líneas (2 puntos)». |
| `EditGroup9Group10` | 28 | Editar > Puntos | Tras «Cambiar escala activa». |
| `EditGroup9Group11` | 29 | Editar > Textos | Tras «Editar un texto». |
| `EditGroup9Group12` | 30 | Editar > Textos | Tras «Cambiar altura de texto por código...». |
| `EditGroup9Group13` | 31 | Editar > Textos | Tras «Cambiar ángulo activo de texto». |
| `EditGroup9Group14` | 32 | Editar > Textos | Tras «Cambiar justificación de texto sin mover el texto». |
| `EditGroup9Group15` | 33 | Editar > Polígonos | Tras «Borrar hueco de polígono». |
| `EditGroup9Group16` | 34 | Editar > Polígonos | Tras «Descomponer polígono por código...». |
| `EditGroup9Group17` | 35 | Editar > Complejos | Al principio del submenú. |
| `EditGroup9Group18` | 36 | Editar > Complejos | Tras «Descomponer elementos complejos por código». |
| `EditGroup10Group1` | 37 | Editar > Avanzado | Tras «Transformar el archivo de dibujo (Helmert, afín, absoluta, traslación, escala, tensor)...». |
| `EditGroup10Group2` | 38 | Editar > Avanzado | Tras «Ordenar las entidades del archivo de dibujo según el orden en la tabla de códigos decreciente». |
| `EditGroup10Group3` | 39 | Editar > Avanzado | Tras «Insertar un texto repetidamente sobre una línea». |
| `EditGroup10Group4` | 40 | Editar > Avanzado | Tras «Rotular la descripción del código a puntos del archivo de dibujo». |
| `ViewGroup1` | 41 | Ver | Tras la lista de etiquetas. |
| `ViewGroup2` | 42 | Ver | Tras la lista de expresiones Python. |
| `ViewGroup3` | 43 | Ver | Tras «Parámetros de visualización». |
| `ViewGroup3Group1` | 44 | Ver > Parámetros de visualización | Tras «Visualizar entidades con código desconocido». |
| `ViewGroup3Group2` | 45 | Ver > Parámetros de visualización | Tras «Activar patrón en la vista fotogramétrica». |
| `ViewGroup3Group3` | 46 | Ver > Parámetros de visualización | Tras «Rellenar polígonos en la vista fotogramétrica». |
| `ViewGroup3Group4` | 47 | Ver > Parámetros de visualización | Tras «Mostrar sombreados en la ventana fotogramétrica». |
| `ViewGroup3Group5` | 48 | Ver > Parámetros de visualización | Tras el separador posterior a las órdenes de `ViewGroup3Group4`. |
| `ViewGroup3Group6` | 49 | — | No aparece: el menú no tiene marcador para este grupo. |
| `ZoomsGroup1` | 50 | Zooms | Tras «Zoom anterior». |
| `ZoomsGroup2` | 51 | Zooms | Tras «Zoom a la extensión del recinto (por inundación)». |
| `ZoomsGroup3` | 52 | Zooms | Tras «Mover cámara FPS». |
| `ZoomsGroup4` | 53 | Zooms | Tras «Sincronizar posición/orientación con la de la ventana fotogramétrica». |
| `ZoomsGroup5` | 54 | Zooms | Tras «Buscar la entidad anterior». |
| `ZoomsGroup4Group1` | 55 | Zooms > Punto de vista | Tras «Esfera». |
| `ZoomsGroup4Group2` | 56 | Zooms > Punto de vista | Tras «Cámara/Objetivo». |
| `ZoomsGroup4Group3` | 57 | Zooms > Punto de vista | Tras «Trasero». |
| `ZoomsGroup4Group4` | 58 | Zooms > Punto de vista | Tras «Isométrico SE». |
| `ZoomsGroup4Group5` | 59 | Zooms > Rotación de la cámara | Tras «270 grados». |
| `ZoomsGroup4Group6` | 60 | Zooms > Rotación de la cámara | Tras «Rotación de la ventana fotogramétrica». |
| `InmediateGroup1` | 61 | Inmediato | Tras «Códigos especiales». |
| `InmediateGroup2` | 62 | Inmediato | Tras «Coordenada Z». |
| `InmediateGroup3` | 63 | Inmediato | Tras «Tentativos». |
| `InmediateGroup4` | 64 | Inmediato | Tras «Mide segmento». |
| `InmediateGroup5` | 65 | Inmediato | Tras «Agregar...». |
| `InmediateGroup6` | 66 | Inmediato | Tras «Cambiar el tamaño del cursor». |
| `InmediateGroup7` | 67 | Inmediato | Tras «Selecciona por expresión Python...». |
| `InmediateGroup8` | 68 | Inmediato | Tras «Escala activa». |
| `InmediateGroup9` | 69 | Inmediato | Tras «Teclados virtuales». |
| `InmediateGroup10` | 70 | Inmediato | Tras «Anular repetición en orden activa». |
| `InmediateGroup11` | 71 | Inmediato | Tras «Variables booleanas». |
| `InmediateGroup1Group1` | 72 | Inmediato > Más | Tras «Añadir códigos activos...». |
| `InmediateGroup1Group2` | 73 | Inmediato > Más | Tras «Añadir los códigos de una entidad existente». |
| `InmediateGroup1Group3` | 74 | Inmediato > Más | Tras «Clonar los códigos y atributos de una entidad». |
| `InmediateGroup1Group4` | 75 | Inmediato > Códigos especiales | Tras «Seleccionar códigos automáticamente en función de equidistancia». |
| `InmediateGroup2Group1` | 76 | Inmediato > Coordenada Z | Tras «Subir la coordenada Z al siguiente múltiplo de equidistancia». |
| `InmediateGroup3Group1` | 77 | Inmediato > Tentativos | Tras «Ir tentativo». |
| `InmediateGroup3Group2` | 78 | Inmediato > Tentativos | Tras «Tentativar textos». |
| `InmediateGroup3Group3` | 79 | Inmediato > Tentativos | Tras «Tentativo inserta». |
| `InmediateGroup9Group1` | 80 | Inmediato > Teclados virtuales | Tras «Cambiar al siguiente teclado virtual». |
| `InmediateGroup10Group1` | 81 | — | No aparece: el menú no tiene marcador para este grupo. |
| `InmediateGroup11Group1` | 82 | Inmediato > Variables booleanas | Tras «Repetir la última orden». |
| `InmediateGroup11Group2` | 83 | Inmediato > Variables booleanas | Tras «Desactivar sonido al salir del límite del trabajo». |
| `DrawGroup1` | 84 | Dibujar | Tras «Restricciones de polilíneas». |
| `DrawGroup2` | 85 | Dibujar | Tras «Al finalizar la línea actual...». |
| `DrawGroup3` | 86 | Dibujar | Tras «Spline». |
| `DrawGroup4` | 87 | Dibujar | Tras «Puntos a partir de textos existentes...». |
| `DrawGroup5` | 88 | Dibujar | Tras «Polígono mediante inundaciones». |
| `DrawGroup6` | 89 | Dibujar | Tras «Centroides». |
| `DrawGroup7` | 90 | Dibujar | Tras «Justificación de texto». |
| `DrawGroup8` | 91 | Dibujar | Tras «Acotar». |
| `DrawGroup9` | 92 | Dibujar | Tras «Parámetros de interpolación». |
| `DrawGroup10` | 93 | Dibujar | Tras «Crear un elemento complejo». |
| `DrawGroup11` | 94 | Dibujar | Tras «Bloques». |
| `DrawGroup12` | 95 | Dibujar | Tras «Gráfico de hojas». |
| `DrawGroup13` | 96 | Dibujar | A continuación de las órdenes de `DrawGroup12`. |
| `DrawGroup1Group1` | 97 | Dibujar > Restricciones de polilíneas | Tras «Ortogonal al ángulo activo». |
| `DrawGroup1Group2` | 98 | Dibujar > Restricciones de polilíneas | Tras «Establecer el número máximo de puntos de una línea». |
| `DrawGroup1Group3` | 99 | Dibujar > Restricciones de polilíneas | Tras «Z ascendente». |
| `DrawGroup2Group1` | 100 | Dibujar > Borrar un segmento de la línea que estás dibujando | Tras «Múltiples segmentos (1 punto)». |
| `DrawGroup2Group2` | 101 | Dibujar > Al finalizar la línea actual... | Tras «Crear automáticamente una paralela (según distancia activa)». |
| `DrawGroup2Group3` | 102 | Dibujar > Al finalizar la línea actual... | Tras «Bajar Z». |
| `DrawGroup3Group1` | 103 | Dibujar > Más | Tras «Eje a polígono». |
| `DrawGroup3Group2` | 104 | Dibujar > Más | Tras «Circunferencia con centro y radio». |
| `DrawGroup3Group3` | 105 | Dibujar > Más | Tras «Rectángulo con 3 puntos». |
| `DrawGroup3Group4` | 106 | Dibujar > Más | Tras «Rejilla con 4 puntos». |
| `DrawGroup3Group5` | 107 | Dibujar > Más | Tras «Escalera indicando el tamaño del peldaño». |
| `DrawGroup3Group6` | 108 | Dibujar > Más | Tras «Líneas de señalización horizontal». |
| `DrawGroup3Group7` | 109 | Dibujar > Más | Tras «Rellenar polígono con símbolos». |
| `DrawGroup3Group8` | 110 | Dibujar > Más | Tras «Múltiples líneas de dos puntos perpendiculares a una línea existente». |
| `DrawGroup6Group1` | 111 | Dibujar > Centroides | Tras «Por código...». |
| `DrawGroup7Group1` | 112 | Dibujar > Justificación de texto | Tras «Centro». |
| `DrawGroup8Group1` | 113 | Dibujar > Acotar | Tras «Texto con coordenadas X e Y de un punto». |
| `DrawGroup9Group1` | 114 | Dibujar > Parámetros de interpolación | Tras «Equidistancia». |
| `DrawGroup11Group1` | 115 | Dibujar > Bloques | Tras «Insertar bloque como elemento complejo puntual...». |
| `DrawGroup11Group2` | 116 | Dibujar > Bloques | Tras «Crear un bloque (2 puntos)...». |
| `DrawGroup13Group1` | 117 | Dibujar > Gráfico de hojas | Tras «Crear hojas a partir de gráfico de hojas». |
| `GeometricAnalysisGroup1` | 118 | Análisis geométricos | Tras «Detectar ZigZag». |
| `GeometricAnalysisGroup1Group1` | 119 | Análisis geométricos > Insertar un vértice en el punto de cruce de las líneas | Tras «Líneas visibles». |
| `GeometricAnalysisGroup1Group2` | 120 | Análisis geométricos > Insertar un vértice en el punto de cruce de las líneas | Tras la lista de etiquetas. |
| `GeometricAnalysisGroup1Group3` | 121 | Análisis geométricos > Partir líneas por el punto de cruce | Tras «Líneas que cruzan la geometría seleccionada». |
| `GeometricAnalysisGroup1Group4` | 122 | Análisis geométricos > Partir líneas por el punto de cruce | Tras la lista de etiquetas. |
| `GeometricAnalysisGroup1Group5` | 123 | Análisis geométricos > Detectar cruces entre líneas | Tras «Líneas visibles». |
| `GeometricAnalysisGroup1Group6` | 124 | Análisis geométricos > Detectar cruces entre líneas | Tras la lista de etiquetas. |
| `GeometricAnalysisGroup1Group7` | 125 | Análisis geométricos > Detectar bucles | Tras «Líneas visibles». |
| `GeometricAnalysisGroup1Group8` | 126 | Análisis geométricos > Detectar bucles | Tras la lista de etiquetas. |
| `GeometricAnalysisGroup1Group9` | 127 | Análisis geométricos > Detectar ZigZag | Tras «Líneas visibles». |
| `GeometricAnalysisGroup1Group10` | 128 | Análisis geométricos > Detectar ZigZag | No aparece: el marcador de esta posición muestra la lista de etiquetas de «Detectar ZigZag». |
| `GeometricAnalysisGroup2` | 129 | Análisis geométricos | Tras «Detectar errores de atributos de BBDD entre archivos». |
| `GeometricAnalysisGroup2Group1` | 130 | Análisis geométricos > Detectar líneas no conectadas | Tras «Líneas visibles». |
| `GeometricAnalysisGroup2Group2` | 131 | Análisis geométricos > Detectar líneas no conectadas | Tras la lista de etiquetas. |
| `GeometricAnalysisGroup2Group3` | 132 | Análisis geométricos > Detectar líneas no conectadas (3D) | Tras «Líneas visibles». |
| `GeometricAnalysisGroup2Group4` | 133 | Análisis geométricos > Detectar líneas no conectadas (3D) | Tras la lista de etiquetas. |
| `GeometricAnalysisGroup3` | 134 | Análisis geométricos | Tras «Desagrupar entidades». |
| `GeometricAnalysisGroup4` | 135 | Análisis geométricos | Tras «Unir líneas si coincide la Z». |
| `SemanticModelGroup1` | 136 | Control de calidad | No aparece: en la posición del grupo, tras «Analizar control de calidad», se muestran las órdenes de `FloodingGroup1`. |
| `SemanticModelGroup1Group1` | 137 | Control de calidad > Analizar control de calidad | No aparece: en la posición del grupo, tras «Geometrías visibles», se muestran las órdenes de `FloodingGroup1`. |
| `SemanticModelGroup1Group2` | 138 | Control de calidad > Analizar control de calidad | No aparece: en la posición del grupo, tras la lista de etiquetas, se muestran las órdenes de `FloodingGroup1`. |
| `SemanticModelGroup2` | 139 | Control de calidad | No aparece: en la posición del grupo, tras «Analizar control de calidad al digitalizar entidad», se muestran las órdenes de `FloodingGroup1`. |
| `FloodingGroup1` | 140 | Inundación | Tras «Descargar topología para inundaciones». Las órdenes de este grupo aparecen también en las cuatro posiciones de los grupos `SemanticModelGroup…`. |
| `FloodingGroup2` | 141 | Inundación | Tras «Cambiar códigos». |
| `FloodingGroup3` | 142 | Inundación | Tras «Copiar centroide». |
| `TopologyGroup1` | 143 | Topología | Tras «Descargar topologías». |
| `TopologyGroup2` | 144 | Topología | Tras «Copiar centroide». |
| `TopologyGroup3` | 145 | Topología | Tras «Exportar topologías cargadas como polígonos a archivo». |
| `TopologyGroup1Group1` | 146 | Topología > Crear topologías | Tras «Crear todas las topologías». |
| `TopologyGroup1Group2` | 147 | Topología > Crear topologías | Tras la lista de topologías. |
| `TopologyGroup1Group3` | 148 | Topología > Ver | Tras «Ninguna topología». |
| `TopologyGroup1Group4` | 149 | Topología > Ver | Tras la lista de topologías. |
| `TopologyGroup1Group5` | 150 | Topología > Descargar topologías | Tras «Todas las topologías». |
| `TopologyGroup1Group6` | 151 | Topología > Descargar topologías | Tras la lista de topologías. |
| `TopologyGroup2Group1` | 152 | Topología > Crear centroides automáticamente... | Tras «Todas las topologías». |
| `TopologyGroup2Group2` | 153 | Topología > Crear centroides automáticamente... | Tras la lista de topologías. |
| `TopologyGroup3Group1` | 154 | Topología > Transformar topologías cargadas a polígonos | Tras «Todas las topologías». |
| `TopologyGroup3Group2` | 155 | Topología > Transformar topologías cargadas a polígonos | Tras la lista de topologías. |
| `TopologyGroup3Group3` | 156 | — | No aparece: el menú no tiene marcador para este grupo. |
| `TopologyGroup3Group4` | 157 | Topología > Exportar topologías cargadas como polígonos a archivo | Tras «Seleccionando topologías...». |
| `TopologyGroup3Group5` | 158 | Topología > Exportar topologías cargadas como polígonos a archivo | Tras la lista de topologías. |
| `DatabaseGroup1` | 159 | Base de datos | Tras «Cambiar valores BBDD...». |
| `ToolsGroup1` | 160 | Herramientas | Tras «Configuración...». |
| `ToolsGroup2` | 161 | Herramientas | Tras «Reubicar barras de herramientas...». |
| `HelpGroup1` | 162 | Ayuda | Tras «Ayuda de Digi3D...». |
| `HelpGroup2` | 163 | Ayuda | Tras «Compartir escritorio con el equipo de soporte de Digi21...». |
| `HelpGroup3` | 164 | Ayuda | Tras el separador posterior a las órdenes de `HelpGroup2`. |
| `WindowGroup1` | 165 | Ventana | Tras «Otras ventanas». |
| `WindowGroup1Group1` | 166 | Ventana > Tareas | Tras «Eliminar tareas». |
| `WindowGroup1Group2` | 167 | Ventana > Tareas | Tras «Localizar tarea». |
| `WindowGroup1Group3` | 168 | Ventana > Tareas | Tras «Guardar archivo de tareas (xml)». |
| `WindowGroup1Group4` | 169 | Ventana > Resultados | Tras «Resultados». |
| `WindowGroup1Group5` | 170 | Ventana > Resultados | Tras «Limpiar resultados». |
| `WindowGroup1Group6` | 171 | Ventana > Resultados de la búsqueda | Tras «Resultados de la búsqueda 2». |
| `WindowGroup1Group7` | 172 | Ventana > Otras ventanas | Tras «Menú». |
| `WindowGroup2` | 173 | Ventana | Tras «Pantalla completa». |
| `WindowGroup2Group1` | 174 | Ventana > Barras de herramientas | Tras «Barra de herramientas». |
| `WindowGroup3` | 175 | Ventana y Análisis geométricos | Tras «Organizar iconos» y, en Análisis geométricos, en los grupos 3, 4 y 5: dos veces en «Detectar entidades duplicadas», «Agrupar entidades duplicadas» y «Eliminar entidades duplicadas», dos veces en cada submenú de «Unir líneas» («Independientemente del número de líneas que lleguen al nodo» y «En nodos a los que llegan dos entidades») y tras «Juntar vértices cercanos...». |

En la versión 26.0.0, ocho valores no producen ninguna opción en su posición:

- `ViewGroup3Group6`, `InmediateGroup10Group1` y `TopologyGroup3Group3`: el menú no tiene marcador para esos grupos.
- `GeometricAnalysisGroup1Group10`: Digi3D.AI usa el marcador para la lista de etiquetas de **Detectar ZigZag**.
- `SemanticModelGroup1`, `SemanticModelGroup1Group1`, `SemanticModelGroup1Group2` y `SemanticModelGroup2`: los cuatro marcadores del menú **Control de calidad** muestran las órdenes de `FloodingGroup1`.

## Ejemplo

La orden de ejemplo de [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md#ejemplo) usa `MenuItemGroup.InmediateGroup4`: la opción aparece en el menú **Inmediato**, después de **Mide segmento**.