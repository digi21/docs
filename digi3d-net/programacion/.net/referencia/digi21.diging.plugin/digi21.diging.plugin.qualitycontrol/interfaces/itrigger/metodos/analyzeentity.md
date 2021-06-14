# AnalyzeEntity

Espacio de nombres: [Digi21.Math](../../../../../digi21.diging/digi21.math/)  
Ensamblado: [Digi21.DigiNG](../../../../../digi21.diging/)

Este método es llamado por Digi3D.NET para analizar el control de calidad de una geometría.

```csharp
Entity AnalyzeEntity(Entity entity, bool addingEntity);
```

## Parámetros

`entity`[Entity](../../../../../digi21.diging/digi21.diging.entities/clases/entity/)  
Geometría a analizar.

`addingEntity`[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Verdadero si el análisis se ha desencadenado porque se está almacenando una geometría \(antes de almacenarla\) o Falso si el análisis se ha desencadenado porque el usuario ha ordenado hacer un control de calidad manualmente.

## Devuelve

[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Geometría a almacenar. No tiene por que ser la geometría original, puede ser otra como por ejemplo una geometría de tipo [Point](../../../../../digi21.diging/digi21.diging.entities/clases/point/) si la geometría a analizar era de tipo [Line](../../../../../digi21.diging/digi21.diging.entities/clases/line/) y su perímetro por ejemplo era muy pequeño y el control de calidad decide que hay que transformarla en un punto.

## Excepciones

Digi3D.NET entiende que, si este método no lanza ninguna excepción, que debe almacenar la geometría que se está analizando, y si recibe una excepción, no va a almacenar la geometría y va a comunicar al usuario un error.

Las excepciones que espera recibir Digi3D.NET cuando llama a este método son las siguientes:

* [DatabaseAttributeException](../../../clases/databaseattributeexception.md)
* [DigitizeAsPointException](../../../clases/digitizeaspointexception.md)
* [GeometricRelationException](../../../clases/geometricrelationexception.md)
* [GeometryException](../../../clases/geometryexception.md)

## Observaciones

Digi3D.NET llama a este método en los guiones de control de calidad que se pueden almacenar en la tabla de códigos para cada código.

Estos guiones son programas en C\# que Digi3D.NET compila en el momento de cargar la tabla de códigos generando en el directorio temporal de Windows un ensamblado por cada guion de control de calidad localizado en la tabla de códigos.

Como el proceso de compilación de un ensamblado requiere que se introduzcan ensamblados de referencia como: _System.dll_, _System.Core.dll_, el [Editor de Tablas de Códigos](../../../../../../../../referencia/editor-de-tablas-de-codigos/) dispone de la opción del menú [Herramientas/Referencias](../../../../../../../../referencia/editor-de-tablas-de-codigos/menus/herramientas/referencias.md).

## Ejemplo:

El siguiente guion de ejemplo asignado a un determinado código lanza una excepción de tipo [GeometryException](../../../clases/geometryexception.md) si la geometría a almacenar no es de tipo [Line](../../../../../digi21.diging/digi21.diging.entities/clases/line/):

```csharp
using System;
using Digi21.DigiNG.Entities;

namespace DigiTab
{
    public class Desencadenador : ITrigger 
    {
	      public Entity AnalyzeEntity(Entity entidad, bool almacenandoEntidad) 
		    {
		        if( !(Entity is ReadOnlyLine) )
		            throw new GeometryException($"Las geometrías con el código {entidad.Codes[0].Name} deben ser líneas.");
		        
						return entidad;
        }
    }
}
```

