# dgn
<!-- id: dgn-2 -->

La suborden dgn indica que el archivo de dibujo a abrir en la ventana de dibujo es un archivo DGNv8 de MicroStation (con extensión .dgn).

## Opciones posicionales obligatorias

Esta suborden no define ninguna opción posicional. En concreto, no define la opción posicional que recibe la ruta del archivo .dgn y que sí definen las subórdenes [bind](/digi3d-ai/referencia/linea-de-comandos/dibujo/bind.md), [bin](/digi3d-ai/referencia/linea-de-comandos/dibujo/bin.md) y [shp](/digi3d-ai/referencia/linea-de-comandos/dibujo/shp.md). Sin esa ruta, Digi3D.AI no puede determinar el formato del archivo de dibujo y no abre la ventana de dibujo.

## Opciones

Los nombres de las opciones y de sus valores son literales fijos en español: no cambian con el idioma de la interfaz. Los valores de las opciones que aceptan una lista de valores no distinguen mayúsculas de minúsculas.

Si especificas una de las opciones no obligatorias, el valor que indiques sustituye al valor por defecto de esa opción. Cada opción que no especificas toma el valor por defecto de esta tabla, no el valor guardado en la configuración del usuario.

| Opción | Obligatoria | Descripción | Valores aceptados |
| --- | --- | --- | --- |
| --criterio_nivel | No | Atributos del elemento DGN con los que Digi3D.AI busca su código en la tabla de códigos. | Valores: `nivel`, `nivel_celula`, `nivel_color_estilo_grosor`, `nivel_color_estilo_grosor_celula`, `nivel_color`, `nivel_estilo`, `nivel_grosor`, `grupo_grafico`, `geographics`, `ngix`, `numero_nivel`, `numero_nivel_celula`, `numero_nivel_color_estilo_grosor`, `numero_nivel_color_estilo_grosor_celula`, `numero_nivel_color`, `numero_nivel_estilo`, `numero_nivel_grosor`, `nivel_color_celula`, `nivel_color_y_celula`.<br>Los valores que empiezan por `numero_nivel` identifican el nivel por su número y no por su nombre.<br>El valor por defecto es `nivel`. |
| --plantilla | No | Ruta del archivo .dgn de plantilla. Si el archivo de dibujo no existe, Digi3D.AI lo crea como copia de la plantilla. | Ruta de un archivo.<br>Por defecto, no hay plantilla. |
| --extraer_celulas_de | No | Origen de la forma de las células. | `archivo_celulas_microstation` = archivo de células de MicroStation indicado en `--archivo_celulas`.<br>`carpeta_de_simbolos_digi` = carpeta de símbolos de Digi.<br>El valor por defecto es `carpeta_de_simbolos_digi`. |
| --archivo_celulas | No | Ruta del archivo de células (.cel) que Digi3D.AI carga cuando `--extraer_celulas_de` vale `archivo_celulas_microstation`. | Ruta de un archivo.<br>Por defecto, está vacía. |
| --transformar_el_nivel_de_las_entidades_de_las_celulas | No | Si especificas esta opción, al exportar, Digi3D.AI asigna a cada elemento de la célula el nivel, el color, el estilo y el grosor del código. | |
| --importar_paleta | No | Si especificas esta opción, al abrir un archivo existente, Digi3D.AI importa su paleta de colores, si el archivo la tiene. | |
| --extraer_colores_de | Sí | Origen del color y del grosor de las entidades al leer el archivo. | `archivo_dgn` = colores del archivo DGN.<br>`tabla_de_codigos` = colores de la tabla de códigos activa. |
| --importar_celulas_como | Sí | Tipo de entidad en que Digi3D.AI convierte cada célula al leer el archivo. | `punto` = punto.<br>`complejo_virtual` = elemento complejo puntual. |
| --incremento_registro_splines | No | Distancia entre vértices al convertir las splines en polilíneas al leer el archivo. | Número real.<br>Un valor menor que 1 se toma como 1.<br>El valor por defecto es 1. |
| --formato_desconocidos | No | Formato del nombre del código que Digi3D.AI crea para los elementos que no tienen traducción en la tabla de códigos. | Texto con los sustituidores `$(Nivel)`, `$(Color)`, `$(Estilo)`, `$(Grosor)` y `$(GrupoGrafico)`. Digi3D.AI acepta también `$(Level)`, `$(Style)`, `$(Thickness)` y `$(GraphicGroup)` con cualquier idioma de la interfaz.<br>Si está vacío, Digi3D.AI usa `$(Nivel)` con la interfaz en español y `$(Level)` con la interfaz en inglés.<br>Por defecto, está vacío. |
| --archivo_recursos_simbologia | No | Rutas de los archivos de recursos de MicroStation que Digi3D.AI carga al abrir el archivo. | Rutas separadas por punto y coma.<br>Por defecto, está vacía. |

Las opciones `--extraer_colores_de` e `--importar_celulas_como` son obligatorias: si no especificas una de ellas, la línea de comandos produce un error.

Las opciones `--transformar_el_nivel_de_las_entidades_de_las_celulas` e `--importar_paleta` no llevan valor. Si no las especificas, su valor es falso. Las opciones de la tabla corresponden a las propiedades de la categoría **Motor de importación/exportación** descritas en [Archivos DGNv8](../../ventana-de-dibujo/importadores-y-exportadores/dgn.md).

## Ejemplo

Orden con la tabla de códigos c:\trabajo\tabla.tab.xml, las dos opciones obligatorias (colores del archivo DGN y células como puntos) y sin la ruta del archivo, que esta suborden no define:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml dgn --extraer_colores_de archivo_dgn --importar_celulas_como punto
```

Orden que, además, asigna los códigos según el nivel y el color, y carga las células del archivo c:\trabajo\celulas.cel:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml dgn --criterio_nivel nivel_color --extraer_celulas_de archivo_celulas_microstation --archivo_celulas c:\trabajo\celulas.cel --extraer_colores_de archivo_dgn --importar_celulas_como punto
```
