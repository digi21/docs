# Left
<!-- id: left -->

Devuelve los _Cantidad_ primeros caracteres de la macro sobre la que se ejecuta esta función.

```csharp
 $(nombre_de_la_macro).Left(cantidad)
```

## Parámetros

`cantidad`\
Cantidad de caracteres a devolver.

## Devuelve

Los primeros _cantidad_ caracteres de los que genere la macro.

## Ejemplo

Por ejemplo, si la macro `$(CodigoCentroide)` se sustituye por el texto 020400:

Utiliza la llamada `$(CodigoCentroide).Left(3)` para obtener el texto 020.

