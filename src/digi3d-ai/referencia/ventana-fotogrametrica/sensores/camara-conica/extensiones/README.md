# Extensiones de Cónico
<!-- id: extensiones -->

El sensor Cónico puede obtener las calibraciones de cámara y las orientaciones de los modelos a partir de archivos generados por los siguientes programas y formatos:

* [Access](access.md)
* [AeroOffice](aerooffice.md)
* [ContextCapture](contextcapture.md)
* [Digi3D](digi3d.md)
* [DVP](dvp.md)
* [EspaKernel](espakernel.md)
* [IMU](imu.md)
* [Inpho](inpho.md)
* [Intergraph](intergraph.md)
* [LPS](lps.md)
* [OpenCV](opencv.md)
* [PatB](patb.md)
* [PhotoScan](photoscan.md)
* [Pix4D](pix4d.md)
* [RapidCal](rapidcal.md)
* [Summit](summit.md)
* [Vexcel](vexcel.md)

## Resumen de formatos

La tabla indica, para cada extensión que lee orientaciones, el archivo que se selecciona como **Archivo de aerotriangulación** del modelo, si ese archivo contiene la calibración de la cámara y de dónde se obtiene el sistema de referencia de coordenadas. «Cuadro» es el cuadro [¿Quieres asignar uno?](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-horizontal), que aparece si ninguna de las fuentes indicadas en la tabla proporciona el sistema de referencia de coordenadas. Si el archivo no contiene la cámara, indica un archivo de cámara en el modelo (consulta [Cámara](../README.md#cámara)).

| Formato | Archivo de aerotriangulación | Cámara en el archivo | Sistema de referencia |
|---|---|---|---|
| [Access](access.md) | `.mdb`, `.accdb` | No | `.prj` asociado → cuadro |
| [AeroOffice](aerooffice.md) | `.exp` | No | `.prj` asociado → cuadro |
| [ContextCapture](contextcapture.md) | `.xml` (*BlocksExchange*) | Sí | `SpatialReferenceSystems/SRS/Definition` del archivo |
| [Digi3D](digi3d.md) | Ninguno: lee `.rel.xml`, `.rel` u `.orientation.xml` del directorio de trabajo | No: `.cam` u `.orientation.xml` | Sistema local |
| [DVP](dvp.md) | Ninguno: lee el `.par` de cada imagen | Sí, en el `.par` | `.prj` de la imagen izquierda → cuadro |
| [EspaKernel](espakernel.md) | `.els` | Sí | `.prj` asociado → cuadro |
| [IMU](imu.md) | `.eo`, `.imu` | No | `.prj` asociado → `EPSG_CODE` del archivo → cuadro |
| [Inpho](inpho.md) | `.prj` de proyecto de Inpho | Sí | `$COORDINATE_SYSTEM` o `$DELIVERABLES_COORD_SYSTEM` del archivo; si no se puede leer, sistema local |
| [Intergraph](intergraph.md) | `project` | Sí | `project.prj` → cuadro |
| [LPS](lps.md) | `.blk` | Sí | `.prj` asociado → cuadro |
| [PatB](patb.md) | `.ori` | No | `.prj` asociado → cuadro |
| [PhotoScan](photoscan.md) | `.xml` | Sí | Nodo `<reference>` → `.prj` asociado → cuadro |
| [Pix4D](pix4d.md) | `*_calibrated_external_camera_parameters.txt` | No: `*_pix4d_calibrated_internal_camera_parameters.cam` | `.prj` asociado → cuadro |
| [Summit](summit.md) | `.smtxml` | Sí | `.prj` asociado → cuadro |

El `.prj` asociado es el archivo `.prj` con el mismo nombre que el archivo de aerotriangulación y en su misma carpeta.

Solo IMU, Inpho y PhotoScan muestran el cuadro [Sistema de referencia de coordenadas vertical desconocido](../sistema-de-referencia-del-modelo.md#sistema-de-referencia-de-coordenadas-vertical) cuando el sistema no tiene componente vertical. Solo PhotoScan proporciona orientación absoluta.

Estas extensiones solo proporcionan la cámara:

| Formato | Archivo |
|---|---|
| [OpenCV](opencv.md) | `.cocv` |
| [RapidCal](rapidcal.md) | `.cal` |
| [Vexcel](vexcel.md) | La propia imagen TIFF de UltraCam |

Las extensiones EspaKernel (`.esp`), Inpho (`.prj`), Intergraph (`project`), PhotoScan (`.xml`) y Summit (`.smtxml`) también abren proyectos en el panel [Proyecto fotogramétrico](../../../../paneles/proyecto-fotogrametrico.md).
