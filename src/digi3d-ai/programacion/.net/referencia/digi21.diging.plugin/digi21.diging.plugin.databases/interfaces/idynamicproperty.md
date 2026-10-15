# IDynamicProperty
<!-- id: idynamicproperty -->

Espacio de nombres: `Digi21.DigiNG.Plugin.Databases`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Proveedor de una propiedad dinámica: un valor por defecto de un campo de base de datos que calcula una extensión a partir de la entidad que se almacena.

```csharp
public interface IDynamicProperty
```

## Propiedades dinámicas

En el esquema de una tabla de la tabla de códigos, el valor por defecto de un campo puede ser una propiedad dinámica con una de estas formas:

- `%NOMBRE%`: propiedad sin parámetro.
- `%NOMBRE% parámetro`: propiedad con parámetro. El parámetro es el texto que sigue al primer espacio.

Digi3D.AI resuelve primero los valores especiales que conoce. Después, para cada campo cuyo valor por defecto tiene una de esas formas, busca la extensión registrada con el nombre `NOMBRE` (sin los signos `%`) en [DynamicPropertyAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/atributos/dynamicpropertyattribute.md) y llama a `Transform`. Esto ocurre al preparar los registros de base de datos de una entidad que se almacena en un archivo de dibujo con base de datos, y al editar los códigos de una entidad con el editor de códigos.

## Registro

Digi3D.AI carga al arrancar las extensiones registradas en la clave `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\DynamicPropertyProviders`: el nombre de cada valor de tipo cadena es la ruta completa de la DLL. Digi3D.AI carga la DLL con `Assembly.LoadFile`, sin leer su archivo `.deps.json`.

En cada DLL, Digi3D.AI crea un objeto de cada clase pública con `DynamicPropertyAttribute`, con su constructor público sin parámetros, y lo guarda si implementa `IDynamicProperty`. Una clase con el atributo que no implementa la interfaz se ignora. Digi3D.AI usa el mismo objeto durante toda la sesión.

Si una clase no tiene constructor público sin parámetros, si su constructor lanza una excepción o si otra clase ya ha registrado el mismo nombre, Digi3D.AI escribe el error en el registro de eventos de Windows y no registra ninguna clase más de esa DLL. El usuario no ve ningún mensaje.

## Métodos

### Transform

```csharp
object Transform(string parameter, Entity entity)
```

Devuelve el valor del campo.

| Parámetro | Descripción |
| :--- | :--- |
| `parameter` | Texto que sigue al primer espacio del valor por defecto, o una cadena vacía si la propiedad no tiene parámetro. En `%NUMERO_VERTICES% 10`, vale `"10"`. |
| `entity` | Entidad que se almacena. |

Digi3D.AI convierte el valor devuelto a un `VARIANT` de COM con `Marshal.GetNativeVariantForObject` y lo asigna al campo. Los tipos habituales son `string`, `int`, `double`, `bool` y `DateTime`.

| Resultado | Efecto |
| :--- | :--- |
| Un valor | Se asigna al campo. |
| `null` | El campo se queda sin valor por defecto. El usuario no ve ningún mensaje. |
| Una excepción, o un valor que no se puede convertir a `VARIANT` | Digi3D.AI muestra un mensaje con el nombre de la propiedad, el mensaje de la excepción (el de `InnerException`, si existe) y el nombre del tipo, y el campo se queda sin valor por defecto. |

## Ejemplo

Esta extensión implementa la propiedad dinámica `%NUMERO_VERTICES%`. Sin parámetro devuelve el número de vértices de la línea; con un parámetro numérico devuelve el número de vértices con X menor que ese valor.

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Databases;

namespace NumeroVertices;

// Valor por defecto del campo en el esquema de la tabla de códigos:
//   %NUMERO_VERTICES%        número de vértices de la línea
//   %NUMERO_VERTICES% 10     número de vértices con X menor que 10
[DynamicProperty("NUMERO_VERTICES")]
public class PropiedadNumeroVertices : IDynamicProperty
{
    public object Transform(string parameter, Entity entity)
    {
        if (entity is not ReadOnlyLine línea)
            return null; // El campo se queda sin valor.

        if (string.IsNullOrEmpty(parameter))
            return línea.Points.Count;

        var límite = double.Parse(parameter, System.Globalization.CultureInfo.InvariantCulture);
        return línea.Points.Count(p => p.X < límite);
    }
}
```
