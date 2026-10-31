# Conflict with the plane of comparison
<!-- id: conflicto-con-el-plano-de-comparacion -->
<!-- origen: d3f803e7abbb9df41c56531fb1cdfae35d04b8f0 -->

While calculating longitudinal profiles or cross sections, the program may detect a point below the comparison plane. This can happen when an absolute plane elevation is too high for all profiles to lie above it.

The program displays a dialog to resolve this conflict if desired, showing the minimum profile elevation and the comparison plane configuration, which you can change.

**Absolute** places the plane at **Height value**. **Relative to each profile** subtracts **Height value** from each profile's lowest elevation. **Relative to all profiles** subtracts **Height value** from the lowest elevation across all profiles.
