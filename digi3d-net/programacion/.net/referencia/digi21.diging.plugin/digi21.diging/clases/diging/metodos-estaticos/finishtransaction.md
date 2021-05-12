# FinishTransaction

Espacio de nombres: [Digi21.DigiNG.Plugin](../../../../)  
Ensamblado: [Digi21.DigiNG.Plugin](../../../../)

Finaliza la transacción actual en la pila de UNDO.

```csharp
public static void FinishTransaction()
```

## Observaciones

No es común llamar a este método pues el método [NewTransacion ](newtransaction.md)utilizado en el caso normal ya se encarga de insertar en la pila de UNDO nodos de fin de transacción.

Lee las [observaciones](newtransaction.md#observaciones) de [NewTransaction](newtransaction.md) para entender contexto en el que se debe llamar a este método.

