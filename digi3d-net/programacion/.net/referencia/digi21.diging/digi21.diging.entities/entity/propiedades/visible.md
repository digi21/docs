# Visible

Espacio de nombres: [Digi21.DigiNG.Entities](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities)   
Ensamblado: [Digi21.DigiNG](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging)​‌

Especifica la geometría representada por este [Entity](https://app.gitbook.com/@digi21/s/ayuda-de-digi21/~/drafts/-MXR80mySoUUhqygVNjW/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/entity) es visible.

```csharp
public bool Visible { get; }‌
```

## Valor de la propiedad <a id="valor-de-la-propiedad"></a>

‌​[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)​‌

_Verdadero_ si la geometría es visible. _Falso_ en caso contrario.‌

## Observaciones <a id="observaciones"></a>

‌Esta propiedad devolverá verdadero en caso de que la geometría no esté oculta \([Hidden](hidden.md)\) y además al menos uno de sus códigos esté habilitado en la ventana de dibujo con las órdenes [ON](../../../../../../../referencia/digi3d.net/ventana-de-dibujo/ordenes/o/on.md) y [OFF](../../../../../../../referencia/digi3d.net/ventana-de-dibujo/ordenes/o/off.md) o equivalentes.

