# Right
<!-- id: right -->

Devuelve los _Cantidad_ últimos caracteres de la macro sobre la que se ejecuta esta función.

```csharp
 $(nombre_de_la_macro).Right(cantidad)
```

## Parámetros

`cantidad`\
Cantidad de caracteres a devolver.

## Devuelve

Los últimos _cantidad_ caracteres de los que genere la macro.

## Ejemplo

Por ejemplo, si la macro `$(CodigoCentroide)` se sustituye por el texto 020400:

Utiliza la llamada `$(CodigoCentroide).Right(3)` para obtener el texto 400.

