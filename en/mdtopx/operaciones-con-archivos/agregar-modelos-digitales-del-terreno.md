# Add digital terrain models
<!-- id: agregar-modelos-digitales-del-terreno -->
<!-- origen: 930fcd0e4bfe0c290ab0f23ba071cf464fe59d30 -->

[Edit File](abrir-archivo.md)

Add combines information from different digital terrain model files. It reads points and breaklines from one or more files and adds them to the current DTM document. Retriangulation prevents overlapping triangles and preserves the digital terrain model's consistency.

If the files cover overlapping areas, a dialog asks how to proceed:

* No insert the new points: does not insert new points within the current DTM's area.
* Erase the original points: deletes current DTM points within the added DTM's area.
* Join every points: adds points without modifying them.
* Insert new points with projected height: adds new points after calculating their elevations projected onto the current DTM in the overlap.
* Compute mean height in new points: adds new points after averaging their original elevations with their elevations projected onto the current DTM in the overlap.
* Compute mean height in every points: adds new points and modifies existing points in the overlap, averaging each original elevation with the elevation projected onto the other DTM.
* Compute height depending distance to DTM in new points: adds new points after calculating a weighted average of their elevations and elevations projected onto the current DTM in the overlap. Weights are inversely proportional to the distance from each DTM's center.
* Compute height depending distance to DTM in every points: adds new points and modifies existing points in the overlap, calculating a weighted average of each elevation and its projection onto the other DTM. Weights are inversely proportional to the distance from each DTM's center.

Click **Cancel** to cancel without modifying the document.

This tool also runs from the [command line](../desde-linea-de-comando/linea-de-comando-agregar-modelos-digitales-del-terreno.md).
