# Activate computer offline
<!-- id: activar-ordenador-offline -->
<!-- origen: b9a30869c28667546d3dbac36ce4ff3e6110e52e -->

This performs the same function as [Activate computer](/acerca-llaves-proteccion/programas-relacionados-con-licencias-y-llaves-de-proteccion/activar-ordenador.md), on computers with restricted internet access.

Activation always requires internet access, but this program transfers that requirement from the activated computer to another program running on a computer with internet access.

Suppose computer _A_ must be activated in a dongle connected to it or accessible over the network, but _A_ has restricted internet access. Computer _B_ \(possibly managed by the network administrator\) has internet access.

Activation has three stages:

1. On **A**, run **Activate computer offline** and generate an **activation request file**.
2. On **B**, run **Create activation file**, which analyzes that file, contacts our servers and generates a **computer activation file**.
3. On **A**, run **Activate computer offline** to activate it in the dongle using the file from the previous step.
