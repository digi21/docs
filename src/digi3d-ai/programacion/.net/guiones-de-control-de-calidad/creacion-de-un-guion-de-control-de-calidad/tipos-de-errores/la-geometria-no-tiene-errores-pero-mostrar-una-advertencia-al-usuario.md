# La geometría no tiene errores pero mostrar una advertencia al usuario

El guion puede comunicar una advertencia a Digi3D.NET para que éste muestre un globo al usuario cuando almacene la geometría lanzando una excepción de tipo [System.ComponentModel.WarningException](https://docs.microsoft.com/en-us/dotnet/api/system.componentmodel.warningexception?view=net-5.0) como en el siguiente ejemplo:

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
            throw new System.ComponentModel.WarningException("El código de esta geometría está deprecado");  
        }
    }
}
```

