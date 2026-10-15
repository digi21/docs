# Write
<!-- id: write -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Guarda la tabla de códigos en un archivo.

```csharp
public void Write(string path)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `path` | Ruta del archivo que se escribe. |

El formato se elige por la extensión de `path`, sin distinguir mayúsculas de minúsculas:

- Extensión `.xml`: archivo XML de tabla de códigos.
- Cualquier otra extensión: archivo ZIP con la entrada `Digi.tab.xml` y, en la carpeta `Symbols`, los archivos `.bin` de la carpeta de símbolos configurada en Digi3D.AI. Si el archivo ZIP ya existe, se añaden o se reemplazan esas entradas.

## Notas

`Write` no cambia la propiedad [Path](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/path.md).

`Write` no lanza ninguna excepción y no escribe nada si la tabla de códigos está cifrada o si no se puede escribir el XML. Para confirmar que el archivo se ha escrito, comprueba que existe después de la llamada.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `Exception` | Error al escribir el archivo que el código nativo notifica con una excepción. El mensaje describe el error. |

## Ejemplo

El ejemplo completo está en [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/).
