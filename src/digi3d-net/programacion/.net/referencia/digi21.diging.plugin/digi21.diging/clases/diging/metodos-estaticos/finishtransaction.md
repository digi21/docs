# FinishTransaction

Espacio de nombres: [Digi21.DigiNG.Plugin](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/)  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/)

Finaliza la transacción actual en la pila de UNDO.

```csharp
public static void FinishTransaction()
```

## Observaciones

No es común llamar a este método pues el método [NewTransacion](newtransaction.md)utilizado en el caso normal ya se encarga de insertar en la pila de UNDO nodos de fin de transacción.

Lee las [observaciones](newtransaction.md#observaciones) de [NewTransaction](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/metodos-estaticos/newtransaction.md) para entender contexto en el que se debe llamar a este método.

