# EGM08_REDNAP becomes Alicante height and Tenerife height
<!-- id: egm08-rednap-sustituido-por-alicante-height -->
<!-- origen: 7ccf6db52c8f0aee59f61122f8618e681769c24f -->

Digi3D.AI automatically replaces the two EGM08_REDNAP vertical systems with official EPSG systems representing the same heights:

| Previous system | Previous code | New system | EPSG code |
| :--- | :--- | :--- | :--- |
| EGM08_REDNAP Península | 69036406 | Alicante height | 5782 |
| EGM08_REDNAP Canarias | 69036407 | Tenerife height | 9398 |

For example, a file whose reference system was _ETRS89 / UTM zone 30N + EGM08\_REDNAP Península_ now opens as _ETRS89 / UTM zone 30N + Alicante height_.

## Why it changes

EGM08_REDNAP systems are not part of the EPSG database. Digi21 added them to the database distributed with Digi3D.NET using two custom codes, 69036406 and 69036407, to support the Instituto Geográfico Nacional's EGM08-REDNAP geoid model.

EPSG now publishes official systems using that same geoid model:

- **Alicante height** (EPSG 5782), with operation EPSG 9410, for mainland Spain.
- One system per Canary Island, from 9395 to 9401, with operations 9415 to 9421.

Digi3D.AI now uses EPSG database 12.057, which contains these official systems and no longer contains the two custom codes.

## Heights do not change

The new systems use the same grid files as the previous ones: `EGM08_REDNAP.txt` for mainland Spain and `EGM08_REDNAP_Canarias.txt` for the Canary Islands, in `C:\ProgramData\Digi3D.NET\OpenGis`. Orthometric and ellipsoidal heights calculated by Digi3D.AI are the same as those calculated by Digi3D.NET.

For example, at latitude 40° and longitude −3°, an orthometric height of 100 m in _Alicante height_ converts to an ellipsoidal height of 151.850 m in ETRS89. The difference, 51.850 m, is the value of the `EGM08_REDNAP.txt` grid at that point.

## What you will see

- **When opening a file**, project or control point file that used EGM08_REDNAP, Digi3D.AI shows the new system. No action is needed: replacement occurs when reading the reference system, whether the file stores the code (69036406 or 69036407) or only the name.
- **When saving** that file, Digi3D.AI writes the new system with its EPSG code.
- **In the reference system selection dialog**, EGM08_REDNAP no longer appears in the vertical system list. Select _Alicante height_ for mainland Spain, or the island's system for the Canary Islands.
- **For memorized transformations**, Digi3D.AI stores the transformation chosen for each pair of systems by system name. For pairs containing EGM08_REDNAP, Digi3D.AI may display the transformation selection dialog once again. Select the checkbox again so it remembers the choice.

## Canary Islands

EPSG defines one vertical system per island, but all seven use the same grid, `EGM08_REDNAP_Canarias.txt`. EGM08_REDNAP Canarias is always replaced by **Tenerife height** (EPSG 9398), regardless of the island where the work is located. Heights are the same with any of the seven systems; only the name changes.

If you want the file to identify the system for the island where the work is located, select it in the reference system selection dialog:

| Island | Vertical system | EPSG code |
| :--- | :--- | :--- |
| Lanzarote | Lanzarote height | 9395 |
| Fuerteventura | Fuerteventura height | 9396 |
| Gran Canaria | Gran Canaria height | 9397 |
| Tenerife | Tenerife height | 9398 |
| La Gomera | La Gomera height | 9399 |
| La Palma | La Palma height | 9400 |
| El Hierro | El Hierro height | 9401 |

## Files opened with Digi3D.NET

Digi3D.NET already included _Alicante height_ and the island systems with their geoid operations. A file saved with Digi3D.AI opens in Digi3D.NET with the same reference system.
