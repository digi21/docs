# Localización de transformaciones entre distintos sistemas de referencia de coordenadas
<!-- id: localizacion-transformaciones-src -->

Digi3D.AI en ocasiones tiene que transformar coordenadas entre distintos sistemas de referencia de coordenadas. Para poder realizar esta operación, necesita localizar una _transformación matemática_ entre ambos sistemas.

La base de datos _EPSG_ incluye una lista de las posibles transformaciones matemáticas existentes entre dos sistemas de referencia de coordenadas.

Digi3D.AI consulta a la base de datos _EPSG_ siempre que precisa localizar una transformación entre dos sistemas de referencia de coordenadas. Si encuentra una transformación, utilizará esta transformación para transformar entre ambos sistemas de referencia de coordenadas.

Las transformaciones especificadas en la base de datos _EPSG_ son siempre entre

1. Sistemas horizontales 2D y sistemas horizontales 2D.
2. Sistemas horizontales 3D y sistemas horizontales 3D.
3. Sistemas horizontales 3D y sistemas verticales.
4. Sistemas verticales y sistemas verticales.

No existe ninguna transformación de coordenadas de referencia entre sistemas compuestos (que son la mayoría que vamos a utilizar con Digi3D.AI), pero Digi3D.AI se encarga de localizar correctamente las transformaciones entre sistemas compuestos y horizontales y verticales de forma transparente para el usuario.

Si uno de los dos sistemas es compuesto, como por ejemplo _ED50 / UTM Zone 30N + EGM06_ se localizará la transformación horizontal por un lado y vertical por otro realizando una serie de operaciones de concatenación que encapsulan ambas transformaciones en una única transformación.

No existen transformaciones entre todos los sistemas de referencia de coordenadas. Por ejemplo, no existe ninguna transformación entre los sistemas de coordenadas horizontales _ED50 / UTM Zone 30N y NAD83(NSR2007) / Florida East (ftUS)._

Digi3D.AI es muy restrictivo a la hora de localizar transformaciones entre sistemas de referencia de coordenadas horizontales. Si no se localiza una transformación entre sistemas horizontales se mostrará un mensaje de error al usuario, sin embargo es menos restrictivo a la hora de localizar transformaciones verticales, permitiendo al usuario especificar una transformación genérica en caso de no localizar una transformación vertical.

Cuando Digi3D.AI intenta localizar una transformación entre dos sistemas pueden darse tres posibilidades:

1.  Que se localice una única transformación entre ambos sistemas.

    En este caso, Digi3D.AI utilizará dicha transformación sin preguntarle nada al usuario. La transformación se asignará de forma transparente para el usuario.
2.  Que no se localice ninguna transformación entre ambos sistemas.

    Si se está intentando localizar una transformación horizontal:

    En este caso Digi3D.AI le comunicará al usuario la imposibilidad de localizar una transformación mediante un cuadro de diálogo mostrando toda la información posible para que el usuario sepa cual es el problema. Generalmente esto cancela la operación que se estaba realizando, por ejemplo, la siguiente captura de pantalla se muestra al intentar abrir una ventana de dibujo con un sistema incompatible con el de la ventana fotogramétrica (que ya está abierta). Una vez aceptado el cuadro de diálogo por parte del usuario se cancelará la creación de la ventana de dibujo.

    ![](../../images/mensaje-de-error-porque-no-existe-transformacion-entre-dos-sistemas.png)

    Si por el contrario se estaba intentando localizar una transformación vertical, Digi3D.AI muestra el cuadro de diálogo **Selección de transformación vertical**.

    ![Cuadro de diálogo Selección de transformación vertical](../../images/seleccion-de-transformacion-vertical.png)

    El cuadro de diálogo contiene estos controles:

    * **Sistemas de coordenadas.** Los dos campos de texto, separados por la letra «y», muestran el nombre del sistema de coordenadas de origen (el campo superior) y el del sistema de coordenadas de destino (el campo inferior). Son de solo lectura.
    * **Considerar que el sistema de coordenadas vertical de ambos sistemas es idéntico.** Elige esta opción si la coordenada Z no cambia entre los dos sistemas. Digi3D.AI crea una transformación vertical con un desplazamiento de 0, de modo que la coordenada Z de destino es igual a la coordenada Z de origen.
    * **Introducir un valor de desplazamiento vertical.** Elige esta opción si la coordenada Z de destino se obtiene sumando un valor fijo a la coordenada Z de origen. Al elegirla se activa el campo **Valor**.
    * **Valor.** Escribe el desplazamiento vertical, que puede ser negativo. Digi3D.AI calcula la coordenada Z de destino como la coordenada Z de origen más este valor. En el sentido contrario, de destino a origen, resta el valor. El campo está desactivado hasta que eliges la opción de desplazamiento, y vuelve a desactivarse si eliges la opción de sistemas idénticos.
    * **Utilizar siempre esta transformación.** Marca esta casilla para que Digi3D.AI memorice la transformación elegida para este par de sistemas de coordenadas, en este orden de origen y destino. La próxima vez que necesite la transformación vertical entre estos dos sistemas, la aplicará sin mostrar el cuadro de diálogo. Si no marcas la casilla, el cuadro de diálogo se muestra cada vez que Digi3D.AI necesita esta transformación.
    * **Aceptar.** Está desactivado hasta que eliges una de las dos opciones. Al pulsarlo, Digi3D.AI crea la transformación vertical con el desplazamiento indicado.
    * **Cancelar.** Cierra el cuadro de diálogo sin crear ninguna transformación y sin memorizar nada. La operación que necesitaba la transformación decide qué hacer a continuación.

    Digi3D.AI guarda la transformación memorizada en el registro de Windows del usuario actual, en el valor `wkt` de la clave `HKEY_CURRENT_USER\Software\Digi21\Digi3D.NET\App\TransformacionesMemorizadas\<sistema de origen>\<sistema de destino>`. Guarda el desplazamiento con 6 decimales.

    Digi3D.AI no incluye ninguna orden ni cuadro de diálogo para deshacer esta elección. Para que vuelva a mostrarse el cuadro de diálogo con ese par de sistemas, abre el Editor del Registro de Windows y borra la clave `<sistema de destino>` de esa ruta.
3.  Que se localicen varias transformaciones entre ambos sistemas.

    En este caso Digi3D.AI mostrará al usuario el **Cuadro de diálogo Localizadas Múltiples Transformaciones**.
