# Ayuda de Digi21

Este repositorio contiene el código fuente de la ayuda que aparece al entrar en la dirección [ayuda.digi21.net](https://ayuda.digi21.net).

Contiene dos ramas: la rama _main_ y la rama _gh-pages_. Los archivos de la rama _main_ son archivos _markdown_ con la ayuda (construida para ser compatible con el programa [mdbook](https://github.com/rust-lang/mdBook)), y los archivos de la rama _gh-pages_ son los que se le envían al navegador al entrar en la página de la ayuda (archivos _.html_, _.css_, etc.).

Los archivos de la rama _gh-pages_ ~~se generan automáticamente a partir de los archivos de la rama _main_ cada vez que se hace un commit en la rama _main_. Esto es así porque en el directorio `.github/workflows` tenemos configurado un workflow que desencadena la acción [actions-mdbook](https://github.com/peaceiris/actions-mdbook) que realiza la tarea de construir la ayuda en formato html en la rama gh-pages.~~. Como la ayuda es muy grande, el workflow falla porque tarda más de 10 minutos en procesarse, de manera que hemos cambiado el formato eliminando el workflow y subiendo manualmente la ayuda a la rama _gh-pages_ mediante el guión `publicar.cmd` que se explica a continuación:

Para subir la ayuda al servidor tenemos que compilarla. Esto se hace ejecutando el comando `mdbook.exe build` que creará el directorio _book_ la ayuda en formato _html_.

Podríamos configurar GitHub Pages para que cargue el contenido de la página a mostrar del directorio _book_ del repositorio, pero no tiene mucho sentido mezclar los datos originales con el resultado HTML en la misma rama, pues estaríamos mezclando la información con su presentación, de manera que lo que vamos a hacer es que _GitHub Pages_ obtenga la información de la rama _gh-pages_ del repositorio, por lo tanto tenemos dos ramas:

- La rama _main_ con el contenido de la ayuda.
- La rama _gh-pages_ con la renderización en _html_ obtenida de la rama principal.

Ahora ¿cómo hacemos que el contenido del directorio _book_ se asocie con la rama _gh-pages_? Mediante la herramienta [_worktree_ de _git_](https://www.gitkraken.com/learn/git/git-worktree) que es precisamente para eso: Permite tener varias ramas del mismo repositorio repartidas en distintos directorios.

Podríamos crear un _worktree_ con la rama _gh-pages_ y decirle al programa `mdbook.exe` que compile la ayuda directamente en ese directorio, pero no funcionaría, porque lo primero que hace el programa es eliminar todos los archivos del directorio destino (incluido el _.git_ correspondiente al worktree) así que no podemos hacer eso y tendremos que utilizar un directorio temporal. 
Además el comando copia todos los directorios del directorio origen en el directorio destino, incluido el directorio _.git_, por lo tanto no podemos tener el código de la ayuda en el directorio raiz del repositorio, porque al ejecutar el comando se copiaría el directorio _.git_ del propio repositorio en el directorio de destino y al copiar el contenido de este directorio temporal al directorio donde está la rama _gh-pages_ copiaría también el directorio _.git_ sobreescribiendo el de la rama _gh-pages_. Para solucionar este problema, archivos de la ayuda están en el subdirectorio _src_.

El guion `publicar.cmd` tiene en cuenta todo esto y realiza las siguientes acciones:

- Ejecuta el comando `mdbook.exe` para que cree la ayuda a partir de la información que aparece en _src_. El directorio temporal en el que se va a crear la ayuda se creará en directorio raiz del repositorio con el nombre _book_.
- Crea (mediante un worktree) el subdirectorio _gh-pages_ con el contenido de la rama _gh-pages_
- Copia el contenido del directorio temporal _book_ en el directorio de la rama _gh-pages_.
- Se mueve al directorio de la rama _gh-pages_.
- Crea un commit con las modificaciones.
- Vuelve al directorio raiz del repositorio.
- Elimina el worktree.
- Hace un push a la rama _gh-pages_. 









"> L�nea a�adida de prueba manualmente (Asier Izquierdo)" 
