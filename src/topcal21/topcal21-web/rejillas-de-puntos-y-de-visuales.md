# Rejillas de puntos y de visuales
<!-- id: topcal21-web-rejillas -->

El espacio de trabajo muestra cada archivo de puntos (`.pts`) y cada archivo de visuales (`.obs`) en una rejilla editable, parecida a una hoja de cálculo. Las rejillas siguen las reglas de [Topcal21 para Windows](../introduccion/interfaz-de-usuario.md) para validar y guardar los valores escritos.

## Columnas y filas

Las columnas de la rejilla de puntos son **Número**, **X**, **Y**, **Z**, **Desorientación**, **Nombre** y **Código**. Las columnas de la rejilla de visuales son **Estación**, **Visado**, **Horizontal**, **Vertical**, **Distancia**, **Mira**, **Instrumento** y **Código**. Elige las columnas visibles en el cuadro [Preferencias](preferencias-instrumentos-y-sistemas-de-referencia.md). Los números se muestran con los decimales del proyecto, si el archivo pertenece a un proyecto, o con los decimales de las preferencias en los demás casos.

La rejilla muestra una fila por registro y, a continuación, filas vacías numeradas. El número de filas es 100 con entre 0 y 100 registros, el menor múltiplo de 100 que no es menor que el número de registros con entre 101 y 50.000 registros, y el número de registros con más de 50.000 registros. Los registros borrados se muestran en rojo; la web siempre muestra los registros borrados.

## Seleccionar

* Un clic en una celda la convierte en la celda activa y selecciona solo esa celda.
* **Mayús** + clic en una celda selecciona el rango de celdas entre la celda de inicio de la selección y la celda pulsada. **Mayús** + flecha amplía el rango con el teclado.
* **Ctrl** + clic en una celda añade o quita su fila de la selección y amplía el rango de columnas hasta incluir la columna de la celda.
* Un clic en el número de una fila selecciona la fila completa. **Ctrl** + clic en el número de una fila añade o quita esa fila, y **Mayús** + clic selecciona las filas entre la fila de inicio de la selección y la fila pulsada.
* **Ctrl** + **A** y **Ctrl** + **E** seleccionan todas las filas. **Seleccionar todo** e **Invierte selección** del menú Editar seleccionan todas las filas y las filas no seleccionadas, respectivamente.

Las flechas mueven la celda activa. **Ctrl** + flecha lleva la celda activa al extremo de la fila o de la columna. **Tab** y **Mayús** + **Tab** pasan a la celda siguiente y a la anterior; **Tab** en la última celda de la última fila pasa a una fila nueva. **Re Pág**, **Av Pág**, **Inicio** y **Fin** mueven la celda activa por páginas y al principio y al final de la rejilla.

## Editar celdas

Para editar la celda activa, escribe un carácter, pulsa **Enter**, **Retroceso** o la barra espaciadora, haz doble clic en la celda o haz clic en la celda que ya es la activa. La celda muestra un editor de texto:

* **Enter** acepta el valor.
* **Esc** cancela la edición.
* **Tab**, las flechas, **Re Pág** y **Av Pág** aceptan el valor y mueven la celda activa.

Cada edición se valida como en Topcal21 para Windows. La web rechaza una edición y muestra un mensaje en estos casos:

* «Imposible introducir punto: Existe otro punto con el mismo número»: otro punto no borrado tiene el mismo número, en el archivo de puntos.
* «Imposible introducir visual: Existe otra visual con la misma estación y el mismo visado»: otra visual no borrada tiene la misma estación y el mismo visado, en el archivo de visuales, salvo que la preferencia **Permitir visuales duplicadas** esté marcada.

La web convierte el texto de una celda numérica en número con la misma regla que Topcal21 para Windows: lee los caracteres iniciales que forman un número y descarta el resto. El separador decimal es el punto; el texto `1,5` se guarda como `1`.

Los textos de las columnas **Nombre** y **Código** se recortan al editar la celda a 29 bytes, que es el tamaño máximo que admite el archivo.

### Registros nuevos

Un valor escrito en una fila vacía añade un registro al final del archivo. Si un registro queda con todos los campos a cero o vacíos, la web lo quita del archivo.

### Borrar y recuperar registros

* **Borrar registro** (menú Editar) y el botón **Borra** marcan como borrados los registros de las filas seleccionadas. El registro sigue en el archivo y se muestra en rojo.
* **Recuperar registro** y el botón **Recupera** quitan la marca de borrado. La web no recupera un registro si otro registro no borrado tiene el mismo número de punto, o la misma estación y el mismo visado.
* **Supr** con filas completas seleccionadas ejecuta **Borrar registro**. **Supr** con un rango de celdas seleccionado vacía esas celdas. **Supr** sin selección vacía la celda activa.

### Deshacer y rehacer

**Deshacer** (**Ctrl** + **Z**) y **Rehacer** (**Ctrl** + **Y**) recorren el historial de ediciones del documento activo. Cada pegado, cada borrado o recuperación de registros y cada importación en un documento existente es un solo paso del historial.

## Copiar, cortar y pegar

**Copiar** (**Ctrl** + **C**) copia las celdas seleccionadas al portapapeles como texto separado por tabuladores, con una fila de texto por cada fila de la rejilla. **Cortar** (**Ctrl** + **X**) copia las celdas y las vacía.

**Pegar** (**Ctrl** + **V**) acepta el texto separado por tabuladores y saltos de línea que copia Microsoft Excel. El bloque se pega con su esquina superior izquierda en la primera celda de la selección o, sin selección, en la celda activa. Las celdas del bloque se validan como una edición normal y todo el pegado es un solo paso de **Deshacer**. El orden del texto copiado desde Excel debe ser el de las columnas visibles de la rejilla.

Con el menú Editar o con el botón del menú, el navegador puede pedir permiso para leer el portapapeles. Si el navegador lo deniega, la web muestra un aviso y se pega con **Ctrl** + **V** sobre la rejilla.

## Ordenar

Un clic en la cabecera de una columna ordena los registros por esa columna en sentido ascendente. Otro clic en la misma columna la ordena en sentido descendente. **Ordenar datos...** del menú Ver permite elegir la columna y el sentido. La ordenación es un paso del historial y, como cualquier edición, se guarda con el archivo.
