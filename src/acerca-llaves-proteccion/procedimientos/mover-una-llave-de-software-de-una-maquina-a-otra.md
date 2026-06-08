# Mover una llave de software de una máquina a otra

Las llaves de protección **por software** se pueden mover de un equipo a otro mediante el programa [ActualizarLlaveLDK.exe](http://digi21.blob.core.windows.net/download/ActualizarLlaveLDK.exe).

El proceso consiste, a grandes rasgos, en recoger la información de la máquina que va a recibir la llave, generar en la máquina que tiene la llave un archivo de transferencia que va dirigido **exclusivamente** a esa máquina destino, y finalmente aplicar dicho archivo en la máquina destino.

## Paso 1: Recoger la información de la máquina destino

En la **máquina que va a recibir la llave**:

1. Ejecuta el programa _ActualizarLlaveLDK.exe_.
2. Ve a la pestaña _Transfer License_.
3. En _Collect information about the recipient computer_, en el campo _Save recipient information to_, pulsa el botón de los tres puntos (`…`) y especifica la ruta de un archivo _.id_ que va a identificar a la máquina destino.
4. Copia este archivo _.id_ al ordenador que tiene la llave de protección.

## Paso 2: Generar el archivo de transferencia en la máquina que tiene la llave

En el **ordenador que tiene la llave de protección**:

5. Abre el mismo programa _ActualizarLlaveLDK.exe_.
6. Ve a la misma pestaña _Transfer License_.
7. En _Step 2: On the computer…_, selecciona la llave de protección que quieres mover.
8. En _Read the recipient information file from_, selecciona el archivo _.id_ que identifica a la máquina destino (el que copiaste en el paso anterior).
9. En _Generate the license transfer file to_, indica el nombre del archivo a crear. El archivo creado tendrá extensión _.h2h_.

> [!WARNING]
> Una vez transferida la licencia, **esta desaparece de la memoria de la máquina de origen**. Esto significa que, si pierdes el archivo _.h2h_ que acabas de crear, **no podrás recuperar la llave**. Guárdalo en lugar seguro hasta haber completado todo el proceso.

10. Copia el archivo _.h2h_ a la máquina destino.

> [!IMPORTANT]
> El archivo _.h2h_ **únicamente se puede cargar en la máquina destino**, ya que se ha creado utilizando el _ID_ de dicha máquina. No sirve para ningún otro equipo.

## Paso 3: Aplicar el archivo en la máquina destino

De nuevo en la **máquina destino**:

11. Ejecuta otra vez el programa _ActualizarLlaveLDK.exe_, pero esta vez ve a la segunda pestaña: _Apply License File_.
12. En _Update file_, selecciona el archivo _.h2h_ que acabas de crear en la máquina que tenía la llave de protección.
13. Pulsa _Apply update_.

Una vez completado este paso, ya tienes la llave de protección en la máquina destino.
