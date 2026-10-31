# Specifying the orientation's coordinate reference system
<!-- id: especificacion-src-orientacion -->
<!-- origen: 99d6522432f4bb36e1ea2212e283d190a44488bc -->

The _ground coordinate reference system_ is defined in the photogrammetric model's orientation. If the photogrammetric model has no orientation, the ground coordinate reference system is the same as the [sensor's coordinate reference system](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-fotogrametrica/especificacion-src-sensor.md).

Some sensors support photogrammetric model orientation. Each supports a particular orientation type (some affine, others absolute, ...). If an associated orientation (affine, absolute, ...) is found when loading the photogrammetric model, the ground coordinate reference system is the orientation's coordinate reference system.

## Checking the current ground coordinate reference system

Select **Photogrammetric window/View model information** from the menu. The ground coordinate reference system appears in the results panel under **Orientation coordinate reference system**.
