# Crear las topologías de la tabla de códigos desde un programa externo
<!-- id: crear-topologias-desde-un-programa-externo -->

En este procedimiento crearás `CrearTopologias`, una aplicación de consola que recorre un directorio de archivos `.bind` y, en cada archivo que admite escritura, forma las topologías de una tabla de códigos que no tienen condiciones de exclusión y añade al archivo los polígonos resultantes. El programa hace fuera de Digi3D.AI lo que hacen las órdenes [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md)`=#nombre` y [TOPOLOGIA\_A\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/topologia-a-poligono.md) con cada topología de la tabla que no tiene condiciones de exclusión. Cuando una topología proyecta la coordenada Z sobre un modelo digital del terreno (MDT), el programa obtiene esa Z de un archivo `.mdt` de MDTopX.

El proyecto completo de un programa equivalente, `TopologiasDesdeTabla`, que además permite especificar por la línea de órdenes qué topologías procesar y si el programa utiliza un MDT, está en el repositorio de ejemplos de programación: [Ejemplos-Programacion-Digi3D/TopologiasDesdeTabla](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/TopologiasDesdeTabla).

## Requisitos

- Digi3D.AI 2027.0.0.428 o posterior, instalado en el equipo. El programa usa los ensamblados que instala Digi3D.AI.
- El kit de desarrollo de software (SDK) de .NET 10, como en el [tutorial de la aplicación de consola](tutorial-aplicacion-de-consola.md).
- Una tabla de códigos con topologías definidas en su pestaña [Topologías](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/README.md).
- Un directorio con archivos `.bind` y, si alguna topología proyecta la Z, un archivo `.mdt` con el mismo sistema de coordenadas horizontal que los archivos `.bind`.

## 1. Crear el proyecto y añadir los paquetes

Abre una consola en la carpeta donde quieras crear el proyecto y ejecuta:

```
dotnet new console -n CrearTopologias -f net10.0
cd CrearTopologias
dotnet add package Digi21.DigiNG.IO.BinDouble --version 26.0.1
dotnet add package Digi21.DigiNG.Topology --version 26.1.0
dotnet add package Digi21.DigiNG.Dtm --version 26.0.0
```

Los paquetes aportan estos tipos:

| Paquete | Versión | Tipos que usa el programa |
| :--- | :--- | :--- |
| [Digi21.DigiNG.IO.BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/README.md) | 26.0.1 | `BinDouble`, el archivo `.bind`. |
| [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/README.md) | 26.1.0 | `TopologyAnalyzer` y `TopologyAnalysisHandlers`. |
| [Digi21.DigiNG.Dtm](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/README.md) | 26.0.0 | `DigitalTerrainModel` y `DigitalTerrainModelCollection`. |
| [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/README.md) | 26.2.0 | `DigiTab`, `TopologyDefinition` y los tipos que la componen. NuGet instala `Digi21.DigiNG` como dependencia de `Digi21.DigiNG.Topology` y `Digi21.DigiNG.Dtm`. |

El paquete `Digi21.DigiNG` añade al proyecto el código que carga los ensamblados de la carpeta de instalación de Digi3D.AI al iniciarse el programa; no hace falta escribir ese código. Está explicado en [Migración a .NET 10](migracion-a-net-10.md#cómo-encuentra-tu-programa-los-ensamblados-de-digi3dai).

## 2. Escribir el programa

Sustituye el contenido de `Program.cs` por:

```csharp
using Digi21.DigiNG.DigiTab;
using Digi21.DigiNG.Dtm;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.DigiNG.Topology;

if (args.Length is < 3 or > 4)
{
    Console.WriteLine("Uso: CrearTopologias <directorio con archivos .bind> <tabla.tab.xml> <modelo.mdt> [etiqueta del MDT]");
    return 1;
}

var rutaDirectorioBind = args[0];
var etiquetaMdt = args.Length == 4 ? args[3] : "";

// La tabla de códigos y el MDT se abren una sola vez para todos los archivos.
using var tabla = DigiTab.Load(args[1]);
using var modelo = DigitalTerrainModel.Open(args[2]);

// La colección reproduce las etiquetas de los MDT cargados en Digi3D.AI.
var modelos = new DigitalTerrainModelCollection();
modelos.Add(modelo, etiquetaMdt);

// El programa lee Topologies una vez y llama a Dispose en cada definición al finalizar el procesamiento de los archivos.
var topologías = tabla.Topologies;

try
{
    // AnalyzeTopology necesita un delegado EvaluateExcludeCondition para las condiciones de exclusión,
    // que son expresiones de Python. Este programa omite las topologías que tienen alguna.
    var topologíasAProcesar = new List<TopologyDefinition>();
    foreach (var topología in topologías)
    {
        if (topología.Codes.Any(código => !string.IsNullOrEmpty(código.ExcludeCondition)))
            Console.WriteLine($"Se omite la topología {topología.Name}: tiene condiciones de exclusión.");
        else
            topologíasAProcesar.Add(topología);
    }

    var manejadores = new TopologyAnalysisHandlers
    {
        RingWithoutArea = líneas => Console.WriteLine($"    Anillo sin área de {líneas.Count()} líneas."),
        PolygonWithoutCentroid = recinto => Console.WriteLine("    Polígono sin centroide."),
        DuplicatedCentroids = textos => Console.WriteLine($"    Polígono con {textos.Count()} centroides."),
        CentroidsWithoutPolygon = textos => Console.WriteLine($"    {textos.Count()} centroides fuera de un polígono."),
    };

    foreach (var rutaArchivo in Directory.EnumerateFiles(rutaDirectorioBind, "*.bind"))
    {
        Console.WriteLine(rutaArchivo);

        // Abre el archivo en lectura y escritura con la tabla de códigos.
        using var archivo = new BinDouble(rutaArchivo, tabla, false);
        if (!archivo.CanWrite)
        {
            Console.WriteLine("  No se puede escribir en el archivo: se omite.");
            continue;
        }

        // Un BinDouble solo se puede recorrer una vez: se guardan sus entidades.
        // Los polígonos añadidos al archivo después de crear la lista no forman parte de la lista.
        var entidades = archivo.ToList();

        foreach (var topología in topologíasAProcesar)
        {
            try
            {
                var recintos = entidades.AnalyzeTopology(topología, manejadores).ToList();

                // La Z de los vértices que se proyectan sobre un MDT la da modelos.Project.
                var polígonos = recintos.CreatePolygons(topología, modelos.Project);

                foreach (var polígono in polígonos)
                {
                    // Add escribe el polígono en el archivo.
                    archivo.Add(polígono);
                    polígono.Dispose();
                }

                Console.WriteLine($"  {topología.Name}: {polígonos.Count} polígonos añadidos.");
            }
            catch (Exception ex)
            {
                // Muestra el mensaje de las excepciones producidas al analizar la topología, crear sus polígonos o añadirlos al archivo.
                Console.WriteLine($"  {topología.Name}: {ex.Message}");
            }
        }
    }
}
finally
{
    foreach (var topología in topologías)
        topología.Dispose();
}

return 0;
```

El programa:

- carga la tabla de códigos con [DigiTab.Load](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos-estaticos/load.md) y lee sus topologías una sola vez con [DigiTab.Topologies](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/topologies.md);
- abre el MDT una sola vez con [DigitalTerrainModel.Open](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/digitalterrainmodel.md#open) y lo añade a un [DigitalTerrainModelCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/digitalterrainmodelcollection.md) con la etiqueta que indica el cuarto argumento, o con una etiqueta vacía si no se indica;
- abre cada archivo `.bind` en lectura y escritura con la clase [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md) y la tabla de códigos, y guarda sus entidades en una lista;
- para cada topología de la tabla que no tiene condiciones de exclusión, llama a [AnalyzeTopology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md#analyzetopology-con-una-definición-de-topología) con los delegados de [TopologyAnalysisHandlers](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalysishandlers.md) y a [CreatePolygons](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md#createpolygons) con `modelos.Project`, y añade cada polígono al archivo con `BinDouble.Add`;
- libera cada polígono con `Dispose` después de añadirlo, y libera las definiciones de topología al finalizar el procesamiento de los archivos.

## 3. Ejecutar el programa

Ejecuta la siguiente orden:

```
dotnet run -- C:\Trabajos\Hojas C:\Tablas\tabla.tab.xml C:\Trabajos\terreno.mdt MDT
```

| Argumento | Descripción |
| :--- | :--- |
| `<directorio con archivos .bind>` | Directorio cuyos archivos `.bind` se procesan. No incluye los subdirectorios. |
| `<tabla.tab.xml>` | Archivo de la tabla de códigos con las topologías. |
| `<modelo.mdt>` | Archivo `.mdt` sobre el que se proyectan los polígonos. |
| `[etiqueta del MDT]` | Etiqueta con la que se añade el MDT a la colección. Sin este argumento, la etiqueta está vacía. |

Para cada archivo, el programa escribe su nombre. Para cada topología sin condiciones de exclusión que procesa en un archivo escribible, muestra el número de polígonos añadidos o el mensaje de la excepción capturada durante el análisis, la creación o la escritura de los polígonos. Si ejecutas el programa dos veces sobre el mismo directorio, la segunda ejecución añade otra vez los mismos polígonos a cada archivo.

## Qué toma el programa de la tabla de códigos

`AnalyzeTopology` y `CreatePolygons` leen de la [TopologyDefinition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md) de cada topología los datos que el editor de tablas de códigos guarda en la pestaña [Topologías](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/README.md):

| Dato de la tabla | Propiedad | Uso |
| :--- | :--- | :--- |
| Códigos de la topología | `Codes` | Solo intervienen en la topología las entidades que tienen alguno de estos códigos. La relación de cada código con la topología (`TopologyCode.Relationship`) decide si un anillo forma un polígono. |
| Continuidad 3D | `Requires3DContinuity` | Con `true`, la topología solo forma los polígonos que tienen continuidad 3D. |
| Texto de los centroides de huecos | `HoleCentroidText` | Un recinto cuyo centroide tiene este texto es un hueco y no genera polígono. |
| Centroides | `Centroids` | Texto o prefijo de los centroides, color de relleno, origen de la Z y valores de campos. |
| Polígonos sin centroide | `ReportPolygonsWithoutCentroid` | Con `true`, `AnalyzeTopology` notifica los polígonos sin centroide con el delegado `PolygonWithoutCentroid`. Con `false`, los descarta y notifica con `EntityNotInValidPolygon` cada línea o polígono con un código de relación `Required` o `GuaranteesPolygon` que no forma parte de ningún polígono válido. |
| Código del polígono | `PolygonCode` | Código de cada polígono que crea `CreatePolygons`. Las variables `$(CodigoCentroide)` y `$(TextoCentroide)` (y sus equivalentes en inglés) se sustituyen por el código y el texto del centroide. |
| Copia desde el centroide | `CopyTableAndRecordFromCentroid` y `CopyDatabaseAttributesFromCentroid` | Con `true`, `CreatePolygons` copia al polígono la tabla y el identificador de registro, o los atributos de base de datos, del primer código del centroide. |
| Tipo de Z de la topología y del centroide | `PolygonZSource` de `TopologyDefinition` y de `TopologyCentroid` | Origen de la coordenada Z de los vértices del polígono. |
| Reglas de Z por código | `TopologyCode.DefaultZRule` y `TopologyCode.ZRulesByOtherCode` | Coordenada Z de los nodos y de los vértices de los segmentos de cada código cuando el origen de la Z es `FromGeometries`. |
| Cierre del contorno | `ClosingNodeZ` | Operación cuando el primer y el último vértice del contorno tienen coordenadas Z distintas. |

## La coordenada Z de los polígonos

El programa pasa `modelos.Project` como parámetro `projectZ` de `CreatePolygons`. `CreatePolygons` llama a `projectZ` con un punto y una etiqueta de MDT en cada vértice cuya Z se proyecta sobre un MDT. Eso ocurre en estos casos:

- el origen de la Z del polígono es `PolygonZSource.ProjectOnDtm`; la etiqueta es `TopologyDefinition.DtmTag`;
- una regla de Z de un código ([TopologyZRule](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologyzrule.md)) proyecta el nodo (`NodeZRule.ProjectOnDtm`) o los vértices intermedios (`VertexZAction.ProjectOnDtm`); la etiqueta es `TopologyZRule.DtmTag`.

`DigitalTerrainModelCollection.Project` consulta los modelos que tienen esa etiqueta, y todos los modelos si la etiqueta está vacía, y devuelve la primera Z que obtiene. Si ningún modelo consultado proporciona una coordenada Z, `DigitalTerrainModelCollection.Project` devuelve `null` y `CreatePolygons` conserva la Z original del vértice.

Para reproducir lo que hace Digi3D.AI, añade a la colección cada MDT con la etiqueta que tiene en Digi3D.AI. Un MDT añadido con una etiqueta vacía solo responde a las reglas con etiqueta vacía. Las etiquetas distinguen mayúsculas de minúsculas.

Si ninguna regla de la topología proyecta sobre un MDT, `CreatePolygons` no necesita el MDT. El programa de este procedimiento abre el MDT siempre; si ninguna topología de tu tabla lo usa, puedes quitar las líneas que lo abren y pasar `null` como `projectZ`.

## Topologías con condiciones de exclusión

Cada código de una topología puede tener una condición de exclusión (`TopologyCode.ExcludeCondition`): una expresión de Python que, si es verdadera para una línea, excluye la línea de la topología. Digi3D.AI evalúa esas expresiones con su intérprete de Python. `AnalyzeTopology` no evalúa por sí mismo las expresiones de Python, así que lanza `ArgumentException` si una topología tiene alguna condición de exclusión y no recibe el delegado `TopologyAnalysisHandlers.EvaluateExcludeCondition`.

Hay dos opciones:

- Omitir las topologías que tienen alguna condición de exclusión, como hace el programa de este procedimiento.
- Asignar a `EvaluateExcludeCondition` un delegado propio. Recibe la entidad y el texto de la condición, y devuelve `true` para excluir la entidad. El código del delegado tiene que interpretar la expresión de Python: ni el ensamblado ni el paquete la evalúan.

## Diferencias con BINTOP y TOPOLOGIA_A_POLIGONO

- `AnalyzeTopology` lanza una excepción cuando detecta líneas con puntos dobles o entidades con un solo punto; `BINTOP` muestra un globo. Antes de lanzar la excepción, `AnalyzeTopology` notifica cada entidad afectada con los delegados `LineWithDoublePoints` y `EntityWithFewerThanTwoVertices`.
- Los avisos y errores se notifican con los delegados de `TopologyAnalysisHandlers`. `BINTOP` los añade al panel de tareas y, si se pide, a un fichero de errores.
- Si ninguna entidad tiene un código de la topología, `AnalyzeTopology` devuelve una colección vacía; `BINTOP` escribe «No se han encontrado entidades con las que trabajar».
- Cuando detecta puntos dobles o entidades con un solo punto, `AnalyzeTopology` lanza una excepción sin corregir los puntos dobles ni eliminar las entidades de tipo punto.
- `CreatePolygon` lanza `ArgumentException` si el recinto no tiene centroide o si el centroide es el de huecos. `CreatePolygons` omite esos recintos.

## Uso desde varios hilos

`DigitalTerrainModel.Project` y `DigitalTerrainModelCollection.Project` admiten llamadas simultáneas de varios hilos. No llames a `DigitalTerrainModelCollection.Add` mientras otro hilo ejecuta `DigitalTerrainModelCollection.Project` sobre la misma colección, ni a `DigitalTerrainModel.Dispose` mientras haya una llamada a `Project` en curso. La documentación de los demás tipos que usa el programa no indica que se puedan usar desde varios hilos; el programa procesa los archivos de uno en uno.

## Puntos a tener en cuenta

- `DigitalTerrainModel.Project` no transforma coordenadas. El MDT y los archivos `.bind` tienen que estar en el mismo sistema de coordenadas horizontal. El sistema del MDT está en `DigitalTerrainModel.CoordinateSystemWkt`, y el del archivo `.bind` en `BinDouble.Wkt`.
- Los recintos que devuelve `AnalyzeTopology` conservan referencias a las entidades de la lista, y `CreatePolygons` lee las coordenadas nativas de esas entidades. Mientras uses los recintos, no liberes las entidades ni cierres el `BinDouble` del que las leíste.
## Más información

- [TopologyAnalyzer](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md) y [TopologyAnalysisHandlers](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalysishandlers.md): métodos y delegados del análisis.
- [TopologyDefinition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md): datos de una topología de la tabla de códigos.
- [Digi21.DigiNG.Dtm](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/README.md): apertura de un MDT y consulta de la Z.
- Editor de tablas de códigos: cuadros de diálogo [Añadir topología](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/anadir-topologia.md) y [Seleccionar códigos para topología](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/seleccionar-codigos-para-topologia.md).
- Órdenes [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md) y [TOPOLOGIA\_A\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/topologia-a-poligono.md).
