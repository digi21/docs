# Railway classification
<!-- id: clasificacion-ffcc -->
<!-- origen: e430ba9dbadcc7bf148085889dd1a4c4d5797cd7 -->

[Railways](./)

Classifies the point cloud of a railway or metro line captured with a mobile mapping system (MMS) and generates its vector data. It detects the tracks with their rails, sleepers and guard rails, the track bed and the ballast, the ground, the platforms, the walls, the canopies of platforms and stations, the tunnels, the catenary (wires, droppers, masts, cantilevers and cross connections), the vegetation, the trackside signals and the low trackside objects (track pegs, balises and cable pits). If requested, it fills the gaps of the rails and of the ground with synthetic points and generates the alignment of the tracks (.VIA).

It only changes what has to do with the railway. The other points keep their class.

## How to use it

**With a file.** Open the point cloud. On the **MMS** tab, **FFCC** group, click **Railway classification**. Fill in the dialog box and click **OK**. The point cloud is classified in memory; save it to keep the result.

**With a project.** From the project view, click **Railway classification**, fill in the dialog box and choose the files. The tracks are searched in all the files at once, so they continue from one file to the next. From the previous and the next file of each one (its neighbours in the project), a 10 % strip is used as context: it gives continuity at the ends, but those points are neither classified nor saved. Each classified file is saved at the end.

The trajectory of the vehicle, or the axis of the line, is needed, in any format MDTopX reads (for example, a .BIN). The tracks are searched along it.

## What it generates

* **The class of each point**, with the classes in the table below.
* **Synthetic points** (optional) in the gaps of the rails and of the ground. They take the class of what they fill and the synthetic point flag, so another run recognizes and replaces them.
* **"Edit objects" objects**: one for each rail, sleeper, platform, wall, tunnel, guard rail, catenary mast (with its cantilever), catenary wire, patch of vegetation, canopy, signal, track peg, balise and cable pit. In a project they are saved in the .OBJ file next to each file.
* **The vector data** (optional), in a new document: the axes of the rails and of the tracks, the sleepers and the outlines of the rails and of the sleepers, the platform edges, the tops of the walls, the tunnel profiles, the guard rails, the catenary wires, the droppers, the masts (the prism of their footprint), the cantilevers, the cross connections and the prism of each signal, track peg, balise and cable pit (its outline at the bottom and at the top, and its four edges).
* **The alignment** (optional), in a new road document: the geometry of the tracks, with their template and their profiles, as in **Fit axis geometry**.

## The dialog box

| Field | Meaning |
|---|---|
| Trajectory (or axis of the line) | The file with the trajectory of the vehicle or with the axis of the line. |
| Search for tracks up to this distance on each side (m) | How far from the trajectory the tracks are searched, on each side. By default, 20 m. |
| Point classification | Sets the class of each point. Without it, only the vector data are generated. |
| Keep what is already classified | Points that already have a class (neither 0 nor 1) are not changed. |
| Synthetic points in the gaps of the rails and of the ground | Adds the synthetic points. Those of a previous run are replaced. |
| Vector | Generates the vector data in a new document. |
| Alignment with its geometry and template (.VIA) | Also generates the alignment. **Parameters...** opens those of **Fit axis geometry**, which are the same. |
| LiDAR classes... | The class of each element. See the table below. |
| Vector codes... | The code of each element of the vector data. See the table below. |
| Default values | Restores the default values of the fields of the dialog box (not of the classes or the codes, which have their own button in their table). |

### The classes

By default, those of the MDTopX class catalogue. Each element must have a class different from the others; only the catenary classes can repeat among themselves.

| Element | Class |
|---|---|
| Rails of the surveyed track | 10 |
| Rails of the other tracks | 100 |
| Sleepers | 102 |
| Synthetic rail points | 10 |
| Unclassified | 1 |
| Ground | 2 |
| Ballast | 103 |
| Synthetic ground points | 104 |
| Platform | 105 |
| Wall | 91 |
| Tunnel | 95 |
| Tunnel elements | 106 |
| Guard rails | 101 |
| Contact wire | 109 |
| Messenger wire | 110 |
| Droppers | 111 |
| Other cables | 112 |
| Masts | 107 |
| Cantilevers | 108 |
| Vegetation | 4 |
| Cross connection | 113 |
| Canopy | 114 |
| Signal | 85 |
| Track peg | 115 |
| Balise | 116 |
| Track cable pit | 117 |

### The vector codes

| Element | Code |
|---|---|
| Rail axis | RAILES |
| Track axis | EJEVIA |
| Sleeper axis | TRAVIE |
| Rail outline | CONCAR |
| Sleeper outline | CONTRA |
| Platform edge | BANDEN |
| Wall top | MURO |
| Tunnel profiles | TUNEL |
| Guard rail axis | CCARRI |
| Guard rail outline | CONCCA |
| Contact wire | HCONTA |
| Messenger wire | SUSTEN |
| Dropper | PENDOL |
| Other cables | CABLES |
| Mast | POSTE |
| Cross connection | CTRANS |
| Cantilever | MENSUL |
| Signal | SENAL |
| Track peg | PIQUET |
| Balise | BALIZA |
| Track cable pit | CREGIS |

## Trackside signals

It detects the posts with a plate (signs and kilometre or hectometre posts) and the high light signals (a mast with the box of the lights). The dimensions come from the Spanish catalogue of railway signals (BOE-A-2017-556): signals are placed about 2.8 m from the track axis; the box of a high signal, with its lowest light 2.5 m above the rail; the plates, with their lower edge 1.2-1.65 m above it.

A signal is an isolated object, between 1.3 and 4.5 m from the axis of the nearest track, with a thin, vertical post and a head on top:

* **Plate**: a thin head, with its lower edge 2 m or less above the rail. Also a small head (0.35 m wide or less), even if it is not thin, on a post thinner than it; so the cap of a post slightly wider than the post and 15 cm high or more is also found as a plate.
* **High signal**: a box taller than it is wide, from 2 m above the rail.
* **Tower**: a high signal with its cage and its ladder, 3.5 to 7 m high and 2.5 m or less in plan, made of vertical members (the columns of the cage, the ladder and the mast), with the mast 0.4 m or more above the rest or with all its members together, within 0.5 m (an H post with signals). It is found as a high signal.

A post on its own, a street light, a cabinet, a bin on its post, the crown of a young tree on its trunk, a tree (it has no vertical members) and the foot of a catenary mast are not signals.

Low light signals and signals hanging from a wall, a tunnel side wall or a catenary mast are not detected yet. Neither is a signal touching a fence or a bush.

## Low trackside objects

Each one, with its own class:

* **Track peg**: an isolated stake 0.35 to 0.9 m high and 0.3 m or less in plan, solid and with nothing above it, between 1.9 and 4.5 m from the track axis. Sometimes its lowest 15-20 cm stay as ground.
* **Balise**: an object between the two rails of a track, 0.2 to 2 m long and 0.7 m wide or less, with its top between 30 cm below and 10 cm above the rail heads. Only on the tracks that are detected: if a track is not found, neither are its balises.
* **Track cable pit**: a box 0.3 to 1 m high and 0.4 to 2.5 m wide, with a flat lid and its foot on the ground, 8 m or less from the track axis. It can carry a post. Whatever has that shape is also found as a cable pit: a box on a short post, a bench without a backrest, a bin with a lid or a trimmed hedge.

A tuft of grass (it has few points per voxel), a stone, a round bush and the foot of a bollard or of a bin are not trackside objects.

What already had the signal class (for example, from the [urban classification](../urbana/clasificacion-urbana/README.md)) and is not found as a signal now becomes unclassified, but only where a trackside signal could be (from 0.55 to 5.25 m from the axis of a track and up to about 7.5 m high). What was a track peg, a balise or a cable pit, in the whole strip where they are searched for.
