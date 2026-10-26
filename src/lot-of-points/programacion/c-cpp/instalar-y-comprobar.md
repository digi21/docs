# Instalar y comprobar una DLL
<!-- id: lot-of-points-sdk-instalar -->

Una biblioteca de enlace dinámico (DLL) de comandos debe usar la cabecera actual `lop_sdk.h` del kit de
desarrollo de software (SDK) y exportar `lop_register_commands`.

## Instalar

1. Compila la DLL para Windows de 64 bits.
2. Cierra Lot Of Points antes de sustituir una DLL cargada.
3. Crea `%AppData%\lop\algorithms` si la carpeta no existe.
4. Copia la DLL y sus dependencias en esa carpeta.
5. Abre Lot Of Points.

Lot Of Points busca las dependencias de cada DLL con las opciones de carga de Windows que incluyen la carpeta de la DLL
y los directorios predeterminados del sistema.
El programa carga primero las DLL de `%AppData%\lop\algorithms` y después las de `algorithms`
de la instalación, por orden alfabético en cada carpeta.
La primera declaración válida de un identificador tiene prioridad.

## Comprobar

1. Abre **Configuración** y selecciona **Extensiones**.
2. Comprueba que la extensión y sus comandos están habilitados.
3. Comprueba los botones en las pestañas declaradas.
4. Abre una nube que cumpla los requisitos del comando.
5. Ejecuta el comando y consulta **Salida**.
6. Pulsa **Deshacer** en la barra de título si el comando ha confirmado una edición y quieres revertirla.

La sección **Algoritmos básicos** de `lop_examples.dll` aparece en **Visualización**,
**Herramientas de selección** y **Clasificación de puntos**.
Un botón habilitado en el gestor puede quedar deshabilitado en el ribbon por los requisitos
`LOP_REQUIRES_*`.

## Si la DLL no aparece

1. Comprueba la ubicación del archivo y su arquitectura de 64 bits.
2. Comprueba que la DLL exporta `lop_register_commands` sin decoración de nombres.
3. Comprueba que el registro devuelve `LOP_OK` y algún comando válido.
4. Consulta los avisos de **Salida**.

Para inspeccionar las exportaciones, ejecuta `dumpbin /exports mi_dll.dll` desde un entorno que disponga
de esa herramienta. En C++, usa `extern "C"` o `LOP_SDK_COMMANDS` como explica la [página de C++](cpp.md).

Los avisos llevan el prefijo «Extensiones:» y la ruta del archivo.
El catálogo conserva algunos diagnósticos sin tildes; estos fragmentos reproducen el código:

| Fragmento del aviso | Causa |
|---|---|
| `no se puede cargar (error 126)` | Windows no encuentra una dependencia. |
| `no se puede cargar (error 193)` | Windows rechaza el formato del ejecutable; comprueba su arquitectura. |
| `lop_register_commands no acepta la version 1 del SDK` | El registro devuelve un valor distinto de `LOP_OK`. |
| `devuelve commands nulo` | El registro declara comandos pero devuelve un array nulo. |
| `declara algoritmos por teselas con lop_register, que esta version no carga` | La DLL utiliza la interfaz eliminada; debe declarar comandos y llamar a `process_tiles`. |
| `ya esta declarado, en esta DLL o en otra` | Un identificador de comando está repetido. |
| `no declara exactamente uno de los campos existing_tab_id y new_tab_title` | La declaración no elige una única forma de indicar la pestaña. |
| `no tiene run` | La declaración carece de función de ejecución. |

Una DLL que no exporta ni `lop_register_commands` ni `lop_register` se considera una dependencia
y no produce un aviso por ausencia de función de registro.

Si la extensión aparece pero falta su botón, comprueba los interruptores del gestor y la pestaña declarada.
El programa avisa si `existing_tab_id` nombra una pestaña que no existe o una pestaña contextual.

## Si falla el procesamiento

Consulta en **Salida** el motivo que registra `process_tiles`.
El comando elige las nubes; la función no omite automáticamente una nube inválida de la lista solicitada.
El procesamiento falla si una nube no está abierta, carece de un atributo pedido o no cumple las condiciones
de edición. El modo de solo lectura no exige registro de ediciones ni índices originales.

Si falta el índice de cada punto en el archivo original, regenera el nivel de detalle:
cierra la nube local, elimina su carpeta de caché y abre el original.
Para una nube remota, prepara y publica de nuevo el nivel de detalle con Lot Of Points Studio;
borrar la caché descargada no añade atributos a los datos publicados.
