# Computations in Topcal21 web
<!-- id: topcal21-web-calculos -->
<!-- origen: 6816db8ca50a0bed7c1e6219a07f3b283a918749 -->

Topcal21 web computations run on the server with the same formulas, constants and convergence criteria as Topcal21 for Windows. Each wizard has the same steps and asks for the same data as in Windows; this page indicates where each computation starts, which Windows page explains it and what changes in the web version.

## Tools

The wizards of the **Tools** menu and of the bottom toolbar are enabled when a project is open and its group is active in the project panel. **Closure of triangles** only needs the active document to be an observation file.

| Tools menu | Button | Explanation in Topcal21 for Windows |
|---|---|---|
| Orientations... | Orienta | [Orientations](../herramientas/calculo-de-desorientaciones/README.md) |
| Closure of triangles... | Closure | [Closure of triangles](../herramientas/cierre-de-triangulos/README.md) |
| COGO... | COGO | [COGO: Radial survey](../herramientas/radiacion/README.md) |
| Traverses... and Alternate traverses... | Traverse | [Traverses](../herramientas/poligonales/README.md) |
| Intersections... | Intersec | [Intersections](../herramientas/intersecciones-directas/README.md) |
| 3-point resections... | 3-Resect | [3-point resections](../herramientas/intersecciones-inversas/README.md) |
| Hansen's problem... | Hansen | [Hansen's problem](../herramientas/intersecciones-de-hansen/README.md) |
| 2-point resections... | 2-Resect | [2-point resection](../herramientas/biseccion-mixta/README.md) |
| Altimetry computation... | Altimetry | [Altimetry computation](../herramientas/compensacion-de-altimetria/README.md) |
| Stakeout... | Stakeout | [Stakeout](../herramientas/replanteo/README.md) |
| Generate observations... | Observa | [Generate observations](../herramientas/generar-libreta-de-campo/README.md) |

### How the wizards work

* Each wizard shows the step title ("Step 1", "Step 2"...) and the buttons **<< Back**, **Next >>** and **Exit**. In the last step, **Next >>** is called **Compute**. The **Help** button of the wizards is disabled: this help replaces the wizard help.
* In step 1, the lists of point files and observation files contain the project files that could be opened. When the wizard opens, all the files are selected.
* If a computation does not finish in 60 seconds, the wizard shows a message and goes back to the previous step. In the stakeout wizard, the wizard closes and the website does not write the listing.
* The wizards remember the last data you used (for example, the name of the listing). The website stores that data in the [preferences](preferencias-instrumentos-y-sistemas-de-referencia.md) when you click **Compute**.
* The Hansen, 2-point resection and traverse wizards show the "Include into sketch" group disabled with "Not available on the website", because the website does not yet let you open or edit sketches.

### Listing and result files

Each wizard, except Orientations, has the "Computation listing" group with the **Create the output file** check box, the name of the listing and the **Show the listing after the computation** check box. The default names are `Radiacion.html`, `Interseccion.html`, `Hansen.html`, `Biseccion.html`, `Poligonal.html`, `Altimetria.html`, `Replanteo.html`, `LibretaNueva.html`, `Cierre de triangulos.html` and `Superficies.html`.

* If the listing name ends in `.html` or `.htm`, the website writes a listing in HTML (Hypertext Markup Language). With any other extension, it writes a text listing. The background color and the font of HTML listings are set in **Setting HTML...** of the [Preferences](preferencias-instrumentos-y-sistemas-de-referencia.md) dialog box.
* A name without a folder is resolved in the project folder. The website writes the listing in the user's file space (visible in [My files](mis-archivos.md)) and replaces any file that has the same name.
* With **Show the listing after the computation** selected, the website opens the listing in a viewer inside the page. The viewer has the buttons **Print**, which opens the listing in a new browser tab so you can print it with **Ctrl** + **P**, **Download** and **Close**. The scripts in the listing do not run in the viewer. The dates in the listings use the Europe/Madrid time zone.

**Orientations** does not write any listing: when you click **Compute** or **Another point**, it saves the computed orientation in the station point, as an **Undo** step of the point file.

The wizards that compute points (COGO, intersections and resections, Hansen, 2-point resection, traverses and altimetry) have the "TopCal output file" group with the name of the result point file. The **Adding new points** group decides whether the website modifies existing points that have the same number. If the project already has a point file with that name, the website adds the computed points to that file in one **Undo** step. If it does not, the website creates a new point file, unsaved, in the project folder; the **Include in the current project** check box adds that file to the project. Save the file with **Save** or **Save all** to keep the results. **Generate observations** creates an observation file in the same way; its **Adding new observations** group offers **Not modify existing observations**, **Modify existing observations** and **Add observations even if they already exist**.

## Simple computations

The computations of the **Computations** menu use the points of the active document. The commands that read or insert points need the active document to be a point file. **Computation of distances** and **Triangle solver** do not need any document. The other entries of the Computations menu are not available yet; see the [differences from Windows](diferencias-con-el-escritorio.md).

| Computations menu | Explanation in Topcal21 for Windows |
|---|---|
| Rectangular to polar... | [Rectangular to polar coordinates](../calculos/rectangulares-a-polares.md) |
| Polar to rectangular... | [Polar to rectangular coordinates](../calculos/polares-a-rectangulares.md) |
| Intersection of lines › Four points..., Three points and an azimuth..., Two points and two azimuths... | [Straight line intersection](../calculos/interseccion-de-rectas.md) |
| Intersection of line and circle › Two points and a circle..., A point, an azimuth and a circle... | [Straight line and circle intersection](../calculos/interseccion-de-recta-y-circulo.md) |
| Intersection of circles... | [Circle intersection](../calculos/interseccion-de-circulos.md) |
| Computation of arcs | [Arc defined by three points](../calculos/arco-definido-por-tres-puntos.md) |
| Computation of distances › UTM... | [Distance computation in UTM projection](../calculos/distancia-en-proyeccion-utm.md) |
| Computation of distances › Geographics... | [Computation of geographic distances](../calculos/distancia-en-geograficas.md) |
| Triangle solver... | [Triangle solving](../calculos/resolucion-de-triangulos.md) |
| Area computations... | [Surface computation](../calculos/calculo-de-superficies/README.md) |

The computation dialog boxes recompute as you type in the text boxes; each box accepts up to 100 characters. The **Save** button of the dialog boxes that compute points (polar to rectangular, arc, intersections) adds the computed points to the active point file. When you close the dialog box, the website applies the added points as a single **Undo** step and leaves the file with unsaved changes. **Rectangular to polar**, **Computation of distances** and **Triangle solver** do not modify any file.

With a suspended account, the website disables the Tools wizards and the simple computations that can add points. **Rectangular to polar**, **Computation of distances** and **Triangle solver** stay enabled.

### Area computation

The dialog box and the listing work as in Windows. The website draws the plot in an SVG (Scalable Vector Graphics) image with the vertices of the closed plot and the points of each arc, without zoom or grid. The **Adjust...** button is disabled and the results dialog box does not include the plot in any sketch.
