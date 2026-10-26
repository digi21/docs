# Archivos de configuración de teclas
<!-- id: archivos-configuracion-teclas -->

Los archivos de configuración de teclas \(los archivos _teclas.mnu_\) utilizan un formato actualizado.

Los archivos de configuración de teclas de Digi3D.AI tienen extensión _.keyboard.xml_ y sustituyen a los archivos _teclas.mnu_ de versiones anteriores. Digi3D.AI no puede importar tus archivos de teclas antiguos. Puedes convertir los archivos _teclas.mnu_ con un programa de consola.

Puedes descargar esta herramienta de [https://github.com/digi21/TeclasMnuATeclasMnuXml/releases](https://github.com/digi21/TeclasMnuATeclasMnuXml/releases)

El programa de conversión requiere como parámetro la ruta al archivo que quieres convertir. El programa creará un archivo convertido en el mismo directorio que el original y con el mismo nombre, pero con extensión _.keyboard.xml_.

Si el programa no puede traducir alguna tecla, mostrará un mensaje en la consola que indica qué teclas no se pudieron traducir.

Indica la ruta absoluta del archivo que quieres convertir para que el archivo convertido se cree en el mismo directorio. Por ejemplo:

```text
C:\DIGI\Tablas\TeclasMnuATeclasMnuXml.exe c:\digi\tablas\miteclado.mnu
```

Si indicas una ruta relativa al ejecutar el programa de conversión, como en el siguiente ejemplo:

```text
C:\DIGI\Tablas\TeclasMnuATeclasMnuXml.exe miteclado.mnu
```

El programa de conversión creará el archivo en el directorio raíz \(en C:\\)

