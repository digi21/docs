# Edit image orientations from a file
<!-- id: editar-orientacion-de-imagenes-desde-archivo -->
<!-- origen: dd9228d02f970d2ba3fa6ce9584e8fa7bc72635a -->

[Orientation](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-imagen/orientacion.md)

![Edit image orientations from a file dialog](../../images/image-13.png)

This tool edits the orientations of images in a [project](/digi3d-ai/referencia/linea-de-comandos/proyecto.md). The following parameters are required:

* **Interior orientation**: three options:
  * _Parameters entered manually_: requires:
    * Focal length in mm.
    * Pixel size in microns.
    * Principal point X photo coordinate in mm.
    * Principal point Y photo coordinate in mm.
  * _From Leica Pegasus File_: interior orientation of images recorded with this sensor.
  * _Panoramic (optional file)_: the interior orientation file is optional.
* **Exterior orientation file**:
  * Orientation file name: file containing image exterior orientations.
  * File Format: orientation file format. Options:
    * Name XYZ Omega Phi Kappa.
    * From a Leica Pegasus file.
    * From a FLIR Ladybug file.
  * Ground height: for aerial image projects. Ignore for terrestrial or MMS images.
  * Angle units: degrees or grads.

See also:

* [Orientation by measuring points](orientacion-midiendo-puntos.md)
* [Edit image orientation](editar-orientacion-de-imagen.md)
