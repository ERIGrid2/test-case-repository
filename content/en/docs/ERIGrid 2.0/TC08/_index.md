---
date: '2024-04-03'
description: Characterization of power-to-heat service availability and its impact
  on the networks
linkTitle: TC08
title: Test Case TC08
weight: 1

---


## Identification


<table>
<tr>
<th colspan=1>
ID</th>
<td colspan=1>
<p>TC08</p></td>
</tr>
<tr>
<th colspan=1>
Author</th>
<td colspan=1>
<p>Tue Jensen, Kai Heussen, Edmund Widl</p></td>
</tr>
<tr>
<th colspan=1>
Version</th>
<td colspan=1>
<p>1.0</p></td>
</tr>
<tr>
<th colspan=1>
Project</th>
<td colspan=1>
<p>SmILES, ERIGrid 2.0</p></td>
</tr>
<tr>
<th colspan=1>
Date</th>
<td colspan=1>
<p>2020-12-16</p></td>
</tr>
</table>



## Test Case Definition


<table>
<tr>
<th colspan=2>
Name of the Test Case</th>
<td colspan=1>
<p>Characterization of power-to-heat service availability and its impact on the networks</p></td>
</tr>
<tr>
<th colspan=2>
Narrative</th>
<td colspan=1>
<p>A heating network-integrated booster heat pump is used to also provide ancillary services to the electrical system. In the local electrical distribution network congestion may appear, and other flexibility options are available. </p><p>This test seeks to characterize the impact of the use of local flexibility (to relieve congestion) on the available regulating power ancillary service from a local district. The test targets a quantification of the ability of the integrated system to provide flexibility services under conflict situations. </p></td>
</tr>
<tr>
<th colspan=2>
Function(s) under Investigation (FuI)</th>
<td colspan=1>
<p>The heating system provides services to the electrical system (a) congestion management - electrical import and export limitation; and (b) ancillary service/“regulating power” provision. </p></td>
</tr>
<tr>
<th colspan=2>
Object under Investigation (OuI)</th>
<td colspan=1>
<p>The characterization concerns the Booster Heater Controller and the Electric Storage Controller in combination with the District Supervisory Controller.</p></td>
</tr>
<tr>
<th colspan=2>
Domain under Investigation (DuI)</th>
<td colspan=1>
<ul>
<li>power (low voltage distribution network)</li>
<li>heat (coupling points to thermal network)</li>
<li>control (storage and heat network control)</li>
</ul></td>
</tr>
<tr>
<th colspan=2>
Purpose of Investigation (PoI)</th>
<td colspan=1>
<p>Characterize the impact use of local flexibility on available ancillary service capacity from a local district.</p></td>
</tr>
<tr>
<th colspan=2>
System under Test (SuT)</th>
<td colspan=1>
<p><img src="image1.png"/></p><p>“PCC” denotes the point of common coupling for the district to the external networks. All units connected downstream of the respective PCCs must be considered.</p></td>
</tr>
<tr>
<th colspan=2>
Functions under Test (FuT)</th>
<td colspan=1>
<ul>
<li>electrical and heat exchange (at respective PCC)</li>
<li>electrical energy bound violation</li>
<li>total district electricity export</li>
<li>total district thermal energy import</li>
</ul></td>
</tr>
<tr>
<th colspan=3>
</th>
</tr>
<tr>
<th colspan=2>
Test criteria</th>
<td colspan=1>
<p>The TCR (test criteria) aim to quantify the resource and service conflicts: </p><p>1) the export/import from the electrical distribution network (including the respect for capacity limitations); </p><p>2) the service level at the district heating network (energy and service level violations)</p></td>
</tr>
<tr>
<td colspan=1>
</td>
<th colspan=1>
target metrics</th>
<td colspan=1>
<ul>
<li>electrical energy bound violation in MWh: given a limit  for , measure the violation via the total electrical energy consumption as</li>
<li>,</li>
</ul><p>where  is a one-sided error measure, e.g. (x)=x if x&gt;0, else x=0.</p><ul>
<li>electrical and heat exchange (at respective PCC) in MWh</li>
<li>total district electricity export in MWh</li>
<li>total district thermal energy import in MWh</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
</td>
<th colspan=1>
variability attributes</th>
<td colspan=1>
<p>Controllable factors:</p><ul>
<li>booster heater activation</li>
<li>electrical storage system activation</li>
</ul><p>Uncontrollable factors:</p><ul>
<li>demand (electrical and thermal)</li>
<li>PV generation</li>
<li>prices</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
</td>
<th colspan=1>
quality attributes</th>
<td colspan=1>
<p>N/A</p></td>
</tr>
</table>



## Qualification Strategy

<p>The PoI is addressed first using a simple implementation to verify the test concept and the functional principles, the outcome of TS01 is a preliminary characterisation of the same TCR as TS02. TS02 will then refine and validate the characterisation on a more realistic study case. </p>


