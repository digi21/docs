# Inserting new profiles from a file
<!-- id: insercion-de-nuevos-perfiles-desde-archivo -->
<!-- origen: 65926d7466e25b03a31493d5cb678e3d01855590 -->

You can insert new profiles to generate the graphic files by using an ASCII file in which the profiles are defined. This file has the following structure:

* A line with the name of the profile. It must be a string whose first character is the letter “P”, followed by the name. For example, “PERFIL 10+200”.
* One line for each point that makes up the profile, with one column for each of the following data:
  * **Point number**
  * **Distance from the axis**, where negative distances are points to the left of the axis and positive distances are points to the right.
  * **Elevation**

Repeat these lines for each of the profiles that you define. Example:

Perfil 1

10001 -40.734 875.251

10002 -22.752 875.373

10003 0.000 875.255

10005 18.967 875.532

10006 45.570 879.069
