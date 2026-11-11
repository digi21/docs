# TopologiasDesdeTabla
<!-- id: ejemplo-net-topologias-desde-tabla -->

`TopologiasDesdeTabla` es una **aplicación de consola** que crea polígonos a partir de las topologías de una tabla de códigos y los añade a cada archivo `.bind` de una carpeta. Hace fuera de Digi3D.AI lo que hace la orden [TOPOLOGIA\_A\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/topologia-a-poligono.md). Si una topología proyecta la coordenada Z sobre un modelo digital del terreno (MDT), el programa obtiene esa Z de un archivo `.mdt`.

Código: [TopologiasDesdeTabla en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/TopologiasDesdeTabla). El procedimiento [Crear las topologías de la tabla de códigos desde un programa externo](../crear-topologias-desde-un-programa-externo.md) explica paso a paso un programa equivalente.

## Compilar

El proyecto usa .NET 10 y estos paquetes:

| Paquete | Versión |
|---|---|
| `Digi21.DigiNG` | 26.2.0 |
| `Digi21.DigiNG.Topology` | 26.1.0 |
| `Digi21.DigiNG.Dtm` | 26.0.0 |
| `Digi21.DigiNG.IO.BinDouble` | 26.0.1 |

El programa requiere Digi3D.AI 2027.0.0.428 o posterior instalado en el equipo. Compila el proyecto desde la carpeta del repositorio:

```
dotnet build TopologiasDesdeTabla\TopologiasDesdeTabla.csproj -c Release -o C:\Herramientas\TopologiasDesdeTabla
```

## Ejecutar

```
C:\Herramientas\TopologiasDesdeTabla\TopologiasDesdeTabla.exe <carpeta> <tabla.tab.xml> [modelo.mdt] [topología...]
```

| Argumento | Descripción |
|---|---|
| `<carpeta>` | Carpeta cuyos archivos `.bind` se procesan, en orden alfabético sin distinguir mayúsculas de minúsculas. El programa no procesa los archivos de las subcarpetas. |
| `<tabla.tab.xml>` | Archivo de la tabla de códigos con las topologías. |
| `[modelo.mdt]` | Archivo `.mdt` sobre el que se proyectan los polígonos. El programa interpreta el tercer argumento como un MDT solo si su extensión es `.mdt`; en otro caso es el nombre de una topología. Sin MDT, los vértices conservan su Z original. |
| `[topología...]` | Nombres de las topologías que se procesan. Si no se indica ninguna, el programa procesa todas las de la tabla de códigos. |

Ejemplos:

```
TopologiasDesdeTabla C:\Datos tabla.tab.xml
TopologiasDesdeTabla C:\Datos tabla.tab.xml terreno.mdt EDIFICIO ACERA
```

Si faltan argumentos, el programa escribe el formato de uso en la salida de error y termina con código 1. También termina con código 1 si la carpeta no existe, si la tabla de códigos no define ninguna topología o si falla la carga de la tabla o del MDT.

## Qué hace con cada archivo

Para cada archivo `.bind`, el programa escribe `Archivo <ruta>` y lo abre en lectura y escritura con la tabla de códigos. Guarda en una lista las entidades que tiene el archivo al abrirlo. Para cada topología, en el orden indicado:

1. Obtiene la definición de la topología de la tabla. Si el nombre no existe, escribe `[<topología>] No se puede obtener la topología: <mensaje>` en la salida de error y pasa a la topología siguiente.
2. Analiza las entidades de la lista con `AnalyzeTopology` y escribe por consola los avisos del análisis: líneas con puntos dobles, puntos o líneas con menos de dos vértices, contornos que no encierran ningún área, recintos sin centroide, recintos con varios centroides, centroides fuera de todo recinto y entidades que no forman parte de ningún recinto válido. Cada aviso empieza por `[<topología>] Aviso:` e indica, cuando procede, las coordenadas X e Y próximas al problema detectado.
3. Crea los polígonos de los recintos con `CreatePolygons`, que proyecta la Z sobre el MDT cuando la definición de la topología establece que se proyecte la coordenada Z sobre un MDT. Los recintos sin centroide no generan polígono.
4. Añade cada polígono al archivo con `Add` y lo libera con `Dispose`.
5. Escribe `[<topología>] <n> recintos, <m> polígonos añadidos`.

El análisis de cada topología usa la lista de entidades guardada al abrir el archivo, así que los polígonos que el programa añade para una topología no forman parte del análisis de las topologías siguientes.

## Errores y casos especiales

- **Errores de una topología.** Cualquier excepción del análisis, de la creación de los polígonos o de la escritura se muestra como `[<topología>] Se localizó el siguiente error: <mensaje>` en la salida de error, y el programa continúa con la topología siguiente. `AnalyzeTopology` lanza una excepción, después de escribir los avisos, si el archivo tiene líneas con puntos dobles o entidades con un solo punto.
- **Condiciones de exclusión.** El programa no omite las topologías que tienen códigos con condición de exclusión, ni define un delegado para evaluar las condiciones de exclusión. En esas topologías `AnalyzeTopology` lanza `ArgumentException` y el programa escribe el error de la topología. El programa descrito en [Crear las topologías de la tabla de códigos desde un programa externo](../crear-topologias-desde-un-programa-externo.md) omite las topologías cuyos códigos tienen condiciones de exclusión.
- **Archivos de solo lectura.** Si un archivo tiene el atributo de solo lectura, `BinDouble` lo abre en solo lectura sin lanzar ninguna excepción y `Add` falla al añadir el primer polígono. El programa escribe el error de cada topología que tenga polígonos que añadir y no modifica el archivo. El programa continúa procesando los demás archivos.
- **Errores de un archivo.** Si falla la apertura de un archivo, el programa escribe `Se localizó el siguiente error: <mensaje>` y continúa con el archivo siguiente.
- **Ejecuciones repetidas.** El programa conserva los polígonos que ya tiene el archivo y añade los que genera. Si lo ejecutas dos veces sobre el mismo archivo, la segunda ejecución añade otra vez los mismos polígonos.

## Cómo funciona

Si se proporciona un archivo `.mdt`, el programa lo abre una sola vez y añade el modelo a una colección [DigitalTerrainModelCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/digitalterrainmodelcollection.md) con la etiqueta vacía para utilizar ese modelo con cualquier regla de proyección. El programa pasa `modelos.Project` a `CreatePolygons`:

```csharp
var modelos = new DigitalTerrainModelCollection();
using var modelo = rutaMdt is null ? null : DigitalTerrainModel.Open(rutaMdt);
if (modelo is not null)
    modelos.Add(modelo, "");

// La lista entidades contiene las entidades presentes al abrir el archivo;
// el análisis de las topologías siguientes no incluye los polígonos añadidos durante esta ejecución.
using var archivo = new BinDouble(rutaArchivo, tabla);
var entidades = archivo.ToList();

// Dentro de CreaYAnadePoligonosDeTopologia:
var recintos = entidades.AnalyzeTopology(definicion, manejadoresAvisosAnalisisTopologico).ToList();
var polígonos = recintos.CreatePolygons(definicion, modelos.Project);
foreach (var polígono in polígonos)
{
    archivo.Add(polígono);
    polígono.Dispose();
}
```

Referencias de la API: [TopologyAnalyzer](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md), [TopologyAnalysisHandlers](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalysishandlers.md) y [DigitalTerrainModel](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/digitalterrainmodel.md).