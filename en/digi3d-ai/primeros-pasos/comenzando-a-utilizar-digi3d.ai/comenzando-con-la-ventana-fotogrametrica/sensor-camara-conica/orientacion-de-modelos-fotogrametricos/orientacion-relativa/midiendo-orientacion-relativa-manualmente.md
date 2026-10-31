# Measuring relative orientation manually
<!-- id: midiendo-orientacion-relativa-manualmente -->
<!-- origen: badd993cc5e78c26795c2901bdc1be6d6d9de84b -->

Measure corresponding points in both images: first in the left, then the right. Repeat to perform relative orientation.

Points follow the _Von Gruber_ pattern, calculated automatically by Digi3D.AI, which indicates where to measure.

If correlation locates corresponding points correctly, accept its automatic measurements.

Complete [Internal orientation](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-interna/) first, then:

1. Click photogrammetric toolbar **R**.
2. Check the message bar progress indicator for image overlap calculation.
3. If successful, both images show the same position.
4. Check that **Relative orientation** opens.
5. Digitize point 1 in the left image as requested below the pane. Digi3D.AI has moved to its approximate position; select a point within that area and press any input device button.
6. Digitize its right-image counterpart. Digi3D.AI has already searched for it: accept with any button if correct. Otherwise move the right image until both cursors coincide. To release the left image and change its point, press **Esc** to return to step 5. Press any button to accept the right point.
7. Repeat for the six requested points.
8. Review residuals. Select a point and click **Re-measure point** to measure it again.
9. There is no **Worse?** button like the internal orientation pane's. Residuals alone cannot identify the worst point automatically: in absolute orientation, one point's measurement error can inflate another point's residuals. Review points individually and check their stereoscopic placement.
10. After all six points, move around the model and check for parallax. **Add** a point in any area showing parallax, though a correctly calibrated camera should make this unnecessary.
11. Click **OK** once satisfied. **Relative orientation** closes.
12. Check that **R** stays pressed, indicating completed relative orientation.
13. Change **Z** with the input device and check that images move after relative orientation.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Midiendo%20la%20orientacion%20relativa%20manualmente.mp4" caption="" type="video/mp4"></video>
