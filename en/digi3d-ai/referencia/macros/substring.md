# Substring
<!-- id: substring -->
<!-- origen: 26ec3515dd0d448772261f0c1697509c011a7ec1 -->

Returns _cantidad_ characters starting at _inicio_ in the macro on which this function runs.

```csharp
 $(nombre_de_la_macro).Substring(inicio, cantidad)
```

## Parameters

`inicio`\
Starting position of the substring to return (the first character is at position 0).

`cantidad`\
Number of characters to return.

## Returns

The _cantidad_ characters starting at _inicio_.

## Example

For example, if `$(CodigoCentroide)` expands to 020400:

Use `$(CodigoCentroide).Substring(1, 4)` to obtain 2040.
