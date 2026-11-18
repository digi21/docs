# Borrar triángulos por longitud de lado
<!-- id: linea-de-comando-borrar-triangulos-por-longitud-de-lado -->

[Borrar triángulos por longitud de lado](/mdtopx/herramientas-de-edicion-de-la-triangulacion/tamano-de-los-lados.md)

Para ejecutar esta herramienta desde la línea de comando se deberá escribir la siguiente secuencia:

```bash
MDTopX [archivo de entrada] /LADO [máxima longitud de lado]
```

El archivo de entrada deberá ser un archivo de modelo digital (triangulación, extensión MDT), del cual se borrarán aquellos triángulos que tengan algún lado superior al valor introducido en metros. MDTopX guarda el modelo resultante en el archivo de entrada y sobrescribe el original: trabaja con una copia si necesitas conservarlo.

La máxima longitud de lado es el único argumento que MDTopX toma después de **/LADO**. El archivo de entrada puede ir antes de la orden o después de la longitud (`MDTopX /LADO 25 entrada.mdt`). La longitud tiene que ser mayor que 0: si la omites o vale 0 o menos, MDTopX escribe un error en el archivo MDTopX.LOG y termina sin borrar ningún triángulo.

Vea también:

* [Introducción a la línea de comandos](./)
