# Variables booleanas
<!-- id: variables-booleanas -->

Son variables que pueden tener dos valores: verdadero/falso.

## Parámetros

Puedes ejecutar una orden de tipo variable booleana de dos maneras: sin parámetros y con parámetros.

### Sin parámetros

Si ejecutas una orden de tipo variable booleana sin parámetros, el programa invierte el valor de la variable.

### Con parámetros

Las órdenes de tipo variable booleana admiten los siguientes parámetros:


| Número de parámetro | Descripción | Valores admitidos | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo automático |**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.| Si |


## Ejemplos

La orden de tipo variable booleana [PITA](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/pita.md) controla si el programa emite un sonido al introducir un dato con el dispositivo de entrada o al localizar un error.

Si el valor de _PITA_ es _Verdadero_ y ejecutas la siguiente orden:

```text
PITA
```

El valor de _PITA_ pasará a _Falso_. Si vuelves a ejecutar la orden PITA sin parámetros:

```text
PITA
```

El valor de _PITA_ volverá a _Verdadero_.

Ejecuta la siguiente orden para asignar el valor _Verdadero_ a la variable booleana _PITA_:

```text
PITA=1
```

Ejecuta la siguiente orden para asignar el valor _Falso_ a la variable booleana _PITA_:

```text
PITA=0
```

Ejecuta la siguiente orden para consultar el valor de la variable booleana PITA en un globo:

```text
PITA=?
```

