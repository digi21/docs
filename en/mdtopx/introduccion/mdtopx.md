# What is MDTopX?
<!-- id: mdtopx-2 -->
<!-- origen: 4645ca07e1284a1d9970c0e03a06d9fc88cb3f6e -->

MDTopX is designed to generate digital terrain models and use them in mapping, engineering and architecture.

Its powerful OpenGL graphics display system lets you view and navigate large datasets smoothly, including digital models with millions of points or models textured with orthophotos.

MDTopX's [interface](interfaz-de-usuario.md) is designed to make your work easier. All tools are visible rather than hidden in menus or separate panes. Every available command appears at the top of the program, grouped by shared characteristics in the ribbon. The ribbon is divided into tabs. Additional tabs contain commands or tools specific to the active document. They appear only when those documents are open, keeping the view clear.

The program calculates a digital model from points in mapping or survey files and stores it in a special format preserving neighboring point relationships. This format can also store and retain terrain breaklines.

It calculates neighboring point relationships using Delaunay triangulation, generating TIN \(_Triangulated Irregular Network_) digital models. It can also generate and process regular-grid digital models, or DEMs \(_Digital Elevation Models_).

The program supports many input/output files: DIGI, AutoCad DXF, MicroStation DGN, ASCII, TopCal, ArcInfo Shape, LAS, LAZ or E57 from airborne or terrestrial LiDAR sensors, GeoTIFF, ECW, JPEG, TIFF, BMP, etc.

It also generates georeferenced raster files, such as hypsometric tint maps or shaded relief maps, which can be saved as JPEG, BMP or TIFF. It can generate regular-grid digital models and export to various digital model formats, such as the Instituto Geográfico Nacional's MTN 25 or USGS30.

For projects containing many files, you can create [projects](../operaciones-con-archivos/proyectos-de-mdtopx.md) referencing every file \(DTM, drawing or image) in the same area, simplifying editing and calculations.

In addition to calculating and using digital models, the program provides optional modules for specific functions:

* [**Roads module**](/mdtopx/modulo-viales/): designs linear infrastructure, produces output plans such as longitudinal or cross profiles, and projects the design onto a digital model to obtain terrain modified by the proposed roads. It provides dedicated drawing tools and a wide range of tools for designing all the required road elements.
* [**VirtuaLand module**](/mdtopx/modulo-virtualand/): smooths digital grid models and extracts their breaklines. It also improves digital model presentation with textures and objects such as buildings and trees, and can generate an AVI video moving over the digital model.
* [**Laser module**](/mdtopx/modulo-laser/): processes and edits files captured with laser devices. Its tools process, edit and classify millions of points and extract information from them. It includes a fast Delaunay algorithm and a tool for generating three-dimensional digital models through Delaunay tetrahedralization.
* [**Orthophoto module**](/mdtopx/modulo-ortofoto/): calculates rectified orthophotos from a digital terrain model and georeferenced perspective images. Tools calculate automatic seamlines between neighboring orthophotos and generate map sheet mosaics.
* [**MMS module**](/mdtopx/modulo-mms/): manages and processes laser files recorded with Mobile Mapping systems. These systems have sensors that capture dense point clouds for mapping roads or railways. Tools use different algorithms to classify points and extract particular features from each route.
* [**MMI module**](/mdtopx/modulo-mmi/): manages and processes 360-degree panoramic images captured with Mobile Mapping systems, enabling automatic identification of road asphalt or traffic signs.
* [**Buildings module**](../modulo-edificios/): processes indoor or outdoor building point clouds and identifies their structure: floors, ceilings, walls, columns, etc.
* [**ScanStation module**](/mdtopx/modulo-scanstation/): directly manages data captured with Leica ScanStation scanners, allowing direct measurement or download.

This help includes a list of [examples](../ejemplos/) of what you can do with MDTopX.
