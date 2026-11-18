# Inserción de nuevos perfiles desde archivo
<!-- id: insercion-de-nuevos-perfiles-desde-archivo -->

Es posible insertar nuevos perfiles para generar los archivos gráficos, utilizando un archivo ASCII, donde estén configurados los perfiles. Este archivo tiene la siguiente composición:

* Una línea con el nombre del perfil. Deberá encontrarse una cadena que contenga como primer carácter la letra “P” y a continuación el nombre. Por ejemplo, “PERFIL 10+200”
* Una línea por cada punto que compone el perfil, con una columna por cada uno de los siguientes datos:
  * **Número de punto**
  * **Distancia al eje**, considerándose las distancias negativas, como puntos a la izquierda del eje y las positivas a la derecha.
  * **Cota**

Estas líneas se deberán repetir por cada uno de los perfiles que se definan. Ejemplo:

Perfil 1

10001 -40.734 875.251

10002 -22.752 875.373

10003 0.000 875.255

10005 18.967 875.532

10006 45.570 879.069
