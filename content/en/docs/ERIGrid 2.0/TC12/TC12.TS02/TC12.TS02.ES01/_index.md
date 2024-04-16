---
date: '2024-04-03'
description: Co-Simulation of Electric Boiler Activation for Excess Power Consumption
  with Model-predictive Control
linkTitle: TC12.TS02.ES01
title: Experiment Specification TC12.TS02.ES01
weight: 1

---


## Experiment Specification Definition


<table>
<tr>
<th colspan=1>
ID</th>
<td colspan=1>
<p>TC12.TS02.ES01</p></td>
</tr>
<tr>
<th colspan=1>
Reference to Test Specification</th>
<td colspan=1>
<p>TC12.TS02</p></td>
</tr>
<tr>
<th colspan=1>
Title of Experiment</th>
<td colspan=1>
<p>Co-Simulation of Electric Boiler Activation for Excess Power Consumption with Model-predictive Control</p></td>
</tr>
<tr>
<th colspan=1>
Research Infrastructure</th>
<td colspan=1>
<p>N/A</p></td>
</tr>
<tr>
<th colspan=1>
Experiment Realisation</th>
<td colspan=1>
<p>The experiment is implemented as co-simulation using mosaik with a simulator synchronization step size of 15 minutes.</p><p><img src="image5.png"/></p></td>
</tr>
<tr>
<th colspan=1>
Experiment Setup 
(concrete lab equipment)</th>
<td colspan=1>
<p>Dedicated simulation components are implemented as FMUs for Co-Simulation:</p><ul>
<li>power system simulation: the power system is implemented as pandapower model, using consecutive power flow calculations to simulate the power system; the electric boilers are represented as PQ loads;</li>
<li>thermal network simulation: the local heating network and the electric boilers are modelled with Modelica (and compiled with Dymola); this model includes the proportional controllers that actuate the boilers;</li>
<li>model-predictive controller: the controller logic is implemented in Python </li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Experimental Design and 
Justification</th>
<td colspan=1>
<p>This is a basic co-simulation setup using the mosaik environment with FMUs.</p></td>
</tr>
<tr>
<th colspan=1>
Precision of equipment and measurement uncertainty</th>
<td colspan=1>
<p>N/A</p></td>
</tr>
<tr>
<th colspan=1>
Storage of experiment data</th>
<td colspan=1>
<p>The output from the individual simulation components is stored as time series data (HDF5 data format).</p></td>
</tr>
</table>


