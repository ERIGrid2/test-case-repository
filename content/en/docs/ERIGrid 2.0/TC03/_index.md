---
date: '2024-04-03'
description: Real-time supervision of a photovoltaic (PV) system and control of operational
  settings for centralized active power limitation and localized voltage regulation
linkTitle: '3'
title: Test Case 3
weight: 1

---


## Identification


<table>
<tr>
<th colspan=1>
ID</th>
<td colspan=1>
<p>3</p></td>
</tr>
<tr>
<th colspan=1>
Author</th>
<td colspan=1>
<p>L. Loizou, G. Makrides, M. Kynigos, S. Theocharidis</p></td>
</tr>
<tr>
<th colspan=1>
Version</th>
<td colspan=1>
<p>1</p></td>
</tr>
<tr>
<th colspan=1>
Project</th>
<td colspan=1>
<p>ERIGrid 2.0</p></td>
</tr>
<tr>
<th colspan=1>
Date</th>
<td colspan=1>
<p>15/03/2021</p></td>
</tr>
</table>



## Test Case Definition


<table>
<tr>
<th colspan=2>
Name of the Test Case</th>
<td colspan=1>
<p>Real-time supervision of a photovoltaic (PV) system and control of operational settings for centralized active power limitation and localized voltage regulation</p></td>
</tr>
<tr>
<th colspan=2>
Narrative</th>
<td colspan=1>
<p>The integration of high shares of variable renewable energy (VRE) technologies, such as PV, is essential for decarbonizing and meeting the demands of future grids but introduces new grid operation challenges. In particular, the variability and uncertainty of solar electricity incurs serious stability and reliability issues in power system operations, rendering new power system flexibility options critical for ensuring balanced operation. To this end, the increasing amount of PV generation, especially at the distribution level, can create problems to the power system with a few of the reported consequences being rapidly varying voltage profiles and increased frequency swings that exceed design or regulated limits. This is the main reason why utility grids with large share deployment of distributed PV systems are fostering the transformation towards modern digitally-enhanced technologies that will enable the centralized observability and control of underlying distributed energy resources (DERs). In order to resolve these issues, programmable automation controllers (PACs) and PV system smart inverters have the interoperability capability to process signal operational set-points originating from centralized control and supervisory systems for immediate control and implementation of different autonomous control strategies (i.e. Fixed Power Factor, Volt-VAR, Volt-Watt and Frequency-Watt). </p><p>In particular, intelligent edge devices such as PACs can be configured to act as a PV system power plant controller (PPC) and to pass signals that originate from centralized control and supervisory cloud-based systems to smart inverters for immediate controls (connection/disconnection of system and active power limitation). </p><p>Regarding voltage regulation, the Volt-VAR mode is the most employed and discussed localized control strategy for smart inverters. This is because of the ease at which voltage regulation can be achieved by controlling the reactive power produced by the inverter. More specifically, the Volt-VAR mode provides dynamic reactive power output (absorption or injection) through responses to voltage measurements. The reactive power output follows a specified Volt-VAR response (characteristic curve) which typically would have a dead-band around the target voltage where no reactive power is injected or absorbed. In contrast to current practises of enabling localized smart inverter controls through manual methods and on-site visits, the localized Volt-VAR control strategy can be implemented by enabling the function and setting the characteristic curve points through the centralized control and supervisory cloud-based dashboard. The set-points are then transferred to the PAC that processes and relays the control function to the smart inverter (signalling responses based on SunSpec and IEC 61850). </p><p>Another localized voltage regulation control mode is Volt-Watt. This control mode is applicable only to feeders with extreme over-voltage profiles and may also be enabled to operate in conjunction with the commonly applied Volt-VAR mode. Specifically, the rate of active power reduction is determined by the slope of the characteristic curve of set-points based on the voltage at the point of common coupling (PCC). To this end, this control strategy can be remotely enabled (configured at the centralized control and supervisory cloud-based dashboard) and set to the smart inverter (PAC processes control information and sets the control mode to the smart inverter) to provide active power reduction in case of voltage rises at the PCC, beyond National grid code levels. </p><p>In the occurrence of fault communication conditions (loss of cloud connectivity) the PAC is set to remain/switch to the Volt-VAR autonomous control mode (fallback settings in the absence of cloud connectivity).  </p><p>The aim of this test case is to investigate coordinated real-time supervision and control strategies provided by cloud-based systems, PAC and SunSpec compliant smart inverters, for centralized active power limitation and localized voltage regulation. </p></td>
</tr>
<tr>
<th colspan=2>
Function(s) under Investigation (FuI)</th>
<td colspan=1>
<p>PV system centralized active power limitation and enabling localized reactive and active power control for voltage regulation.</p></td>
</tr>
<tr>
<th colspan=2>
Object under Investigation (OuI)</th>
<td colspan=1>
<p>PV system connected to a smart inverter (SunSpec compliant) that can receive automated control signals through the use of a PAC. The PAC processes real-time signals (set-points for immediate and localized controls) originating from a centralized control and supervisory cloud-based system. </p></td>
</tr>
<tr>
<th colspan=2>
Domain under Investigation (DuI)</th>
<td colspan=1>
<ul>
<li>Electrical power system</li>
<li>Control</li>
<li>ICT</li>
</ul></td>
</tr>
<tr>
<th colspan=2>
Purpose of Investigation (PoI)</th>
<td colspan=1>
<p>Design of a cloud-based PV PPC capable of providing automated ancillary services by taking advantage of the smart inverter abilities for immediate control (active power limitation) and to perform the Volt-VAR and Volt-Watt control modes for voltage regulation.</p></td>
</tr>
<tr>
<th colspan=3>
</th>
</tr>
<tr>
<th colspan=2>
System under Test (SuT)</th>
<td colspan=1>
<p>The SuT is composed of the following components:</p><ul>
<li>PV system</li>
<li>Smart Inverter</li>
<li>PAC </li>
<li>Cloud-based database and SCADA platform</li>
</ul></td>
</tr>
<tr>
<th colspan=2>
Functions under Test (FuT)</th>
<td colspan=1>
<ul>
<li>Real-time signalling effectiveness of centralized control and supervisory cloud-based system for PV system active power limitation (active power limitation signals originating from the cloud are communicated to the PAC that acts as an edge device PPC. The PAC processes the signals and passes them to the inverter) </li>
<li>Volt-VAR and Volt-Watt localized control effectiveness for the provision of ancillary services (voltage regulation) from PV systems using smart inverter functionalities. The set-points of the characteristic curves are implemented at the cloud-based system dashboard and then relayed to the smart inverter via the PAC. </li>
</ul></td>
</tr>
<tr>
<th colspan=3>
</th>
</tr>
<tr>
<th colspan=2>
Test criteria (TCR)</th>
<td colspan=1>
<ul>
<li>Effectiveness of centralized control and supervisory cloud-based system to interoperate with on-site PPCs and smart inverters for real-time supervision and relaying of control set-points (immediate controls such as connection/disconnection, active power limitation and enabling control strategies)</li>
<li>Effectiveness of Volt-VAR localized control mode in controlling reactive power to regulate voltage (voltage levels within grid code limits at PCC)</li>
<li>Effectiveness of Volt-Watt localized control mode in controlling active power to regulate voltage (voltage levels within grid code limits at PCC)</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
</td>
<th colspan=1>
Target Metrics (TM)</th>
<td colspan=1>
<ul>
<li>Voltage deviation </li>
<li>Active power curtailment</li>
<li>Reactive power injection/absorption</li>
<li>Interoperability of PV inverter with the centralized control signals originating from the control and supervision cloud-based (communication effectiveness and latency of response)  </li>
</ul></td>
</tr>
<tr>
<td colspan=1>
</td>
<th colspan=1>
Variability Attributes (VA)</th>
<td colspan=1>
<ul>
<li>PV inverter immediate control and active and reactive power set-points</li>
<li>Control methods</li>
<li>Interoperability methods</li>
<li>Voltage limit set-points</li>
<li>Rate of increase/decrease of reactive or active power injection/absorption and limitation, respectively </li>
</ul></td>
</tr>
<tr>
<td colspan=1>
</td>
<th colspan=1>
Quality Attributes (QA)</th>
<td colspan=1>
<ul>
<li>Voltage staying within a specific range (±10%)</li>
<li>Control method reaction time latency (&lt;3 seconds)</li>
</ul></td>
</tr>
</table>



## Qualification Strategy

<p>The implementation plan to meet the Purpose of Investigation (PoI) is to first design and simulate the PV power plant providing ancillary services, through different control methods, using the EMTP software offline and investigate whether the voltage is maintained within the predefined limits. Subsequently, the control model designs will be transferred to the real time simulator (RTS) for high fidelity control hardware-in-the-loop (CHIL) validation and verification. Finally, the test case will be demonstrated on a test-bench PV system that includes a smart inverter and controller using a PAC that processes signals that originate from a centralized control and supervision cloud-based system.</p>


