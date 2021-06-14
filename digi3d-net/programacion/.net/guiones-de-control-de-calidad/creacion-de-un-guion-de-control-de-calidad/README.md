# Creación de un guion de control de calidad

Los controles de calidad son guiones que se asignan en el campo [Guion](../../../../referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md#guion) de los códigos en una tabla de códigos.

Digi3D.NET compilará el guion la primera vez que se vaya a analizar el control de calidad de una geometría con un determinado código. De manera que la siguiente vez que intente analizar el control de calidad de otra geometría con dicho código, el guion ya estará compilado en un ensamblado y éste ensamblado estará cargado en memoria y listo para ser ejecutado.

### Referencias

Como el proceso de compilación de un ensamblado requiere especificar los ensamblados de referencia a los que referencia el ensamblado que se está compilando, el [Editor de Tablas de códigos](../../../../referencia/editor-de-tablas-de-codigos/) dispone de una opción en el menú Herramientas/Ensamblados que nos va a permitir indicar los ensamblados a referenciar por cada uno de los ensamblados que se van a generar en la carpeta _TEMP_.

Los ensamblados de referencia mínimos requeridos son:

```text
System.dll
System.Core.dll
Digi21.DigiNG, Version=21.0.0.0, Culture=neutral, PublicKeyToken=6751d7d8a775bb8c
Digi21.DigiNG.Plugin, Version=21.0.0.0, Culture=neutral, PublicKeyToken=6751d7d8a775bb8c
```

Los ensamblados _System.dll_ y _System.Core.dll_ son necesarios para todo ensamblado .NET, y los ensamblados [Digi21.DigiNG](../../referencia/digi21.diging/) y [Digi21.DigiNG.Plugin](../../referencia/digi21.diging.plugin/) proporcionan todos los tipos necesarios para interactuar con el motor de programación de Digi3D.NET.

### Código del guion

Los guiones contienen el código mínimo necesario para proporcionar una clase pública que implemente el interfaz [ITrigger](../../referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/interfaces/itrigger/).

Este interfaz proporciona un único método [AnalizeEntity](../../referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/interfaces/itrigger/metodos/analyzeentity.md) que recibe dos parámetros: la geometría a analizar y un booleano indicando si se está analizando porque se está almacenando una geometría \(_Verdadero_\) o porque el usuario ha seleccionado la opción del menú de analizar control de calidad.

El nombre de la clase que implemente este interfaz y el nombre del espacio de nombres donde se defina la clase no es importante. Lo importante es que la clase sea pública y que ésta implemente el interfaz [ITrigger](../../referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/interfaces/itrigger/).

### Ejemplo:

El siguiente ejemplo sería el cuerpo mínimo de un guion de control de calidad.

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
		        // añadir aquí la lógica del control de calidad o devolver entidad
		        return entidad;
        }
    }
}
```

El método [AnalizeEntity ](../../referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/interfaces/itrigger/metodos/analyzeentity.md)no tiene por qué ceñirse únicamente a realizar tareas de control de calidad, podría realizar fuera de este contexto, como por ejemplo actualizar una base de datos externa de control de producción, enviar eventos por correo electrónico, etc.

En [Tipos de errores](tipos-de-errores/) se enumeran los tipos de errores que puede comunicar el guion.



