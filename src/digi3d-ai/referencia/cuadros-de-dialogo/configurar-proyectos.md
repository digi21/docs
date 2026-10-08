# Configurar proyectos
<!-- id: configurar-proyectos -->

![Cuadro de diálogo Configurar proyectos](../../../images/configurar-proyectos.png)

Este cuadro de diálogo crea, modifica y elimina configuraciones de proyecto. Una configuración de proyecto agrupa los parámetros con los que se abre un archivo de dibujo: sistema de referencia de coordenadas, parámetros de registro, tabla de códigos, teclado y, opcionalmente, los parámetros de los importadores/exportadores.

Las configuraciones se usan en la pestaña [Archivo de dibujo](nuevo-proyecto/archivo-de-dibujo.md) del cuadro de diálogo Nuevo proyecto cuando está activada la opción [Utilizar archivos de proyecto](configuracion/comunicacion-con-el-usuario/utilizar-archivos-de-proyecto.md) del cuadro de diálogo [Configuración](configuracion/README.md). En ese caso, el usuario solo selecciona la configuración, y Nuevo proyecto aplica sus parámetros al archivo de dibujo.

## Abrir el cuadro de diálogo

Selecciona la opción del menú **Herramientas/Configurar proyectos**. La opción solo está habilitada si está activada la opción **Utilizar archivos de proyecto**.

## Campos

* **Configuración**: la configuración que se edita.
* **Nueva**: abre el cuadro de diálogo **Nuevo proyecto de archivos de dibujo**, que solicita el nombre de la configuración nueva, y la añade a la lista. Si ya existe una configuración con ese nombre, muestra un aviso y no la añade. La configuración nueva no se guarda hasta pulsar **Guardar**.

  ![Cuadro de diálogo Nuevo proyecto de archivos de dibujo](../../../images/nuevo-proyecto-de-archivos-de-dibujo.png)
* **Eliminar**: elimina la configuración seleccionada en el momento, sin pulsar **Guardar**.
* **Rejilla de propiedades** de la configuración:
  * **Sistema de referencia de coordenadas**: el sistema de referencia de coordenadas de la ventana de dibujo.
  * **Registro**: **Escala**, **Incremento de registro**, **Equidistancia**, **Altura de textos**, **Tolerancia a generalizar**, **Corrección de Z** y **Sigma**. Son los mismos parámetros de la pestaña [Archivo de dibujo](nuevo-proyecto/archivo-de-dibujo.md). **Escala** admite cualquier valor y ofrece una lista de escalas de 100 a 250000.
  * **Entorno**: **Tabla de códigos**, **Directorio de macroinstrucciones**, **Teclado** (archivo de asignación de teclas), **Directorio de símbolos** y **Orden de inicio**. **Orden de inicio** es la orden que se ejecuta cada vez que se abre un archivo de dibujo; para ejecutar un archivo de macroinstrucciones, escribe `@` seguido de su ruta. Si **Directorio de macroinstrucciones** o **Directorio de símbolos** están vacíos, Digi3D.AI usa los directorios del cuadro de diálogo **Configuración**.
* **Configurar parámetros de importación/exportación**: si está marcada, la configuración incluye los parámetros de los importadores/exportadores. Selecciona un formato en la lista inferior para editar sus propiedades en la rejilla **Propiedades del importador/exportador**. Al abrir un archivo de dibujo con esta configuración, se usan estos parámetros y Nuevo proyecto no muestra la categoría del motor de importación/exportación.
* **Guardar**: guarda la configuración seleccionada.
* **Salir**: cierra el cuadro de diálogo. Los cambios que no se han guardado se pierden.

## Observaciones

* Si Digi3D.AI no se ejecuta como administrador, **Guardar** y **Eliminar** muestran el icono del escudo de elevación de _Windows_. Al pulsarlos no se pide elevación: guardan o eliminan la configuración igualmente.
* Las configuraciones son comunes a todos los usuarios del equipo: se guardan en el [archivo de configuración Digi3DNET.db](../archivos/archivo-de-configuracion-digi3dnet.db.md).
