# Substring
<!-- id: substring -->

Devuelve _Cantidad_ caracteres desde la posición _Inicio_ de la macro sobre la que se ejecuta esta función.

```csharp
 $(nombre_de_la_macro).Substring(inicio, cantidad)
```

## Parámetros

`inicio`\
Posición inicial de la subcadena que se devolverá (la posición del primer carácter es 0).

`cantidad`\
Cantidad de caracteres a devolver.

## Devuelve

Los _Cantidad_ caracteres comenzando por la posición _Inicio_.

## Ejemplo

Por ejemplo, si la macro `$(CodigoCentroide)` se sustituye por el texto 020400:

Utiliza la llamada `$(CodigoCentroide).Substring(1, 4)` para obtener el texto 2040.

