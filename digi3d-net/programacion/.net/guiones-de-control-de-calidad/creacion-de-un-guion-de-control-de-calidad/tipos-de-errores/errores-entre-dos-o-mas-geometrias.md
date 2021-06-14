# Errores entre dos o más geometrías

El guion puede comunicar a Digi3D.NET que ha localizado un error de relación entre la geometría que se ha ordenado almacenar y otra geometría existente en el archivo de dibujo lanzando una excepción de tipo [GeometricRelationException](../../../referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/clases/geometricrelationexception.md) como en el siguiente ejemplo que comunica este error si la geometría que se está almacenando tiene el mismo código que otra geometría existente \(suponemos que el control de calidad no permite que existan dos geometrías con el mismo código\):

```csharp
using System;
using System.Collections.Generic;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.QualityControl;
using Digi21.Utilities;
using ng = Digi21.DigiNG.DigiNG;

namespace DigiTab
{
    public class Desencadenador : ITrigger 
    {
	    public Entity AnalyzeEntity(Entity entidad, bool almacenandoEntidad) 
        {
		    var existentes = new List<Entity>(ng.DrawingFile.QueTenganElCódigo(entidad.Codes[0].Name));
            if( existentes.Count == 0)
                return entidad;
                
            if( existentes.Count == 0)
                return entidad;
                
            throw new GeometricRelationException(existentes[0], "Ya existe una geometría con este código");  
        }
    }
}
```

