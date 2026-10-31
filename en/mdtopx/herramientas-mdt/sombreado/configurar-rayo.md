# Ray configuration
<!-- id: configurar-rayo -->
<!-- origen: a1972d1254bf2b82fecf4ba35b2c27a94fd30530 -->

[Shading dialog](./)

![Ray configuration dialog](../../../images/image-65.png)

This dialog configures the ray used to generate shading, either as a map's sole relief representation or combined with hypsometric tints, aspects or slopes. Complete these fields:

* **Angle of slope**: ray inclination in grads. A typical inclination is 50g.
* **Azimuth**: ray direction azimuth in grads. To convey relief, use light from the northwest, 350g.
* **Intensity**: intensity proportionality factor. Use 1 for normal rays.
* **Vertical exaggeration**: relief proportionality factor, allowing low-height elements to be displayed and shaded.
* **Colouring type**: how shading is applied, with two options:
* **Type 1: White-Colour**: areas facing the light are white; those facing away receive their elevation color. Produces a pale image suitable for overlaying vector mapping.
* **Type 2: White-Colour-Black**: areas facing the light are white and those facing away are black, passing through their elevation color at intermediate orientations. Produces a dark image suitable for printing without additional mapping.
