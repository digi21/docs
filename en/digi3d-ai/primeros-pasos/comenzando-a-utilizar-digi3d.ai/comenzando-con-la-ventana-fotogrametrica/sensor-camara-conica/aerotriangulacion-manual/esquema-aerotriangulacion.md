# Aerotriangulation schema
<!-- id: esquema-aerotriangulacion -->
<!-- origen: bc96fa1167f814fe74ec9af741f122cabdf8ca31 -->

When measuring aerotriangulation, you can give points any names and place them wherever you want. Before measuring them, you can configure how many points each project photo contributes, their names and their approximate positions.

An aerotriangulation schema can specify the following:

1. Each photo must contribute three points.
2. The first point is measured approximately at the photo's center, and its name concatenates the photo name + 0.
3. The second point is measured approximately at the photo's center, and its name concatenates the photo name + 1.
4. The third point is measured approximately at the photo's center, and its name concatenates the photo name + 2.

If you select this schema for measurement, the program automatically moves the photogrammetric window to the points contributed by each photo. You only need to measure each point at your chosen location within the indicated area. This prevents mistakes in point names or approximate locations.

Aerotriangulation schemas are read from the file specified in **Tools/Configuration...**, under **Aerotriangulation measurement**, in **Schemas**.

The Digi3D.AI installer creates a schemas file in _%ProgramData%\Digi3D.NET\Esquemas Orientaciones_ named _Esquemas de medida de aerotriangulación.aerotrischeme.xml_.

This file provides the following aerotriangulation schemas:

| Schema name | Points per photo | Valid for | Description |
| :--- | :--- | :--- | :--- |
| Sin esquema | 0 | Any photo | Provides no points; you must add them at your chosen positions and with your chosen names. |
| Several strips with percentages | 3 | Any photo | A generic schema that adapts to photo size and measures three points per photo. |
| One strip with percentages | 5 | Any photo | A generic schema that adapts to photo size and measures five points per photo. |
