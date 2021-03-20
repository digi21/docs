# Variables booleanas

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

## 

