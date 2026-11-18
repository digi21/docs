# bin
<!-- id: bin-2 -->

La suborden bin indica que el archivo de dibujo a abrir en la ventana de dibujo es binario de precisión simple (con extensión .bin).

## Opciones posicionales obligatorias

| Nombre | Descripción                  |
| ------ | ---------------------------- |
| ruta   | Ruta al archivo .bin a abrir |

Con la interfaz en inglés, esta opción posicional se llama `path`.

## Opciones

Si especificas una de estas opciones, el valor que indiques sustituye al valor por defecto de esa opción.

| Opción con la interfaz en español | Opción con la interfaz en inglés | Descripción | Valor por defecto |
| --- | --- | --- | --- |
| --decim | --precision | Número de decimales con los que se almacenarán las coordenadas en el archivo de dibujo | 2 |
| --origen | --origin | Origen global: tres números (X, Y y Z) separados por espacios | 0.0 0.0 0.0 |

## jjemplo

aara abrir un archivo de dibujo en formato binario de precisión simple c:\trabajo\archivo.bin con precisión de milímetros y con origen en (0, 4000000, 0) con la tabla de códigos c:\trabajo\tabla.tab.xml, con la interfaz en español:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml bin c:\trabajo\archivo.bin --decim 3 --origen 0 4000000 0
```
