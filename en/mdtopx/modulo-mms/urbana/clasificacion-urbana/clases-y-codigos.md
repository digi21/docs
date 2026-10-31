# Classes and codes
<!-- id: clases-y-codigos -->
<!-- origen: e45b88cd2d3b3b3d7d6190b2c7368fad115cb40e -->

[Urban classification](/mdtopx/modulo-mms/urbana/clasificacion-urbana/)

The [urban classification](/mdtopx/modulo-mms/urbana/clasificacion-urbana/) dialog changes the LiDAR class for each point type and vector code for each inventory line or element. **Default values** restores the values below. Settings are saved with MDTopX preferences.

## LiDAR classes

| Point type | Default class |
|---|---|
| Roadway | 35 |
| Sidewalk | 40 |
| Curb | 38 |
| Facade (building) | 6 |
| Other ground | 2 |
| Untyped object | 1 |
| Unclassified | 1 |
| Tree crown | 5 |
| Streetlight | 101 |
| Vehicle | 103 |
| Barrier (guardrail) | 104 |
| Road sign | 106 |
| Bollard | 108 |
| Street furniture | 109 |
| Facade element | 110 |
| Tree pit | 46 |
| Below pavement (shaft) | 47 |
| Shaft grate | 48 |
| Overhead wire | 121 |
| Trunk | 150 |
| Pole and others | 100 |
| Inferred roadway | 42 |
| Inferred sidewalk | 43 |
| Inferred curb | 44 |
| Inferred ground | 45 |
| Linear road marking | 36 |
| Area road marking | 37 |
| Manhole cover and drain | 41 |

Inferred classes apply to synthetic ground points covering areas hidden by parked cars, MMS only.

## Vector codes

A vector code has 1 to 6 characters without spaces.

### Breaklines

| Line | Default code |
|---|---|
| Lower curb | BOR_AB |
| Upper curb | BOR_AR |
| Facade base | PIEFAC |
| Gutter (water line) | RIGOLA |
| Inferred lower curb (under cars) | BORIAB |
| Inferred upper curb (under cars) | BORIAR |
| Curb along a row of cars | BORFIL |

### Inventory

| Element | Default code |
|---|---|
| Linear road marking (axis) | LB_L |
| Area road marking (outline) | LB_S |
| Round cover | TAPA_R |
| Tree pit | ALCORQ |
| Drain | SUMID |
| Facade (elevation) | FACHAD |
| Door | PUERTA |
| Window | VENTAN |
| Trunk (base and section) | TRONCO |
| Crown center without trunk | CCOPA |
| Crown (footprint) | COPA |
| Overhead wire | CABLE |
| Balcony | BALCON |
| Terrace | TERRAZ |
| Air conditioning | AIREAC |
| Other facade element | ELEFAC |
| Untyped object | OBJETO |
| Streetlight | FAROLA |
| Pole | POSTE |
| Tree (object) | ARBOL |
| Bollard | BOLARD |
| Litter bin | PAPEL |
| Bench | BANCO |
| Vehicle | VEHIC |
| Pedestrian | PEATON |
| Container | CONTEN |
| Barrier | BARRER |
| Road sign | SENAL |
