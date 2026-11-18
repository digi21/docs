# Delete triangles by edge length
<!-- id: linea-de-comando-borrar-triangulos-por-longitud-de-lado -->
<!-- origen: 202f94f93e3560c082b4e70114222972904088eb -->

[Delete triangles by edge length](/mdtopx/herramientas-de-edicion-de-la-triangulacion/tamano-de-los-lados.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /LADO [máxima longitud de lado]
```

The input file must be a digital model (triangulation, MDT extension). Triangles with any edge longer than the specified value in meters are deleted. MDTopX saves the resulting model in the input file and overwrites the original: work on a copy if you need to keep it.

The maximum edge length is the only argument that MDTopX takes after **/LADO**. The input file can come before the command or after the length (`MDTopX /LADO 25 entrada.mdt`). The length must be greater than 0: if you omit it or it is 0 or less, MDTopX writes an error to the MDTopX.LOG file and ends without deleting any triangle.

See also:

* [Introduction to the command line](./)
