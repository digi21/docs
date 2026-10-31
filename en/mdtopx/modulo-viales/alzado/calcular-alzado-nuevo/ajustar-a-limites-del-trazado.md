# Fit to horizontal alignment limits
<!-- id: ajustar-a-limites-del-trazado -->
<!-- origen: abb991d064ea5fc081999c180da75860e1054756 -->

[Compute new vertical alignment](/mdtopx/modulo-viales/alzado/calcular-alzado-nuevo/)

This tool fits the current vertical alignment geometry to its horizontal alignment's limits.

![Set to the road boundary dialog](../../../../images/image-109.png)

Graphically entering a vertical alignment makes exact boundary matching difficult. This tool offers three operations at each endpoint to fit it precisely:

* **Insert new vertex**: inserts a vertical alignment point at the horizontal alignment's starting chainage.
* **Move first/last vertex**: moves the point to match the horizontal alignment endpoint.
* **Erase first/last vertex**: deletes the point. Available only if:
* The vertical alignment starts before the horizontal alignment.
* The vertical alignment ends after the horizontal alignment.

These options are enabled only when the limits differ.
