# Coordinate reference system names
<!-- id: nombres-sistemas-referencia-coordenadas -->
<!-- origen: 649a96bdb2abf39c2abcd44fc6cbf6f5d296adc2 -->

Every coordinate reference system has an associated name. Coordinate reference system naming is standardized, so all systems of a given type follow the same naming pattern.

## Vertical coordinate reference systems

Vertical coordinate reference system names follow this pattern:

`[Nombre del sistema]`

For example: _Incheon height, Alicante height, EGM2008, ..._

## Geographic coordinate reference systems

Geographic coordinate reference system names follow this pattern:

`[Nombre del sistema]`

For example: _Padang (Jakarta) (deg), ED50, WGS 84, ..._

## Projected coordinate reference systems

Projected coordinate reference system names follow this pattern:

`[Nombre del sistema geográfico asociado] / [Nombre específico del sistema proyectado]`

The projected system's specific name can be a particular name, such as _Missouri East_ for eastern Missouri, or, more commonly, follow this pattern:

`[Nombre de la proyección] [`_`zone`_`] [huso][N/S]`

These examples illustrate the pattern:

_WGS 84 / UTM zone 13N_ indicates UTM projection, zone 30 north, based on the _WGS 84_ geographic system.

_NTF (Paris) / Lambert zone II_ indicates Lambert projection, zone 2, based on the NFT (Paris) geographic system.

## Compound coordinate reference systems

Compound coordinate reference system names follow this pattern:

`[Sistema horizontal (geográfico 2D o proyectado)] + [Sistema vertical]`

For example:

_WGS 84 / UTM Zone 30N + Alicante Height_

_NFT (Paris) / Lambert Zone 2 + EGM2008_
