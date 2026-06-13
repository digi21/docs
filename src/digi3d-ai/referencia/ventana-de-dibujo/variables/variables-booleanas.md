# Variables booleanas

Son variables que pueden tener dos valores: verdadero/falso.

### Parámetros

#### Sin parámetros

Podemos ejecutar una orden de tipo variable booleana de dos maneras: sin parámetros y con parámetros.

Si ejecutamos una orden de tipo variable booleana sin parámetros, la variable cambiará su valor activo, por el contrario.

Por ejemplo: La orden de tipo variable booleana [PITA](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/pita.md) hace que el programa haga sonar un sonido cuando se introduce un dato con el dispositivo de entrada o cuando se localiza un error. 

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


| Número de parámetro | Descripción | Valores admitidos | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |


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

## 

