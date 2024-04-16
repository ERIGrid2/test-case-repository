---
date: '2024-04-03'
description: Simulating the effectiveness of PV power plant controls for voltage regulation
linkTitle: 3.01.01
title: Experiment Specification 3.01.01
weight: 1

---


## Experiment Specification Definition


<table>
<tr>
<th colspan=1>
ID</th>
<td colspan=1>
<p>3.01.01</p></td>
</tr>
<tr>
<th colspan=1>
Reference to Test Specification</th>
<td colspan=1>
<p>TC3</p></td>
</tr>
<tr>
<th colspan=1>
Title of Experiment</th>
<td colspan=1>
<p>Simulating the effectiveness of PV power plant controls for voltage regulation</p></td>
</tr>
<tr>
<th colspan=1>
Research Infrastructure</th>
<td colspan=1>
<p>UCY-FOSS DER-Grid Smart Facility </p></td>
</tr>
<tr>
<th colspan=1>
Experiment Realisation</th>
<td colspan=1>
<p>The voltage regulation control methods proposed in Test Specification 22.01 (Volt-Watt and Volt-VAR operation of smart inverters) will be evaluated on a typical low voltage (LV) feeder (DER-Grid Smart Facility of UCY-FOSS). The LV feeder includes loads (fixed uncontrollable) and a grid-connected PV system (AC-coupled via a smart inverter). The feeder and localized voltage regulation controls will be digitally mapped and simulated using the EMTP software.   </p></td>
</tr>
<tr>
<th colspan=1>
Experiment Setup 
(concrete lab equipment)</th>
<td colspan=1>
<ul>
<li>PV system with smart inverter (SMA SB 3.0 PV inverter)</li>
<li>Smart meter (Schneider PM8000)</li>
<li>EMTP software</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Experimental Design and 
Justification</th>
<td colspan=1>
<p>The LV feeder at the UCY-FOSS DER-Grid Smart Facility will be digitally mapped using the EMTP software. The feeder includes loads, a grid-connected PV system (coupled to the grid via a smart inverter), a smart meter (grid measurements at the PCC) and a PAC (grid-edge PPC device). </p><p>The localized voltage regulation controls will be modeled as a PV system PPC block configured as:</p><ul>
<li>PI controller for reactive power control</li>
<li>Controller based on Volt-VAR curve settings</li>
<li>Controller based on Volt-Watt curve settings</li>
</ul><p>The effectiveness of the proposed control methods to regulate the voltage at the PCC of the simulated grid will be evaluated by applying a step change in the voltage and analyzing the output response of the modelled PV system PPC block. </p><p>Finally, the performance of the implemented controls will be assessed by applying actual consumption and generation data-sets acquired at the feeder over a yearly period (1-minute resolution consumption and generation data).</p></td>
</tr>
<tr>
<th colspan=1>
Precision of equipment and measurement uncertainty</th>
<td colspan=1>
<ul>
<li>Uncertainty of smart meter voltage and power measurements (0.5%)</li>
<li>Uncertainty of smart inverter active and reactive power measurements (1%)</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Storage of experiment data</th>
<td colspan=1>
<p>Csv</p></td>
</tr>
</table>


