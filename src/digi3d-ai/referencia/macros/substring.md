# Substring

Devuelve _Cantidad_ caracteres desde la posición _Inicio_ de la macro sobre la que se ejecuta esta función.

```csharp
 $(nombre_de_la_macro).Substring(inicio, cantidad)
```

## Parámetros

`inicio`\
Posición del origen de la sub-cadena a devolver (la posición del primer carácter es 0)

`cantidad`\
Cantidad de caracteres a devolver.

## Devuelve

Los _Cantidad_ caracteres comenzando por la posición _Inicio_.

## Ejemplo

Supongamos que la macro `$(CodigoCentroide)` se va a sustituir por el texto: 020400.

Si queremos obtener el texto: 2040 podemos hacerlo con la llamada `$(CodigoCentroide).Substring(1, 4)`

