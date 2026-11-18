# Dibujo
<!-- id: dibujo -->

Ordena abrir una ventana de dibujo.

La orden `dibujo` requiere exactamente una suborden, que indica el formato del archivo de dibujo, y admite las opciones de la tabla siguiente.

## Opciones

Si especificas una de estas opciones, el valor que indiques sustituye al valor por defecto de esa opción. Al abrir la ventana de dibujo, Digi3D.AI guarda en la configuración del usuario los valores de estas opciones, también el valor por defecto de las que no especificas, y sustituye los valores que había guardados.

| Opción    | Descripción                                                                                                                                        | Valor por defecto |
| --------- | -------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------- |
| --tabla   | Tabla de códigos                                                                                                                                   |                   |
| --escala  | Escala de visualización de patrones                                                                                                                | 1000.0            |
| --incr    | Incremento de registro                                                                                                                             | 1.0               |
| --equidis | Equidistancia de curvas de nivel                                                                                                                   | 1.0               |
| --genera  | Tolerancia a generalizar                                                                                                                           | 0.04              |
| --corrZ   | Corrección de Z                                                                                                                                    | 0.0               |
| --sigma   | Sigma                                                                                                                                              | 0.001             |
| --orden   | Orden a ejecutar al abrir la ventana de dibujo (puede ser el nombre de cualquier orden de Digi3D así como cualquier archivo de macroinstrucciones) |                   |

## Subórdenes

Cada suborden se describe en su página. Digi3D.AI obtiene los nombres de las opciones de las subórdenes de los recursos correspondientes al idioma de la interfaz: las páginas de las subórdenes indican el nombre con la interfaz en español y con la interfaz en inglés. La suborden dgn es la excepción: sus nombres de opción son fijos y no cambian con el idioma.

| Suborden | Descripción |
| -------- | ----------- |
| [bind](/digi3d-ai/referencia/linea-de-comandos/dibujo/bind.md) | Abre un archivo de dibujo binario de doble precisión (extensión .bind) |
| [bin](/digi3d-ai/referencia/linea-de-comandos/dibujo/bin.md) | Abre un archivo de dibujo binario de precisión simple (extensión .bin) |
| [shp](/digi3d-ai/referencia/linea-de-comandos/dibujo/shp.md) | Abre los archivos _shapefile_ del directorio especificado |
| [dgn](/digi3d-ai/referencia/linea-de-comandos/dibujo/dgn.md) | Define las opciones del formato DGNv8 de MicroStation; actualmente no acepta la ruta del archivo ni abre la ventana de dibujo |
