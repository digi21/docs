# Generate video
<!-- id: generar-video -->
<!-- origen: 139192fd4644d0ae313fcc208a8d554fcf79820a -->

[VirtuaLand Generate video](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-generar-video.md)

![Generate video dialog](../../images/image-117.png)

This tool generates an AVI video moving around a digital model or file. Its dialog contains the following fields:

* **Output file**: name of the file storing the video. The button to the right opens Windows Explorer to choose its location.
* **Video length**: defined by frames per second and total video duration:
  * _Fps_: usually between 5 and 10. More frames per second produce a larger file with smoother movement.
  * _Recording time_: maximum recording time in seconds, used to calculate camera movement speed.
  * _Movement speed_: camera speed, used to calculate the maximum video recording duration.
* **Video size**: video window width and height in pixels.
* **Settings**: selects the type of video to generate. Two options are offered:
  * _Varying angles of rotation_: rotates the model through the specified X and Y angle ranges.
  * _Loading from file road_: loads the camera path from a drawing file (BIN, DXF, DGN or ASCII). The path can use its own elevations to calculate camera height, or be projected onto the model with an added height above terrain. You can also add camera pitch to point downward. Finally, the view can remain directed at the same model point while moving along the path, keeping a particular location in view.
  * _Loading from point of view file_: generates a video from a file storing different viewpoints. Create this file with [Save points of view](salvar-puntos-de-vista.md). The path can also be cyclic, returning to the file's first point after reaching the end.
