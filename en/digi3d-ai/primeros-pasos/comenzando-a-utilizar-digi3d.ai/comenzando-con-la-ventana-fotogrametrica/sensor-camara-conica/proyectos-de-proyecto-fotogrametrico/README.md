# Photogrammetric projects
<!-- id: proyectos-de-proyecto-fotogrametrico -->
<!-- origen: 4ed05b8d466f563cbc528baa4f07d96ee2f9aa07 -->

_Photogrammetric project_ files let you switch models with one click in the [Photogrammetric project pane](/digi3d-ai/referencia/paneles/proyecto-fotogrametrico.md).

_Photogrammetric project_ files specify only the number of _flight strips_, also called _strips_ or _bands_, in the project, and the stereo pairs \(the [.d3d](./) files\) in each strip.

Photogrammetric project files have the [.d3dprj](./) extension.

When Digi3D.AI loads a photogrammetric project file, it obtains information about every photo in the project and the photo pairs that form each model.

Using this photo and model pair information, Digi3D.AI can detect photos without associated internal orientation and measure their internal orientations automatically. It also detects pairs without relative orientation and measures their relative orientations automatically.
