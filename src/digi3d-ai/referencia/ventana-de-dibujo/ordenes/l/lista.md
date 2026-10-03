# LISTA

Nos da información de la entidad que se ha seleccionado.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Ruta del archivo de texto en el que se guarda el listado, además de mostrarlo en el panel de resultados. Si el archivo existe, el listado se añade al final | Sí |

## Observaciones

La orden abre el panel de resultados y escribe en él el archivo, los códigos, la ventana envolvente, la fecha de creación, las coordenadas de los vértices, los atributos y los datos propios del tipo de entidad \(perímetros 2D y 3D de las líneas, altura, rotación y justificación de los textos, huecos y superficie de los polígonos\).

Si el conmutador [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) está activado, esta orden se autorrepite hasta que el usuario pulse la tecla Esc.

Tenemos la opción de almacenar en un archivo el listado de coordenadas, indicando el nombre y directorio del archivo que queremos generar, a continuación, seleccionaríamos la entidad correspondiente.

### Ejemplo

LISTA=C:\BROCHALES\listado1

## Características de la orden

| Tipo de orden | [De información](lista.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {781C84EE-98C0-439c-B843-C20BF50C82CC} |

