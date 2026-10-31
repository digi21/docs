# Preparing .f files for an adjustment program
<!-- id: preparando-archivos-f-programa-calculo -->
<!-- origen: 99b0f7b5c0355b3e6f9af6ee4d95c816e798f92a -->

Aerotriangulation adjustment programs require **a single file** containing the photo coordinates of the points measured in every project photo.

Digi3D.AI has created one _.f_ file per project photo, rather than a single file containing every measured point's photo coordinates. You must therefore combine the information from these separate _.f_ files into one file.

Complete [Aerial triangulating the second model](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/aerotriangulacion-manual/aerotriangulando-segundo-modelo.md) before continuing with this tutorial.

1. Open a _DOS_ console in **Aerotriangulación** as follows:
   * Locate _Aerotriangulación_ in File Explorer.
   * **Hold Shift** on your keyboard.
   * While holding _Shift_, click the _Aerotriangulación_ folder name with the **secondary mouse button** \(right button\). A context menu appears.
   * Select **Open command window here**. A _DOS_ window opens in that directory.
2. Run «copy \*.f bronchales.f». This creates _Bronchales.f_ containing all the .f files that were in Aerotriangulación.
3. Close the _DOS_ console.

Use _Bronchales.f_ in your aerotriangulation adjustment program, together with the control point file Puntos de apoyo de _Bronchales para aerotriangular.xyz_.

Explaining how to use your aerotriangulation adjustment program is beyond the scope of this manual. Follow that program's help to learn how to calculate aerotriangulation.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Preparando%20los%20archivos%20.f%20para%20un%20programa%20de%20calculo.mp4" caption="" type="video/mp4"></video>
