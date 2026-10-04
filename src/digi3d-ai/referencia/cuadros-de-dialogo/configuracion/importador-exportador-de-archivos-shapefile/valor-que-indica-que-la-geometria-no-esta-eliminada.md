# Valor que indica que la geometría NO está eliminada
<!-- id: valor-que-indica-que-la-geometria-no-esta-eliminada -->

Indica el valor del [campo de marca de eliminado](campo-en-el-que-almacenar-marca-de-eliminado.md) que identifica una geometría no eliminada.

* Al guardar, se almacena este valor en el campo de las geometrías que no están eliminadas.
* Al cargar, una geometría cuyo campo tiene un valor distinto de este se considera eliminada.

El valor por defecto es `99999999`.

Solo se utiliza si en [Modo de eliminación de geometrías](modo-de-eliminacion-de-geometrias.md) has seleccionado **Almacenando un valor en un campo en el archivo DBF**.
