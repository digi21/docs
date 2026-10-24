# Archivos Ascii de Digi
<!-- id: ascii-de-digi -->

Importador y exportador de **Archivos Ascii de Digi**.

## Parámetros

Parámetros del importador/exportador para pasar mediante línea de comandos mediante la orden [PARAMETROS_IMPORTACION](../ordenes/p/parametros-importacion.md).

Por ejemplo:

```
PARAMETROS_IMPORTACION=.asc <numeroDecimales>
```

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Número de decimales con que se escribe el archivo | No |


## Parámetros del motor de importación/exportación

Estas propiedades aparecen en la categoría **Motor de importación/exportación** de los cuadros de diálogo que importan o exportan archivos de este formato. Este formato no se puede abrir directamente en una ventana de dibujo, así que no aparecen en el cuadro de diálogo Nuevo proyecto. Su valor inicial es el de la última vez que se usó el formato.

| Propiedad | Valores | Qué hace |
| :--- | :--- | :--- |
| Sistema de referencia de coordenadas | Sistema de referencia. El botón **...** abre el cuadro de diálogo de selección. Por defecto, **Desconocido**. | Sistema que se asigna al importar un archivo que no tiene archivo `.prj`. |
| Decimales | Número entero. Por defecto, 3. | Número de decimales de las coordenadas al exportar. |

### Sistema de referencia de coordenadas

El sistema de referencia se guarda en un archivo `.prj` con el mismo nombre que el archivo de dibujo. Si ese archivo existe, Digi3D.AI lo utiliza. Si no existe:

* Al importar, se usa la propiedad **Sistema de referencia de coordenadas**. Si vale **Desconocido** o es un sistema local, Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo**. El sistema no se escribe en ningún `.prj`.
* Al exportar, Digi3D.AI muestra el cuadro de diálogo **Selecciona el sistema de referencia de coordenadas a asignar al archivo** y crea el `.prj` con el sistema elegido.

## Formato del archivo

Cada entidad empieza por una línea de cabecera: una letra con el tipo, `=` si la entidad está viva o un espacio si está borrada, el código, el número de vértices o de entidades y el número de atributos. Detrás van las líneas propias del tipo y, al final, una línea por atributo.

| Tipo | Entidad | Cabecera | Líneas detrás de la cabecera |
| :--- | :--- | :--- | :--- |
| `C` | Línea o punto | `C=<código> <vértices> <atributos>` | Una línea `x y z` por vértice. Con un solo vértice, la entidad es un punto. |
| `T` | Texto | `T=<código> 1 <atributos>` | `altura justificación giro` (un texto orientado añade `w x y z`), `x y z` del punto de inserción y el texto. |
| `B` | Imagen | `B=<código> 2 <atributos>` | Centro, giros y escala (`x y z` cada uno) y la ruta de la imagen. |
| `E` | Polígono | `E=<código> <vértices> <atributos> <contornos interiores>` | Una línea `x y z` por vértice del contorno exterior y cada contorno interior como una entidad `C`. |
| `X` | Elemento complejo | `X=<código> <entidades> <atributos>` | Cada entidad del complejo como una entidad `C`. |
| `Y` | Elemento complejo puntual | `Y=<código> <entidades> <atributos>` | `x y z giro` del punto de inserción (giro en grados sexagesimales) y cada entidad como una entidad `C`. |

Cada atributo es una línea `A <tabla> <registro> <código>`. Un código que contiene un espacio, `=`, `,` o un tabulador se escribe entre comillas dobles.

El exportador no escribe puntos orientados, mallas, objetos OLE, entidades de MDT ni elementos complejos con entidades que no sean puntos o líneas. Al importar, las entidades de un tipo desconocido se omiten con un aviso; es el caso de las cabeceras `h`, `A`, `D`, `P`, `M`, `O` y `m` que escribían versiones anteriores sin vértices.

### Textos orientados

Un texto orientado es un texto que no está en el plano XY. La variable [TEXTO\_ORIENTADO\_CON\_CAMARA](../variables/t/texto-orientado-con-camara.md) describe las órdenes que crean textos orientados.

En un texto orientado, la línea `altura justificación giro` lleva detrás los cuatro números `w x y z` de la orientación del texto: un cuaternión unitario que gira el texto en su sistema local (eje X en la línea base, eje Y hacia la parte superior de los caracteres y eje Z hacia el lector) antes de aplicar el giro. El giro y los cuatro números se escriben con hasta 17 cifras significativas, de modo que al leer el archivo se obtienen los mismos valores. En un texto del plano XY, la línea no lleva los cuatro números y el giro se escribe con dos decimales.

El importador lee la orientación si la línea tiene siete palabras o más. Una versión de Digi3D que no lee la orientación usa solo las tres primeras palabras de la línea, y lee el texto orientado como un texto del plano XY con su giro.

## Características del importador/exportador

| | |
| :--- | :--- |
| Extensiones | `.asc` |
| Importación (orden [IMPORTAR](../ordenes/i/importar.md)) | Sí |
| Exportación (orden [EXPORTAR](../ordenes/e/exportar.md)) | Sí |
| Se puede abrir una ventana de dibujo con este formato | No |
