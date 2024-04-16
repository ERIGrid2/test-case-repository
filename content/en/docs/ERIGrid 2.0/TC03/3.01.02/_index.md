---
date: '2024-04-03'
description: Centralized cloud-based PPC for real-time supervision and control of
  PV systems
linkTitle: 3.01.02
title: Experiment Specification 3.01.02
weight: 1

---


## Experiment Specification Definition


<table>
<tr>
<th colspan=1>
ID</th>
<td colspan=1>
<p>3.01.02</p></td>
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
<p>Centralized cloud-based PPC for real-time supervision and control of PV systems</p></td>
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
<p>Real-time supervision (streaming of high-resolution smart meter and PV system data) and centralized control methods proposed in Test Specification 22.01 (immediate controls such as connection/disconnection, active power limitation and enabling control strategies) will be demonstrated using a cloud-based SCADA platform. </p><p>The PAC installed at the feeder will stream high-resolution data (1-second) acquired from the smart meter and PV system inverter to the cloud database. The implemented cloud-based dashboards will provide the interface for visualizing in real-time the acquired data and to provide centralized control functionalities (relaying control signals for immediate smart inverter active power limitation and enabling Volt-VAR or Volt-Watt operational modes).</p></td>
</tr>
<tr>
<th colspan=1>
Experiment Setup 
(concrete lab equipment)</th>
<td colspan=1>
<ul>
<li>PV system with smart inverter (SMA SB 3.0 PV inverter)</li>
<li>Smart meter (Schneider PM8000)</li>
<li>PAC (Gantner Instruments Q.Station XT)</li>
<li>RTS CHIL testbed (Typhoon HIL 604)</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Experimental Design and 
Justification</th>
<td colspan=1>
<p>The experiment entails the configuration of a PAC, installed at the DER-Grid Smart Facility feeder, to acquire and stream in real-time data from the smart meter and PV system inverter. Data acquisition will be implemented using the vendor-specific and SunSpec Modbus registers. The data streams created and stored at the PAC will be setup for real-time streaming to a centralized cloud database. </p><p>Accordingly, an online cloud-based platform comprising of different dashboards will be designed in order to demonstrate the proposed observability and interoperability concepts. More specifically, a SCADA dashboard will be created to act as the supervision interface and exhibit in real-time the measurements streamed from the underlying assets of the feeder (smart meter and inverter). Moreover, a PPC control dashboard will be developed in order to provide the user interoperability interface for enabling the PV system control signaling (set-points for immediate and localized controls).</p><p>The effectiveness of the centralized supervision and control methods will be demonstrated by enabling remotely the implemented control modes of the smart inverter through the cloud-based system. </p><p>Finally, the functional response and latency of the cloud-based supervision and control system will be further verified in a CHIL approach using a RTS testbed. The RTS testbed will be utilized in order to vary the grid condition settings (varying in real-time the reference voltage at the PCC of the feeder via SunSpec Modbus over TCP/IP and analyzing the response of the controller).</p></td>
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


