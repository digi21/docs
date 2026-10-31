# INNER\_ORI\_R
<!-- id: ori-interna-d -->
<!-- origen: d30738622fbeeef85f0fe84e44ffed2d69cfa242 -->

Performs the **internal orientation** of the right image of the model loaded in the photogrammetric window.

## Parameters

None.

## Notes

Opens **Internal orientation**, the same pane as [INNER\_ORI\_L](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-interna-i.md#internal-orientation-pane), with the right image's fiducial marks. Requirements, controls and calculations are described on that page.

If the right image has no internal orientation and the left does, Digi3D.AI locates each right-image mark by correlation from the same mark measured in the left image. Measure any marks that correlation fails to locate manually.

## Command characteristics

| Command type | Interactive command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Photogrammetric window/Inner orientation (right) (option added by the conical camera sensor) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | Digi3D.ConicSensor.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [ABSOLUTE\_ORI](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-absoluta.md)<br>[INNER\_ORI\_L](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-interna-i.md)<br>[RELATIVE\_ORI](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori_relativa.md) |
| Internal name | {1A62F9F4-BE47-4279-8E7A-13C49514B9A3} |
