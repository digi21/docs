# Key configuration files
<!-- id: archivos-configuracion-teclas -->
<!-- origen: ffe345e4be46e1d4fbf5f65719102c05b326ad8f -->

Key configuration files \(_teclas.mnu_ files\) use an updated format.

Digi3D.AI uses _.keyboard.xml_ instead of earlier _teclas.mnu_. It cannot import old key files directly. Convert _teclas.mnu_ using a console tool.

Download it from [https://github.com/digi21/TeclasMnuATeclasMnuXml/releases](https://github.com/digi21/TeclasMnuATeclasMnuXml/releases).

Pass the source file path. The conversion tool creates a file beside the original with the same name and the _.keyboard.xml_ extension.

Unconvertible keys are reported in the console.

Supply an absolute path to create the output in the same directory. For example:

```text
C:\DIGI\Tablas\TeclasMnuATeclasMnuXml.exe c:\digi\tablas\miteclado.mnu
```

With a relative path, such as:

```text
C:\DIGI\Tablas\TeclasMnuATeclasMnuXml.exe miteclado.mnu
```

The conversion tool creates the file in the root directory \(C:\\).
