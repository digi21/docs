# La geometría tiene errores pero se pueden solventar automáticamente sustituyéndola por otra

El guion puede convertir la geometría en otra completamente distinta como en el siguiente ejemplo que devuelve un punto si la geometría a almacenar es una línea:

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
						if( !almacenandoEntidad )
										return entidad;
										
						if( entidad is ReadOnlyLine) {
						        return new Point(entidad.Codes)
										{
														Coordinate = (entidad as ReadOnlyLine).Points[0]
										};
						}
						
						return entidad;
        }
    }
}
```

