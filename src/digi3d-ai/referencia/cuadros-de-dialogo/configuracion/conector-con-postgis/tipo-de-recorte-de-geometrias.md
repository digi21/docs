# Tipo de recorte de geometrías

Indica si las geometrías que devuelve el servidor PostGIS se recortan a la ventana de la región de interés y dónde se hace el recorte.

## Valores posibles

* **No recortar** \(valor por defecto\). Las geometrías se cargan completas, sin recortar.
* **Recortar en el servidor**. El servidor PostGIS devuelve las geometrías recortadas a la región de interés.
* **Recortar en local**. Digi3D.AI recorta en el equipo las geometrías que devuelve el servidor.
