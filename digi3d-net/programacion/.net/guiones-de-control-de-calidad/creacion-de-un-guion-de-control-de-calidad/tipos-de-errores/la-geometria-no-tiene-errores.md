# La geometría no tiene errores

Si la geometría que se está analizando no tiene ningún error, el guion devolverá la geometría sin modificar como en el siguiente ejemplo:

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
		        return entidad;
        }
    }
}
```

