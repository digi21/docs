# AnalyzeEntity

Espacio de nombres: [Digi21.DigiNG.Plugin.QualityControl](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/)  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/)

Este método es llamado por Digi3D.NET para analizar el control de calidad de una geometría.

```csharp
Entity AnalyzeEntity(Entity entity, bool addingEntity);
```

## Parámetros

`entity`[Entity](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/)  
Geometría a analizar.

`addingEntity`[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si el análisis se ha desencadenado porque se está almacenando una geometría \(antes de almacenarla\) o Falso si el análisis se ha desencadenado porque el usuario ha ordenado hacer un control de calidad manualmente.

## Devuelve

[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Geometría a almacenar. No tiene por qué ser la geometría original, puede ser otra como por ejemplo una geometría de tipo [Point](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) y su perímetro por ejemplo era muy pequeño y el control de calidad decide que hay que transformarla en un punto.

## Excepciones

Digi3D.NET entiende que, si este método no lanza ninguna excepción, que debe almacenar la geometría que se está analizando, y si recibe una excepción, no va a almacenar la geometría y va a comunicar al usuario un error.

Las excepciones que espera recibir Digi3D.NET cuando llama a este método son las siguientes:

* [DatabaseAttributeException](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/excepciones/databaseattributeexception.md)
* [DigitizeAsPointException](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/excepciones/digitizeaspointexception.md)
* [GeometricRelationException](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/excepciones/geometricrelationexception.md)
* [GeometryException](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/excepciones/geometryexception.md)
* [WarningException](https://docs.microsoft.com/en-us/dotnet/api/system.componentmodel.warningexception?view=net-5.0)

## Observaciones

Digi3D.NET llama a este método en los guiones de control de calidad que se pueden almacenar en la tabla de códigos para cada código.

Estos guiones son programas en C\# que Digi3D.NET compila en el momento de cargar la tabla de códigos generando en el directorio temporal de Windows un ensamblado por cada guion de control de calidad localizado en la tabla de códigos.

Como el proceso de compilación de un ensamblado requiere que se introduzcan ensamblados de referencia como: _System.dll_, _System.Core.dll_, el [Editor de Tablas de Códigos](../../../../../../../../referencia/editor-de-tablas-de-codigos/) dispone de la opción del menú [Herramientas/Referencias](../../../../../../../../referencia/editor-de-tablas-de-codigos/menus/herramientas/referencias.md).

Puedes aprender más en [Guiones de Control de Calidad](../../../../../../guiones-de-control-de-calidad/).

## Ejemplo:

El siguiente guion de ejemplo asignado a un determinado código lanza una excepción de tipo [GeometryException](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.qualitycontrol/excepciones/geometryexception.md):

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
		        if( !(entity is ReadOnlyLine) )
		            throw new GeometryException(String.Format("Las geometrías con el código {0} deben ser líneas.", entidad.Codes[0].Name));
		        
						return entidad;
        }
    }
}
```

