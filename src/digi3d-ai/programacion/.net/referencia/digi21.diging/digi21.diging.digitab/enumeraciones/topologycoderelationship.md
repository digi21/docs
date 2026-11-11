# TopologyCodeRelationship
<!-- id: digi21.diging.digitab.topologycoderelationship -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Efecto de la presencia de un código en un anillo sobre la decisión de que el anillo forme un polígono. Es el valor de [TopologyCode.Relationship](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologycode.md). Corresponde a la opción **Relación de estos códigos con la topología** del cuadro de diálogo [Seleccionar códigos para topología](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/seleccionar-codigos-para-topologia.md#relación-de-estos-códigos-con-la-topología) del editor de tablas de códigos.

Requiere Digi3D.AI 2027.0.0.428 o posterior y el paquete `Digi21.DigiNG` 26.2.0 o posterior.

```csharp
public enum TopologyCodeRelationship
```

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `Required` | 0 | El código tiene que estar presente en el anillo para que forme un polígono. |
| `GuaranteesPolygon` | 1 | Si el código está presente en el anillo, el anillo forma un polígono. |
| `DoesNotGuaranteePolygon` | 2 | La presencia del código no hace que el anillo forme un polígono. |
| `GuaranteesOnlyHoles` | 3 | Si el código está presente en el anillo, el anillo forma un hueco y no forma un polígono. |
