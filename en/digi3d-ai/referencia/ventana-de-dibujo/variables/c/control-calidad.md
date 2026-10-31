# QUALITY\_CONTROL\_ON\_ENTITY\_END
<!-- id: control-calidad -->
<!-- origen: 7b25209005e9e1aa86b9bf02c7841fc256fc4dca -->

Enable or disable real-time quality control analysis when an entity is finished.

## Parameters

| Parameter number | Description                                                                                  | Values                                                                                                                                                                                                                                                                                                                                                                                                                                                             | Optional |
| ------------------- | -------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| 1                   | Value specifying whether to enable or disable real-time quality control analysis. |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |

## Notes

Analysis runs only on entities with a code that has assigned quality controls and **Analyze quality control when digitizing** enabled.

If a quality control detects an error, Digi3D.AI displays [Quality control error](../../../cuadros-de-dialogo/error-de-control-de-calidad.md), which asks whether to store the geometry.

Enabled by default.

## Command characteristics

| Variable type                                 | [Boolean](../../../ordenes/variables/variables-booleanas.md)     |
| ------------------------------------------------ | ----------------------------------------------------------------- |
| Repeats automatically                           | No                                                                |
| Menu option           | Quality control/Analyze quality control when an entity is finished |
| Toolbar | _This command has no associated toolbar button_ |
| Extension                                        | DigiNG.OrdenesStandard.dll                                        |
| Implementation | Native |
| Internal name | {09E80E6F-2ED2-4FDA-9DD1-2E3826A3F0C3} |
