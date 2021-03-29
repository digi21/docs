# Selecciones

Esta pestaña permite añadir selecciones con nombre cuya ejecución devuelven un conjunto de geometrías que cumplen con una determinada condición.

Las selecciones al igual que las [etiquetas ](codigos/propiedades-del-codigo.md#etiquetas)asociadas con los códigos, alteran el interfaz de usuario de Digi3D.NET, pues determinados menús mostrarán las selecciones proporcionadas por la tabla de códigos activa.

Las selecciones tienen un **nombre** y una **expresión** en el lenguaje de programación _Python_. Esta expresión devolverá verdadero para todas las geometrías del archivo de dibujo que cumplan la condición que define la selección.

### Ejemplos:

 La selección "Todas las geometrías" se definirá de la siguiente manera:

```python
True
```

Esta expresión se ejecutará por cada geometría del archivo de dibujo y como devuelve siempre verdadero \(True en Python\), seleccionará todas las geometrías del archivo de dibujo.

Las expresiones se ejecutan en un ámbito \(_scope_\) que tiene una variable local que representa a la geometría a la que se le está realizando el test. Esta variable se denomina **digi3DGeometry**. Podemos utilizar las propiedades de este objeto como criterio en la selección, como por ejemplo seleccionar las geometrías que tengan como primer código el código "020400"

```python
digi3DGeometry.Codes[0].Name == '020400'
```

...o seleccionar las geometrías que tengan 3 vértices:

```python
digi3DGeometry.Points.Count == 3
```

El ámbito \(_scope_\) en el que se ejecuta la expresión también proporciona tantas variables como atributos de base de datos tenga el primer código de la geometría, de manera que si la geometría tiene un enlace a base de datos con tres campos: _ID_, _Propietario_, _Plantas_, en el entorno existirán esas tres variables que se podrán utilizar en el cuerpo de la expresión como, por ejemplo:

```python
Plantas == 3
```

Y combinaciones con varios objetos:

```python
Propietario == 'Dylan' and Plantas > 3 and digi3DGeometry.Codes[0].Name == '010101' and digi3DGeometry.Points.Count == 7
```



