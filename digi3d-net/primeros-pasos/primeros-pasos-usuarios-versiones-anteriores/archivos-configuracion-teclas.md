# Archivos de configuración de teclas

Hemos modernizado el formato de los archivos de configuración de teclas \(los archivos teclas.mnu\).

Este tipo de archivos ahora tienen extensión .keyboard.xml y tienen muchas mejoras con respecto al formato antiguo. Digi3D.NET no puede importar tus archivos de tecla antiguos, pero tenemos un programa de consola que te puede ayudar a importar los archivos de teclas antiguos.

Puedes descargar esta herramienta de [http://digi21.blob.core.windows.net/download/TeclasMnuATeclasMnuXml.exe](http://digi21.blob.core.windows.net/download/TeclasMnuATeclasMnuXml.exe)

Es un programa de consola y requiere que le pases como parámetro la ruta al archivo a traducir. El programa creará en el mismo directorio que el archivo, y con el mismo nombre, pero con extensión .keyboard.xml. Si detecta que alguna tecla no sabe cómo traducirla, te mostrará un mensaje por la misma consola, para que tengas constancia de que teclas no se pudieron traducir.

Te recomendamos que indiques la ruta absoluta del archivo a traducir como por ejemplo:

_C:\DIGI\Tablas\TeclasMnuATeclasMnuXml.exe c:\digi\tablas\miteclado.mnu_

Ya que si no la pones absoluta como a continuación:

C:\DIGI\Tablas\TeclasMnuATeclasMnuXml.exe miteclado.mnu

Te creará el archivo .keyboard.xml en el directorio raíz \(en C:\\)



