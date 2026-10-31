# Quality control examples
<!-- id: ejemplos-3 -->
<!-- origen: f2e120468dc0dfb994096dbef3172fbb806d96ee -->

The GitHub repository [**Guiones-Control-Calidad-Python-Digi3D**](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D) provides controls ready to use and adapt.

Its single `guiones.py` contains control functions decorated with `@quality_control()` and dynamic representation rules. Load it under *Python environment* in the **Codes Table Editor**, then assign controls to each code.

Examples of checks:

- A geometry is an **area** (polygon or closed line) meeting a minimum size.
- Vertex **Z** is constant, increasing, decreasing or within a distance of the digital terrain model.
- Certain **relationships** between geometries with different codes exist or do not exist.
- **Database field** validation for a code.

For writing, declaring and assigning controls, see [Quality controls](../README.md).

[Python quality control repository](../../guiones-control-calidad/README.md) describes every control and dynamic representation rule in `guiones.py`, with parameters.

## Explained examples

| Example | Check |
| :--- | :--- |
| [Detecting vertices with Z above the previous vertex](detectar-vertices-con-z-superior-a-la-anterior.md) | Geometry vertex Z must not increase. |
