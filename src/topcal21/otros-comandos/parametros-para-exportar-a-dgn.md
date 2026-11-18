# Parámetros para exportar a DGN
<!-- id: parametros-para-exportar-a-dgn -->

Cuando se traducen puntos al formato DGN de MicroStation es necesario indicar un archivo semilla. Este archivo es utilizado para conocer las características de traducción (unidades, dimensión, etc.). Adicionalmente, se puede indicar un archivo de traspaso de los códigos de visualización utilizados en el programa al formato de codificación de MicroStation (nivel, estilo, color, peso y grupo gráfico):

* **Semilla**: Se indicará el nombre de un archivo DGN semilla. Es obligatorio. Debería ser un archivo vacío, porque el programa lo copia con el nombre del archivo DGN generado y conserva sus características (unidades, dimensión, etc.). Con la instalación del programa se proporciona un archivo semilla en tres dimensiones y con centímetros como unidad mínima.
* **Tabla**: Se indicará el nombre de un archivo ASCII donde se indica como traducir las entidades. Es opcional. Con la instalación del programa también se proporciona una tabla de traducción de ejemplo. Cada línea del archivo deberá tener los campos separados por comas, espacios o tabuladores, estando en el siguiente orden:
  * Código DIGI.
  * Nivel.
  * Estilo.
  * Color.
  * Peso.
  * Fuente de texto.
  * Grupo gráfico.
  * Nombre de célula.
  * Tipo de elemento: Puede tomar los valores 0 (line string), 1 (shape), 2 (pattern line), 3 (célula) ó 4 (texto).
  * Alto del texto en metros.
  * Ancho del texto en metros.
  * Justificación del texto.
  * Color de relleno.

Se puede pulsar el botón **Aceptar** para proceder con el cálculo o pulsar el botón **Salir** para volver al cuadro de diálogo anterior.
