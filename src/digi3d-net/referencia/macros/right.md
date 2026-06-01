# Right

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

Supongamos que la macro `$(CodigoCentroide)` se va a sustituir por el texto: 020400.

Si queremos obtener el texto: 400 podemos hacerlo con la llamada `$(CodigoCentroide).Right(3)`

