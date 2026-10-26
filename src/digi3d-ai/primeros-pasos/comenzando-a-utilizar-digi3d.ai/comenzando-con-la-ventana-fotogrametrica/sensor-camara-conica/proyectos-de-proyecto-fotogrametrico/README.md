# Proyectos de proyecto fotogramétrico
<!-- id: proyectos-de-proyecto-fotogrametrico -->

Los archivos de _proyecto fotogramétrico_ permiten cambiar de modelo con un clic en el [Panel Proyecto fotogramétrico](/digi3d-ai/referencia/paneles/proyecto-fotogrametrico.md).

Los archivos de _proyecto fotogramétrico_ informan únicamente del número de _pasadas_, o _tiras_, o _fajas_ que tiene el proyecto e indican los pares estereoscópicos \(es decir, los archivos [.d3d](./)\) que tiene cada pasada.

Los archivos de proyecto fotogramétrico tienen extensión [.d3dprj](./).

Cuando Digi3D.AI carga un archivo de proyecto fotogramétrico, obtiene información de todas las fotos del proyecto y de las parejas de fotos que forman cada modelo.

Con la información de las fotos y de los pares que forman cada modelo, Digi3D.AI puede detectar fotos sin orientación interna asociada y medir automáticamente las orientaciones internas de esas fotos. Digi3D.AI también detecta los pares sin orientación relativa y mide automáticamente las orientaciones relativas de esos pares.

