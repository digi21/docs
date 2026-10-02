# EXT2X

Prolonga dos entidades hasta su intersección.

![Órdenes para extender líneas: EXT estira o recorta hasta un límite, EXT_P además parte el límite, EXT_XYZ toma la Z del límite, EXT2X prolonga dos líneas hasta cortarse, EXT_M estira las líneas que cruzan dos puntos, EXTIENDE_EXTREMO prolonga hasta el cursor, EXT_PLANO prolonga hasta un plano y ESTIRA_RECORTA_POR_TOLERANCIA ajusta los extremos cercanos](../../../../../images/extender.svg)

## Parámetros

No admite parámetros.

## Observaciones

La orden precisa que el usuario seleccione las dos entidades a prolongar. La intersección de los dos elementos se realiza a partir de los vértices extremos de cada uno, que se hallen más próximos a los puntos de selección. Digi3D.AI, genera dos segmentos de prolongación con origen en estos vértices y hasta el punto de intersección.

* Si el punto de intersección de las dos entidades está situado sobre una de ellas, esta será recortada hasta la intersección.
* Si las entidades tienen el mismo código generará una sola entidad unida.
* Si las entidades tuvieran atributos en una base de datos, estos, además, deberán ser iguales para unir las entidades.

## Características de la orden

| Tipo de orden | [Orden interactiva](ext2x.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Extender dos líneas existentes hasta su intersección |
| Barra de herramientas en la que aparece la orden | Extender/Recortar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {CA81C8F1-AAC5-49fb-9E9D-45F68C7CFC7A} |

