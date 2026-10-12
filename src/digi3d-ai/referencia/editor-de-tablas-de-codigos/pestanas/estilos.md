# Estilos
<!-- id: estilos -->

![Editor de tablas de códigos mostrando la pestaña Estilos](../../../../images/pestanaestilos.png)

Esta pestaña configura los estilos con los que se dibujan las geometrías. Cada representación de un código hace referencia a un estilo; el color y el grosor los fija la representación, no el estilo.

## Estilos

Lista de los estilos de la tabla de códigos. Al seleccionar uno, sus propiedades aparecen en la parte inferior y su dibujo en **Previsualización**.

* **Nuevo**: crea un estilo llamado **Estilo*N***, con el primer número libre, de línea continua y sin símbolo. El estilo queda sin aplicar.
* **Duplicar**: crea una copia del estilo seleccionado llamada **Copia de: *nombre***, sin aplicar. Se deshabilita mientras el estilo tiene cambios sin aplicar.
* **Eliminar**: elimina el estilo seleccionado. No se puede eliminar el último estilo. Si algún código usa el estilo, un cuadro de tareas lista esos códigos y ofrece sustituirlo por el primer estilo de la lista (por el segundo, si se elimina el primero) o elegir el sustituto en el cuadro [Selecciona el estilo](selecciona-el-estilo.md).

## Previsualización y Zoom

**Previsualización** dibuja el estilo seleccionado. La barra **Zoom** cambia la escala del dibujo; el factor aparece a su derecha.

## Nombre y Descripción

* **Nombre**: nombre del estilo. Dos estilos no pueden tener el mismo nombre, sin distinguir mayúsculas de minúsculas: al aplicar, el editor lo avisa y no aplica los cambios. Al cambiar el nombre, las representaciones de los códigos que usaban el estilo pasan a usar el nombre nuevo.
* **Descripción**: descripción opcional.

## Tipo de línea

Indica cómo se dibuja una línea con este estilo. No se aplica a las geometrías puntuales.

* **Invisible**: no se dibuja la línea base.
* **Continua**: se dibuja una línea continua.
* **Con patrón**: se dibuja la línea según el campo **Definición de patrón**, que solo se habilita con esta opción.

### Definición de patrón

Lista de valores que alternan un tramo dibujado (pluma abajo) y un hueco (pluma arriba), en milímetros a la escala de dibujo: a escala 1:1000, 1 equivale a 1 metro. Los valores se separan con espacios o comas. Por ejemplo, para dibujar `---- - ---- - ----`:

```
4 1 1 1
```

* Dibuja una línea de 4 mm.
* Deja un espacio de 1 mm.
* Dibuja una línea de 1 mm.
* Deja un espacio de 1 mm.

## Incluir un símbolo equidistante

Si se activa, el estilo dibuja un símbolo a lo largo de la línea, o en la posición del punto si la geometría es puntual. Los siguientes campos se habilitan con esta casilla:

* **Símbolo**: nombre del símbolo. Los símbolos son archivos de dibujo `.bin` de la carpeta configurada en **Herramientas/Configuración...**, habitualmente `C:\ProgramData\Digi3D.NET\Símbolos`. El botón **...** abre el cuadro [Selecciona el símbolo](selecciona-el-simbolo.md), que muestra los símbolos y las texturas de esa carpeta.
* **Distancia**: separación entre símbolos a lo largo de la línea, en milímetros a la escala de dibujo, como **Distancia inicial**. Con 0 no se dibuja el símbolo en la línea.
* **Distancia inicial**: distancia desde el primer vértice de la línea hasta el primer símbolo.
* **Factor de escala en X** y **Factor de escala en Y**: escala horizontal y vertical del símbolo. Con 0 no se dibuja el símbolo.
* **Rotación del símbolo**: rotación en grados sexagesimales, en sentido horario y relativa a la dirección de cada tramo de la línea. En las geometrías puntuales se usa la rotación del punto.

> Si no aparece el símbolo que buscas, comprueba la carpeta de símbolos en **Herramientas/Configuración...**

## Sustituir geometría por el texto de un campo de la base de datos

Si se activa, en lugar de la geometría se dibuja como texto el valor de un campo de su registro en la base de datos. Los siguientes campos se habilitan con esta casilla:

* **Campo**: nombre del campo cuyo valor se dibuja.
* **Altura del texto**: altura del texto.
* **Justificación**: punto del texto que se sitúa en la geometría: **SO**, **O**, **NO**, **N**, **NE**, **E**, **SE**, **S** o **C** (centro).

## Aplicar los cambios

Los cambios del estilo seleccionado se aplican al pulsar **Aplicar** o **Aceptar**. Si seleccionas otro estilo o pulsas **Nuevo** con cambios sin aplicar, el editor pregunta «¿Quieres guardar los cambios?»: **Sí** los aplica y **No** los descarta. Al cambiar de pestaña aparece el cuadro de la sección siguiente.

### Al cambiar de página

![Cuadro No se han aplicado cambios al cambiar de página desde Estilos](../../../../images/digitab-cambios-estilo-al-cambiar-de-pagina.png)

Aparece cuando el estilo seleccionado tiene cambios sin aplicar y cambias de pestaña, pulsas **Aceptar** o eliges **Nuevo**, **Abrir...**, **Guardar**, **Guardar como...** o una de las opciones de crear paquete del menú [Archivo](../menus/archivo/README.md).

* **Aplicar los cambios**: aplica los cambios al estilo. Si cambiaste el nombre, los códigos que usan el estilo pasan a usar el nombre nuevo. Si ya existe otro estilo con ese nombre, el editor lo avisa y no aplica los cambios. Es el botón predeterminado.
* **Descartar los cambios**: descarta los cambios y deja la lista sin estilo seleccionado. Si el estilo era nuevo, lo borra. Esc equivale a este botón.

**Más información** explica que los cambios de un estilo afectan a otras páginas; por ejemplo, el nombre de un estilo aparece en los códigos de la pestaña Códigos. Con los dos botones, el cambio de pestaña o la operación continúa.
