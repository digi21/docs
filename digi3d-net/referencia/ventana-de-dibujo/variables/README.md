# Variables

Las variables son un tipo especial de orden que no realizan ninguna acción, sino que sirven para que almacenemos valores que utilizarán otras órdenes con posterioridad.

Por ejemplo: la orden [TEXTO](../ordenes/t/texto.md) dibujará un texto con la rotación almacenada en la variable [AA](a/aa.md) \(ángulo activo\).

Como las variables son órdenes, se pueden ejecutar seleccionando opciones del menú, barras de herramientas o desde la línea de comando tal y como se explica en [Órdenes](../../ordenes.md). 

Podemos distinguir 4 tipos de variables en función de la información que pueden almacenar:

* Booleanas
* Numéricas
* Reales
* Texto

## Variables Booleanas

Son variables que pueden tener dos valores: verdadero/falso.

### Parámetros

#### Sin parámetros

Podemos ejecutar una orden de tipo variable booleana de dos maneras: sin parámetros y con parámetros.

Si ejecutamos una orden de tipo variable booleana sin parámetros, la variable cambiará su valor activo, por el contrario.

Por ejemplo: La orden de tipo variable booleana [PITA](p/pita.md) hace que el programa haga sonar un sonido cuando se introduce un dato con el dispositivo de entrada o cuando se localiza un error. 

Si el valor de _PITA_ es _Verdadero_ y ejecutamos el siguiente comando:

```text
PITA
```

Su valor pasará a _Falso_, y si ahora volvemos a ejecutar el comando:

```text
PITA
```

Su valor pasará otra vez a _Verdadero_.

#### Con parámetros

Las órdenes de tipo variable booleana admiten los siguientes parámetros:

<table>
  <thead>
    <tr>
      <th style="text-align:left">N&#xFA;mero de par&#xE1;metro</th>
      <th style="text-align:left">Descripci&#xF3;n</th>
      <th style="text-align:left">Valores admitidos</th>
      <th style="text-align:left">Opcional</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1</td>
      <td style="text-align:left">Modo autom&#xE1;tico</td>
      <td style="text-align:left">
        <p><b>0</b>: Para desactivar la variable booleana.</p>
        <p><b>1</b>: Para activar la variable booleana.</p>
        <p><b>?</b>: Para consultar el valor de la variable booleana. Aparecer&#xE1;
          un globo indicando si la orden est&#xE1; activada o desactivada.</p>
      </td>
      <td style="text-align:left">Si</td>
    </tr>
  </tbody>
</table>

### Ejemplos

Para forzar a que la variable booleana _PITA_ tenga el valor _Verdadero_, ejecutaremos el siguiente comando:

```text
PITA=1
```

Para forzar a que la variable booleana _PITA_ tenga el valor _Falso_, ejecutaremos el siguiente comando:

```text
PITA=0
```

Para hacer que la variable booleana PITA nos muestre su valor en un globo, ejecutaremos el siguiente comando:

```text
PITA=?
```

## Variables numéricas

Son variables que pueden almacenar un número entero \(sin decimales\).

### Parámetros

Estas órdenes requieren que les pasemos por parámetro el valor a asignar.

### Ejemplos

La orden de tipo variable numérica [NDEC ](n/ndec.md)configura el número de decimales que muestra el programa en la barra de herramientas de coordenadas entre otras cosas.

Si queremos mostrar dos decimales ejecutaremos el comando:

```text
NDEC=2
```

## Variables reales

Son variables que pueden almacenar un número real \(con decimales\).

### Parámetros

Estas órdenes requieren que les pasemos por parámetro el valor a asignar.

### Ejemplos

La orden de tipo variable real:[ AT](a/at.md) configura la altura de los textos que se van a dibujar con la orden [TEXTO](../ordenes/t/texto.md). 

Si queremos asignar una altura de 1.25 ejecutaremos la siguiente orden:

```text
AT=1.25
```

## Variables de tipo texto

Son variables que pueden almacenar textos.

### Parámetros

Estas órdenes requieren que les pasemos por parámetro el valor a asignar.

### Ejemplos

La variable de tipo texto [FORMATO\_AUTONUM](f/formato-autonum.md) permite especificar el texto que se va a almacenar de manera automática al ejecutar la orden TEXTO si se ejecuta sin ningún parámetro pero la variable de tipo numérico AUTONUM tiene asignado un valor.

Si queremos por ejemplo digitalizar automáticamente la secuencia de textos _Hoja 1,  Hoja 2, Hoja 3_, etc., ejecutaríamos la siguiente secuencia de comandos

```text
FORMATO_AUTONUM="Hoja %d"
AUTONUM=1
TEXTO
```



Si queremos asignar una altura de 1.25 ejecutaremos la siguiente orden:

