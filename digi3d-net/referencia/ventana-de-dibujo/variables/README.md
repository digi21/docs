# Variables

Las variables son valores de configuración que utilizan las órdenes. Podemos distinguir 4 tipos:

* Booleanas
* Numéricas \(números enteros\)
* Numéricas \(números reales\)
* Texto

## Variables Booleanas

<table>
  <thead>
    <tr>
      <th style="text-align:left">N&#xFA;mero de par&#xE1;metro</th>
      <th style="text-align:left">Descripci&#xF3;n</th>
      <th style="text-align:left">Valores</th>
      <th style="text-align:left">Opcional</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="text-align:left">1</td>
      <td style="text-align:left">Modo autom&#xE1;tico</td>
      <td style="text-align:left">
        <p>Si no se especifica ning&#xFA;n par&#xE1;metro el valor de la variable
          booleana cambiar&#xE1; de modo Activado a Desactivado y de Desactivado
          a Activado.</p>
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

* Para forzar a que se activen la secuencia sería \[nombre de la variable\]=1

`PITA=1`

Se activa la variable booleana [PITA](8e570c8c-aabd-4fd3-8a76-0b93f6f230e9)

* Para forzar a que se desactiven la secuencia sería \[nombre de la variable\]=0

`PITA=0`

Se desactiva la variable booleana PITA

* Para conocer el estado en el que está la variable booleana la secuencia sería \[nombre de la variable\]=0

`PITA=?`

Me dice el estado en el que está esta variable, ya sea activado \(verdadero\) o desactivado \(falso\)

