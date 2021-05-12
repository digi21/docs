# NewTransaction

Espacio de nombres: [Digi21.DigiNG.Plugin](../../../../)  
Ensamblado: [Digi21.DigiNG.Plugin](../../../../)

Crea una nueva transacción en la pila de transacciones de UNDO.

```csharp
public static void NewTransaction(bool finishCurrentTransaction=true)
```

### Parámetros

`finishCurrentTransaction` [Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Booleano que indica si finalizar la transacción actual.

## Observaciones

El motor de Digi3D.NET inserta en la pila de [UNDO](../../../../../../../../referencia/digi3d.net/ventana-de-dibujo/ordenes/u/undo.md) un nodo de comienzo de transacción inmediatamente antes de ejecutar el comando, e inserta automáticamente un nodo de fin de transacción cuando se destruye la orden.

Veamos por ejemplo cómo queda la pila de UNDO si se ejecuta una orden que añade la geometría 12345, y se elimina la geometría 67890:

```text
[FIN DE TRANSACCIÓN] <- Este nodo se inserta siempre que finaliza una orden
Eliminada la geometría 67890
Insertada la geometría 12345
[COMIENZO DE TRANSACCIÓN] <- Este nodo se inserta siempre antes de instanciar la orden
```

Si ahora el usuario ejecuta la orden UNDO, Digi3D.NET buscará en la pila el primer nodo FIN DE TRANSACCIÓN y deshará todo lo que encuentre ahí hasta localizar el nodo COMIENZO DE TRANSACCIÓN.

Si queremos modificar este comportamiento para que el usuario tenga que ejecutar la orden UNDO tantas veces como geometrías se hayan modificado \(en este ejemplo dos veces\) tenemos que insertar un nodo de fin de transacción y uno de comienzo de transacción justo antes de modificar cada geometría:

```text
[FIN DE TRANSACCIÓN] <- Este nodo se inserta siempre que finaliza una orden
Eliminada la geometría 67890
[COMIENZO DE TRANSACCIÓN]
[FIN DE TRANSACCIÓN] 
Insertada la geometría 12345
[COMIENZO DE TRANSACCIÓN] <- Este nodo se inserta siempre antes de instanciar la orden
```

Para hacer esto utilizamos el método [NewTransaction](newtransaction.md) pasando como parámetro _verdadero_, justo antes de añadir o eliminar la geometría. Al pasar _verdadero_ ocurre lo siguiente:

* Digi3D.NET comprueba si el último nodo añadido en la pila de UNDO es un nodo de COMIENZO DE TRANSACCIÓN. En caso afirmativo, no hace nada.
* En caso contrario, añade un nodo de FIN DE TRANSACCIÓN e inmediatamente después añade un nodo de COMIENZO DE TRANSACCIÓN.

¿Cuándo pasar _falso_ en el parámetro de este método?

Podría darse el caso de que implementemos un comando que muestre un panel lateral y que el comando finalize inmediatamente \(lo que hará que Digi3D inserte un nodo de COMIENZO DE TRANSACCIÓN de transacción, ejecute el comando y al finalizar éste se añada un nodo de FIN DE TRANSACCIÓN\), de manera que la pila quedaría así:

```text
[FIN DE TRANSACCIÓN] <- Este nodo se inserta siempre que finaliza una orden
[COMIENZO DE TRANSACCIÓN] <- Este nodo se inserta siempre antes de instanciar la orden
```

Cuando Digi3D.NET añade un nodo de FIN DE TRANSACCIÓN, comprueba si el último nodo de la pila es un nodo de COMIENZO DE TRANSACCIÓN. En caso afirmativo, en vez de añadir un noro de FIN DE TRANSACCIÓN inmediatamente después del nodo COMIENZO DE TRANSACCIÓN lo que hace es eliminar el nodo COMIENZO DE TRANSACCIÓN, de manera que la pila quedaría vacía:

```text
 
```

En este escenario la orden ha finalizado, pero el panel sigue visualizándose. Si este panel tiene algún interfaz de usuario \(como un botón\) que desencadene que se inserten o eliminen geometrías, como no estamos dentro de ninguna transacción los nodos UNDO que se añadan en la pila de UNDO quedarán huérfanos, es decir, que si el panel añade por ejemplo la geometría 111, la pila de UNDO queda así:

```text
Insertada la geometría 111
```

Si el usuario ahora ejecuta la orden UNDO, ésta no sabrá qué hacer, pues no puede localizar en la pila de UNDO un nodo de FIN DE TRANSACCIÓN y como la orden UNDO únicamente elimina lo que hay entre un nodo de FIN DE TRANSACCIÓN y el nodo de COMIENZO DE TRANSACCIÓN, pues no deshace nada.

Para solucionar este problema, podemos llamar al método [NewTransaction](newtransaction.md) pero en este caso pasando _falso_ en el parámetro, porque no queremos que se inserte un nodo de fin de transacción, y una vez realidada la inserción o eliminación de geometrías, llamar al método [FinishTransaction](finishtransaction.md) para que se inserte un nodo de FIN DE TRANSACCIÓN en la pila.

