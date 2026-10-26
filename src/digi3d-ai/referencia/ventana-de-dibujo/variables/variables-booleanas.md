# Variables booleanas

Son variables que pueden tener dos valores: verdadero/falso.

### Parámetros

#### Sin parámetros

Puedes ejecutar una orden de tipo variable booleana de dos maneras: sin parámetros y con parámetros.

Si ejecutas una orden de tipo variable booleana sin parámetros, la variable cambiará su valor actual por el contrario.

Por ejemplo, la orden de tipo variable booleana [PITA](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/pita.md) hace que el programa emita un sonido cuando se introduce un dato con el dispositivo de entrada o cuando se localiza un error. 

Ejecuta la siguiente orden si el valor de _PITA_ es _Verdadero_:

```text
PITA
```

El valor de _PITA_ pasará a _Falso_. Ejecuta otra vez la orden para cambiar el valor de _PITA_ a _Verdadero_:

```text
PITA
```

El valor de _PITA_ pasará otra vez a _Verdadero_.

#### Con parámetros

Las órdenes de tipo variable booleana admiten los siguientes parámetros:


| Número de parámetro | Descripción | Valores admitidos | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo que indica si la variable booleana está activada o desactivada.| Sí |


### Ejemplos

Ejecuta la siguiente orden para forzar a que la variable booleana _PITA_ tenga el valor _Verdadero_:

```text
PITA=1
```

Ejecuta la siguiente orden para forzar a que la variable booleana _PITA_ tenga el valor _Falso_:

```text
PITA=0
```

Ejecuta la siguiente orden para consultar el valor de la variable booleana PITA en un globo:

```text
PITA=?
```

## 

