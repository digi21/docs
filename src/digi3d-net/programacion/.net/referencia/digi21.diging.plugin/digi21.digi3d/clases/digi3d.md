# Digi3D

Espacio de nombres: [Digi21.DigiNG.Plugin](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/)\
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase estática proporciona métodos para interactuar la ventana principal de Digi3D.NET.

```csharp
public static class Digi3D
```

## Propiedades

| EnableSounds    | Activa/Desactiva la generación de sonidos por parte del programa.                                                 |
| --------------- | ----------------------------------------------------------------------------------------------------------------- |
| Panes           | Permite interacturar con los paneles del programa.                                                                |
| Tasks           | Permite interactuar con el panel de tareas del programa.                                                          |
| OutputWindow    | Permite interacturar con el panel de resultados del programa.                                                     |
| StatusBar       | Permite interactuar con la barra de estado del programa.                                                          |
| BackgroundColor | Obtiene el color de fondo de los cuadros de diálogo (varía en función del tema seleccionado por el usuario).      |
| ForegroundColor | Obtiene el color de los textos de los cuadros de diálogo (varía en función del tema seleccionado por el usuario). |
| CommandLine     | Devuelve los parámetros con los que se ha ejecutado la aplicación.                                                |

## Métodos estáticos

| Music(MusicType)                            | Ordena reproducir un sonido                                                                      |
| ------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| ShowBallon(string, string, int)             | Muestra un globo con información al usuario.                                                     |
| ShowBallon(string, string, int, BallonIcon) | Muestra un globo con información al usuario con un icono asociado.                               |
| SynthesizeVoice(string)                     | Reproduce la frase pasada por parámetros utilizando el motor de sintetización de voz de Windows. |
