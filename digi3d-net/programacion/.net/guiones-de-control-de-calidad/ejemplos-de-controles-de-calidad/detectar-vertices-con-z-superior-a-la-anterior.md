# Detectar vértices con Z superior a la del anterior vértice

Vamos a crear un control de calidad que asignaremos a códigos de planimetría que tengan que se tengan que digitalizar forzosamente desde la cota más alta a la más baja. 

Este guion analizará únicamente líneas y analizará la coordenada Z de los vértices de la línea. En caso de detectar el error, se lanzará una excepción de tipo [GeometryException](../../referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/clases/geometryexception.md) indicando el error, así como las coordenadas donde se ha localizado el error.

```csharp
using System;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.QualityControl;

namespace DigiTab
{
    public class Desencadenador : ITrigger 
    {
	    public Entity AnalyzeEntity(Entity entidad, bool almacenandoEntidad) 
        {
            if( !(entidad is ReadOnlyLine))
                return entidad;
                
            var linea = entidad as ReadOnlyLine;
            
            var z = linea.Points[0].Z;
            foreach(var vertice in linea.Points) {
                if( vertice.Z > z )
                    throw new GeometryException("Detectado vértice con coordenada Z superior al anterior", vertice);
                z = vertice.Z;    
            }

            return entidad;
        }
    }
}
```

