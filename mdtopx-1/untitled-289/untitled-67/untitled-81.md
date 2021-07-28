---
description: Cuadro de diálogo Configurar carga de imagen
---

# Configurar carga de imagen

[Cuadro de diálogo Cargar texturas](./)

Este cuadro de diálogo se muestra cuando se va a cargar una imagen ráster sobre el modelo digital, para representar el modelo con un tapiz. La imagen puede corresponder a una ortofoto o cualquier otro tipo de imagen, pero referenciada y que está en las mismas coordenadas que el modelo digital. La georreferenciación del archivo debe ser mediante un archivo ASCII, con extensión ORT y el mismo nombre que la imagen. Los campos de este archivo son los siguientes:

* **Pixel**: Se indicará el tamaño del píxel en metros.
* **X**: Coordenada X en metros de la esquina superior izquierda.
* **Y**: Coordenada Y en metros de la esquina superior izquierda.

```text
[ort]
Pixel=0.50
X=563010.94
Y=4749825.67
```

Cuando se llama a la herramienta, el programa muestra el explorador de Windows, donde se deberá elegir la imagen que podrá ser de formato TIF, BMP o JPEG. Una vez leído el archivo de georreferenciación, se muestra un cuadro de diálogo con los siguientes campos:

* **Tamaño del píxel original**: Tamaño del píxel en metros leído del archivo de georreferenciación.
* **Tamaño del píxel destino**: Tamaño del píxel de la imagen que se proyectará sobre el modelo. Podrá ser mayor o menor que el original, reduciendo o ampliando respectivamente el tamaño de la imagen.
* **Utilizar imágenes piramidales**: Se deberá seleccionar esta opción si se desean generar imágenes intermedias con menor resolución. Estas imágenes serán utilizadas por el programa cuando la vista del modelo sea alejada y no sea necesaria tanta resolución de imagen, acelerando la visualización del modelo.
* **Interpolación**: Se podrá seleccionar el tipo de interpolación en caso de que se baja la resolución de la imagen original. Se podrá optar entre Vecino próximo, Bilineal o Bicúbica

Si ya se tenía previamente una imagen cargada, ésta se descargará automáticamente.

