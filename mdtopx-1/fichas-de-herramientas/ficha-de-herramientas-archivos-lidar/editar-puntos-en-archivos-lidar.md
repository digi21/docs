# Editar puntos en archivos LIDAR

[Ficha de herramientas Láser](./)

Las diferentes herramientas disponibles para editar puntos LIDAR son las siguientes:

* \*\*\*\*[**Filtrar puntos**](../../modulo-laser/editar/filtrar-puntos.md): Herramienta destinada al filtrado de puntos láser, aligerando el fichero ya que se reducirá la densidad inicial
* \*\*\*\*[**Promediar pasadas**](../../modulo-laser/editar/promediar-pasadas.md): Herramienta destinada al promedio de puntos láser procedentes de diferentes puntos de toma y que coincidan espacialmente
* \*\*\*\*[**Asignar colores**](../../modulo-laser/editar/asignar-color-rgb-a-puntos.md): Herramienta para añadir color RGB a cada punto a partir de una imagen georreferenciada externa. Esta imagen podrá ser una ortofotografía o una imagen con proyección cónica con su respectivo archivo de orientación externa. La herramienta es útil cuando no se ha registrado color originalmente con el láser, ya que permitirá añadir más información a la nube para mejorar la edición.
* **Imagen de fondo**: Con esta herramienta se puede cargar una imagen georreferenciada sobre la vista actual que permita ver dónde se encuentra situado cada punto. De esta forma, se pueden tomar nuevas decisiones a la hora de editar los puntos láser. La imagen podrá ser una ortofotografía o una imagen con proyección cónica con su respectivo archivo de orientación externa. Cuando se tenga cargada una imagen de fondo, no se permitirá realizar giros sobre el archivo, mostrándose la información únicamente mediante una imagen cenital.
* **Descargar fondo**: Con esta herramienta se puede descargar una imagen de fondo previamente cargada con la herramienta anterior.
* **Suavizar nube**:
* \*\*\*\*[**Borrar picos**](../../modulo-laser/editar/borrar-picos.md): Herramienta destinada a buscar y clasificar puntos cuya cota es superior a la de su entorno. Si se realizara un MDT incluyendo a estos puntos se producirían picos debido a su diferencia de cota.
* \*\*\*\*[**Ordenar puntos**](../../modulo-laser/editar/ordenar-puntos-lidar.md): Herramienta útil para ordenar los puntos LiDAR según alguna de sus características, siendo la más normal, el tiempo GPS de registro. Si no tuvieran tiempo GPS, se podrían ordenar por su coordenada X o Y.

