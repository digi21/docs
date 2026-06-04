# bin



Indica que el archivo de dibujo a abrir en la ventana de dibujo es binario de precisión simple (con extensión .bin)

## Opciones posicionales obligatorias

| Nombre | Descripción                  |
| ------ | ---------------------------- |
| ruta   | Ruta al archivo .bin a abrir |

## Opciones&#x20;

Estos valores son opcionales, y si se especifican modifican el valor por defecto que tienen asignados.

| Opción   | Descripción                                                                            | Valor por defecto |
| -------- | -------------------------------------------------------------------------------------- | ----------------- |
| --decim  | Número de decimales con los que se almacenarán las coordenadas en el archivo de dibujo | 2                 |
| --origen | Origen global                                                                          | 0.0 0.0 0.0       |

## Ejemplo

Para abrir un archivo de dibujo en formato binario de doble precisión c:\trabajo\archivo.bin con precisión de milímetros y con origen en (0, 4000000, 0) con la tabla de códigos c:\trabajo\tabla.tab.xml:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml bin c:\trabajo\archivo.bin --decim 3 --origen 0 4000000 0
```

