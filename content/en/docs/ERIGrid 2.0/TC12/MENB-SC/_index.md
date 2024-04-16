---
date: '2024-04-03'
description: 'System configuration for the multi-energy network benchmark '
linkTitle: MENB-SC
title: System Configuration MENB-SC
weight: 10

---


## Document History


<table>
<tr>
<th colspan=4>
Document History</th>
</tr>
<tr>
<th colspan=1>
Date</th>
<th colspan=1>
Version</th>
<th colspan=1>
Description</th>
<th colspan=1>
Author</th>
</tr>
<tr>
<td colspan=1>
<p>2021-03-23</p></td>
<td colspan=1>
<p>0.1</p></td>
<td colspan=1>
<p>First draft version</p></td>
<td colspan=1>
<p>Edmund Widl (AIT)</p></td>
</tr>
<tr>
<td colspan=1>
<p>2021-05-17</p></td>
<td colspan=1>
<p>0.2</p></td>
<td colspan=1>
<p>Add quasi-static thermal network system configuration</p></td>
<td colspan=1>
<p>Christopher Wild (DTU)</p></td>
</tr>
<tr>
<td colspan=1>
<p>2021-09-01</p></td>
<td colspan=1>
<p>0.3</p></td>
<td colspan=1>
<p>Add additional information for the electric network configuration</p></td>
<td colspan=1>
<p>Tran The Hoang (CEA)</p></td>
</tr>
<tr>
<td colspan=1>
<p>2021-11-19</p></td>
<td colspan=1>
<p>1.0</p></td>
<td colspan=1>
<p>Update system configuration to the final implemented benchmark setup</p></td>
<td colspan=1>
<p>Edmund Widl (AIT)</p></td>
</tr>
<tr>
<td colspan=1>
<p>2022-11-11</p></td>
<td colspan=1>
<p>1.1</p></td>
<td colspan=1>
<p>Adapt to ERIGrid 2.0 SC template:</p><ul>
<li>focus on testing / simulation</li>
<li>make template parseable</li>
<li>improved SBD</li>
</ul></td>
<td colspan=1>
<p>Edmund Widl (AIT)</p></td>
</tr>
</table>



## System Configuration Identification


<table>
<tr>
<th colspan=2>
System Configuration Identification</th>
</tr>
<tr>
<th colspan=1>
System configuration ID [ID]</th>
<th colspan=1>
Name</th>
</tr>
<tr>
<td colspan=1>
<p>MENB-SC</p></td>
<td colspan=1>
<p>System configuration for the multi-energy network benchmark </p></td>
</tr>
</table>



## Short Description of Context


<table>
<tr>
<th colspan=1>
Short Description of Context</th>
</tr>
<tr>
<th colspan=1>
Context description</th>
</tr>
<tr>
<td colspan=1>
<p>The system configuration described in this document has been developed as part of a reference setup for multi-domain energy network simulations. This reference setup intends to inspire the use of co-simulation for the assessment of multi-energy systems.</p><p>The level of detail was chosen in a way that allows to apply different modelling approaches for the individual subsystems. For instance, the thermal network could be implemented either in a quasi-static model (series of equilibrium states) or a dynamic model (hydraulic transients).</p><p>The system configuration resembles part of the sub-urban area of a typical Central European city. The climate is typical for Central Europe with its moderately warm summers and cold winters. Solar irradiation ranges between 800 and 1200 kWh/m². Ambient ground temperature is constant at 8°C.</p></td>
</tr>
<tr>
<th colspan=1>
Key figures</th>
</tr>
<tr>
<td colspan=1>
<ul>
<li>electrical network: 2 consecutive lines (0.3 km each), connected to external grid</li>
<li>thermal network: 3 main consecutive pipes (supply and return, 0.5 km each), connected to external grid</li>
<li>power-to-heat facility: 1 heat pump (max. 100 kWel) connected to a thermal tank (100 m3) feeding into the thermal network</li>
<li>consumption: 2 consumers, each representing the aggregated loads (electrical and thermal) of an urban quarter and connected to both networks</li>
<li>generation: 2 PV systems (one of 150 kWel, peak and one of 50 kWel, peak)</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Keywords</th>
</tr>
<tr>
<td colspan=1>
<ul>
<li>local consumption of high PV generation</li>
<li>decentralized heat generation</li>
<li>heat pumps</li>
<li>coupled heat and electric networks</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Ontology / namespace (optional)</th>
</tr>
<tr>
<td colspan=1>
<p>N/A</p></td>
</tr>
</table>



## System Breakdown Diagram


<table>
<tr>
<th colspan=1>
System Breakdown Diagram</th>
</tr>
<tr>
<td colspan=1>
<p><img src="image1.png"/></p></td>
</tr>
</table>



## Graphical Representation of System Configuration


<table>
<tr>
<th colspan=1>
Graphical Representation of System Configuration</th>
</tr>
<tr>
<th colspan=1>
Overview</th>
</tr>
<tr>
<td colspan=1>
<p><img src="image2.png"/></p></td>
</tr>
<tr>
<th colspan=1>
Electrical Grid (detailed view)</th>
</tr>
<tr>
<td colspan=1>
<p><img src="image3.png"/></p></td>
</tr>
<tr>
<th colspan=1>
Thermal grid (detailed view):</th>
</tr>
<tr>
<td colspan=1>
<p><img src="image4.png"/></p></td>
</tr>
</table>



## Terminal Description


<table>
<tr>
<th colspan=5>
Terminal Description</th>
</tr>
<tr>
<th colspan=1>
Name</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Type of exchange</th>
<th colspan=1>
Connected component classes</th>
<th colspan=1>
Comment</th>
</tr>
<tr>
<td colspan=1>
<p>Heat connector</p></td>
<td colspan=1>
<p>Heat-Connection</p></td>
<td colspan=1>
<p>heat flow 
(water mass flow)</p></td>
<td colspan=1>
<p>ExternalElectricGrid, Line, Busbar, Load, PVSystem, HeatPump</p></td>
<td colspan=1>
<p>connects components of the thermal network</p></td>
</tr>
<tr>
<td colspan=1>
<p>Electric power connector</p></td>
<td colspan=1>
<p>Electric-Connection</p></td>
<td colspan=1>
<p>electric power flow (electric current)</p></td>
<td colspan=1>
<p>ExternalThermalGrid, Pipe, Junction, Bypass, HeatExchanger, Tank, HeatPump, Pump</p></td>
<td colspan=1>
<p>connects components of the electrical network</p></td>
</tr>
<tr>
<td colspan=1>
<p>Measurement connector</p></td>
<td colspan=1>
<p>Measure-Connection</p></td>
<td colspan=1>
<p>measurement exchange (communicationsignal) </p></td>
<td colspan=1>
<p>Bus, Tank, HeatPump, VoltageController, FlexHeatController</p></td>
<td colspan=1>
<p>connects sensors with controllers via a communication link</p></td>
</tr>
<tr>
<td colspan=1>
<p>Control connector</p></td>
<td colspan=1>
<p>Ctrl-Connection</p></td>
<td colspan=1>
<p>control signal exchange (communicationsignal)</p></td>
<td colspan=1>
<p>Pump, HeatPump, VoltageController, FlexHeatController</p></td>
<td colspan=1>
<p>connects controllers with actuators via a communication link</p></td>
</tr>
</table>



## Component descriptions



### ElectricNetwork


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>ElectricNetwork</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>MENB-SC</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents an electric distribution network. It contains interconnected components with the purpose of delivering electricity to the consumers.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>The electrical network’s actual functionality is determined by its components. This class serves as logical unit containing these components and has itself no functionality.</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>-</p></td>
<td colspan=1>
<p>-</p></td>
<td colspan=1>
<p>-</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>el_net</p></td>
<td colspan=2>
<p>-</p></td>
</tr>
</table>

### ExternalElectricGrid


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>1.1</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>ExternalElectricGrid</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>el_net</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a connection to an external electrical grid supplying the local electrical distribution network.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>The external grid controls the voltage and the phase angle of the busbar to which it is connected.</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<ul>
<li>f (float) - Nominal frequency [Hz]</li>
<li>vn (float) - Nominal voltage [kV]</li>
</ul></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>plug_ext</p></td>
<td colspan=1>
<p>ElectricConnection</p></td>
<td colspan=1>
<p>connection point of the electrical distribution network to the external grid</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>ext_el_grid</p></td>
<td colspan=2>
<ul>
<li>f [Hz]: 220</li>
<li>vn [kV]: 0.4</li>
</ul></td>
</tr>
</table>

### Line


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>1.2</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>Line</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>el_net</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a power line of an electrical distribution network.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>The power lines transport electricity between the busbars of an electrical network.</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<ul>
<li>l (float): line length [km]</li>
<li>r (float): resistance [Ω/km] </li>
<li>x (float): reactance [Ω/km]</li>
<li>c (float): capacitance [nF/km]</li>
<li>max_i (float): rated current [kA]</li>
</ul></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>plug_line_a</p></td>
<td colspan=1>
<p>ElectricConnection</p></td>
<td colspan=1>
<p>connection to a bus of the electrical distribution network on one side of the power line</p></td>
</tr>
<tr>
<td colspan=1>
<p>plug_line_b</p></td>
<td colspan=1>
<p>ElectricConnection</p></td>
<td colspan=1>
<p>connection to a bus of the electrical distribution network on other side of the power line</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>line_1</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.3</li>
<li>r [Ω/km]: 0.306</li>
<li>x [Ω/km]: 0.29</li>
<li>c [nF/km]: 13.2</li>
<li>max_i [kA]: 0.35</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>line_2</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.3</li>
<li>r [Ω/km]: 0.306</li>
<li>x [Ω/km]: 0.29</li>
<li>c [nF/km]: 13.2</li>
<li>max_i [kA]: 0.35</li>
</ul></td>
</tr>
</table>

### Busbar


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>1.3</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>Busbar</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>el_net</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents an electrical busbar used in substations for local power distribution.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>The electrical busbars connect the components of the electrical network (lines, loads, PV systems).</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<ul>
<li>vn (float) - nominal voltage [kV]</li>
</ul></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>plug_bus</p></td>
<td colspan=1>
<p>ElectricConnection</p></td>
<td colspan=1>
<p>connection point to other components (lines, loads, PV systems) of the electrical distribution network</p></td>
</tr>
<tr>
<td colspan=1>
<p>meas_voltage_pu</p></td>
<td colspan=1>
<p>MeasureConnection</p></td>
<td colspan=1>
<p>voltage measurement (for the voltage controller) [p.u.]</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>bus_1</p></td>
<td colspan=2>
<ul>
<li>vn [kV]: 0.4</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>bus_2</p></td>
<td colspan=2>
<ul>
<li>vn [kV]: 0.4</li>
</ul></td>
</tr>
</table>

### Load


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>1.4</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>Load</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>el_net</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a component of the electrical network that consumes (active) electric power.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>3</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>Each load represents an aggregation of the (active) power consumption of several consumers (e.g., households connected to an LV feeder).</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<ul>
<li>vn (float): nominal voltage [kV]</li>
<li>p (float): nominal active power consumption [kW]</li>
</ul></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>plug_load</p></td>
<td colspan=1>
<p>ElectricConnection</p></td>
<td colspan=1>
<p>connection to a bus of the electrical distribution network through which power is consumed</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>load_1</p></td>
<td colspan=2>
<ul>
<li>vn [kV]: 0.4</li>
<li>p [kW]: 120</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>load_2</p></td>
<td colspan=2>
<ul>
<li>vn [kV]: 0.4 </li>
<li>p [kW]: 45</li>
</ul></td>
</tr>
</table>

### PVSystem


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>1.5</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>PVSystem</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>el_net</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a PV system comprising several PV panels.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>The PV systems generates electrical power and supplies it to the electrical distribution network via a busbar connection. Its generation profile is independent of the network conditions.</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<ul>
<li>P_peak (float): peak production [kW]</li>
</ul></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>plug_pv</p></td>
<td colspan=1>
<p>ElectricConnection</p></td>
<td colspan=1>
<p>connection to a bus of the electrical distribution network through which the generated power is delivered to the electrical network</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>pv_1</p></td>
<td colspan=2>
<ul>
<li>P_peak [kW]: 150</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pv_2</p></td>
<td colspan=2>
<ul>
<li>P_peak [kW]: 50</li>
</ul></td>
</tr>
</table>

### ThermalNetwork


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>ThermalNetwork</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>MENB-SC</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents the thermal network that delivers a mass flow of hot water to satisfy the heat demand of the connected consumers.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>The thermal network’s actual functionality is mostly determined by its components. This class serves as logical unit containing these components and has itself no functionality.</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>-</p></td>
<td colspan=1>
<p>-</p></td>
<td colspan=1>
<p>-</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>th_net</p></td>
<td colspan=2>
<p>-</p></td>
</tr>
</table>

### ExternalThermalGrid


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>2.1</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>ExternalThermalGrid</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>th_net</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a connection to an external higher-level thermal network supplying the local thermal network.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>The external thermal network acts as a pressure source with a prescribed supply temperature. It is considered an ideal heating unit without any constraints regarding mass flow or ramp rates.</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<ul>
<li>p_ext (float): pressure of the external thermal network [bar]</li>
<li>T_supply_ext (float): nominal supply temperature [°C]</li>
</ul></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>flange_supply</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>supply line connection to external thermal grid</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_return</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>return line connection to external thermal grid</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>ext_th_grid</p></td>
<td colspan=2>
<ul>
<li>p_ext [bar]: 6</li>
<li>T_supply_ext [°C]: 75</li>
</ul></td>
</tr>
</table>

### Pipe


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>2.2</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>Pipe</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>th_net</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a straight pipe with constant cross section used to transport water within the thermal network.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>14 (7x supply, 7x return)</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>Determines the transport effects (pressure drop, flow delays, etc.) for a mass flow based on hydraulic principles. Depending on the insulation of the pipe and the surrounding temperature, the temperature of the water transported through the pipe changes.  </p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<ul>
<li>l (float): pipe length [km]</li>
<li>d (float): pipe diameter [m]</li>
<li>alpha (float): heat transfer coefficient [Wm-2K-1]</li>
<li>k (float): roughness of pipe material [mm]</li>
</ul></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>flange_a</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>connection to another component of the thermal network on one side of the pipe</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_b</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>connection to another component of the thermal network on other side of the pipe</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>pipe_1_supply</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.5</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_1_return</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.5</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_2_supply</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.5</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_2_return</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.5</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_4_supply</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.5</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_4_return</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.5</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_tank_supply</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.01</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_tank_return</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.01</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_3_supply</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.01</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_3_return</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.01</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_5_supply</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.01</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_5_return</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.01</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_6_supply</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.01</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>pipe_6_return</p></td>
<td colspan=2>
<ul>
<li>l [km]: 0.01</li>
<li>d [m]: 0.1</li>
<li>alpha [Wm-2K-1]: 1.5</li>
<li>k [mm]: 0.01</li>
</ul></td>
</tr>
</table>

### Junction


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>2.3</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>Junction</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>th_net</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a tee junction for connecting three pipes.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>6</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>Used either for splitting the mass flow from a single pipe into separate mass flows of two pipes of or joining mass flows from two separate pipes into a single mass flow for one pipe. Splitting/joining follows basic hydraulic rules (e.g., mass conservation).</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>flange_1</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>connection to pipe 1</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_2</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>connection to pipe 2</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_3</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>connection to pipe 3</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>junction_1_supply</p></td>
<td colspan=2>
<p>(branch-off from supply line to consumers)</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_2_supply</p></td>
<td colspan=2>
<p>(branch-off from supply line to consumers)</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_1_return</p></td>
<td colspan=2>
<p>branch-off from return line to consumers</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_2_return</p></td>
<td colspan=2>
<p>branch-off from return line to consumers</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_tank_supply</p></td>
<td colspan=2>
<p>branch-off from supply line to tank</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_tank_return</p></td>
<td colspan=2>
<p>branch-off from return line to tank</p></td>
</tr>
</table>

### HeatExchanger


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>2.4</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>HeatExchanger</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>th_net</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a heat exchanger acting as an aggregated heat consumer in the thermal network.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>The heat exchanger is fed with hot water from the thermal network’s supply line. The mass flow through the heat exchanger is adjusted to reach a pre-defined return temperature, depending on the current heat demand from the aggregated consumer.</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<p>T_return_target (float): set-point for return temperature [°C]</p></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>flange_supply</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>inlet of heat exchanger from supply line</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_return</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>outlet of heat exchanger to return line</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>hex_1</p></td>
<td colspan=2>
<ul>
<li>T_return_target [°C]: 40</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
<p>hex_2</p></td>
<td colspan=2>
<ul>
<li>T_return_target [°C]: 40</li>
</ul></td>
</tr>
</table>

### Bypass


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>2.5</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>Bypass</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>th_net</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents the bypass of the thermal network.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>Ideal valve that allows to regulate the water mass flow from the supply line to the return line independently of the consumers.</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>flange_supply</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>inlet of bypass from supply line</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_return</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>outlet of bypass to return line</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>bypass</p></td>
<td colspan=2>
<p>-</p></td>
</tr>
</table>

### PowerToHeatFacility


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>3</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>PowerToHeatFacility</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>MENB-SC</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a power-to-heat facility comprising a heat pump connected to a thermal tank, which feeds into the thermal network’s supply line to support its operation. By consuming local excess PV generation, the power-to-heat facility can be used at the same time to improve the stability of the electrical network and support the supply of the thermal network. Its components are actuated by the flex heat controller.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>The power-to-heat facility’s actual functionality is determined by its components. This class serves as logical unit containing these components and has itself no functionality.</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>-</p></td>
<td colspan=1>
<p>-</p></td>
<td colspan=1>
<p>-</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>p2h</p></td>
<td colspan=2>
<p>-</p></td>
</tr>
</table>

### HeatPump


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>3.1</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>HeatPump</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>p2h</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a heat pump with constant condenser output temperature.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>The source for the evaporator is the thermal network’s return line. The condenser’s output is fed to the thermal storage tank.</p></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<ul>
<li>P_rated_max (float): electrical power rating of compressor [kWel]</li>
<li>P_rated_min (float): minimal electrical power consumption for operating the compressor [kWel]</li>
<li>P_0 (float): electrical stand-by power consumption [kWel]</li>
<li>T_evap_min (float): minimal evaporator outlet temperature [°C]</li>
<li>T_cond_max (float): maximum condenser outlet temperature [°C]</li>
<li>T_cond_target (float): condenser outlet temperature setpoint [°C]</li>
<li>eta_sys (float): ratio between work provided by the pump and available thermodynamic work [-]</li>
<li>eta_comp (float): compressor efficiency [-]</li>
<li>lambda_comp (float): compressor time constant [s-1]</li>
</ul></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>plug_load</p></td>
<td colspan=1>
<p>ElectricConnection</p></td>
<td colspan=1>
<p>connection to a bus of the electrical distribution network through which power is consumed</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_evap_in</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>inlet of heat pump evaporator from return line</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_evap_out</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>outlet of heat pump evaporator to return line</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_cond_in</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>inlet of heat pump condenser from tank</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_cond_out</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>outlet of heat pump condenser to tank</p></td>
</tr>
<tr>
<td colspan=1>
<p>meas_p_el</p></td>
<td colspan=1>
<p>MeasureConnection</p></td>
<td colspan=1>
<p>measurement of electrical power consumption (for flex heat controller) [kWel]</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>hp</p></td>
<td colspan=2>
<ul>
<li>P_rated [kWel]: 100</li>
<li>P_0 [kWel]: 0.3</li>
<li>T_evap_min [°C]: 20</li>
<li>T_cond_max [°C]: 85</li>
<li>T_cond_target [°C]: 75</li>
<li>eta_sys [-]: 0.5</li>
<li>eta_comp [-]: 0.7</li>
<li>lambda_comp [s-1]: 0.2</li>
</ul></td>
</tr>
</table>

### Tank


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>3.2</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>Tank</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>p2h</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a stratified hot water storage tank.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>The tank has two hydraulic loops (also see pumps below):</p><ul>
<li>cold water is drawn from the bottom of the tank, heated up by the heat pump and fed back at the top of the tank</li>
<li>hot water is drawn from the top of the tank and fed to the heating network’s supply line; simultaneously an equal amount of cold water is drawn from the heating network’s return line to refill the tank</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<ul>
<li>V (float): tank volume [m3]</li>
<li>h (float): height of tank (without insulation) [m]</li>
<li>d (float): thickness of insulation [m]</li>
<li>k (float): specific heat conductivity of insulation [Wm-1K-1]</li>
<li>N (int): number of volume segments [-]</li>
</ul></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>flange_tank_supply</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>hot water outlet of tank to supply line</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_tank_return</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>cold water inlet from return line to tank</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_hp_out</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>cold water outlet from tank to heat pump condenser</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_hp_in</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>hot water inlet from heat pump condenser to tank</p></td>
</tr>
<tr>
<td colspan=1>
<p>meas_temp</p></td>
<td colspan=1>
<p>MeasureConnection</p></td>
<td colspan=1>
<p>tank temperature measurement (for flex heat controller) [°C]</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>tank</p></td>
<td colspan=2>
<ul>
<li>V [m3]: 100</li>
<li>h [m]: 9.2</li>
<li>d [m]: 0.1</li>
<li>k [Wm-1K-1]: 0.03</li>
<li>N [-]: 10</li>
</ul></td>
</tr>
</table>

### Pump


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>3.3</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>Pump</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>p2h</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a water pump with prescribed mass flow rate.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<p>Ideal water pump that generates a mass flow according to the setpoint. Moves the water in the following loops of the power-to-heat facility:</p><ul>
<li>condenser loop: pump hot water from the heat pump condenser to the tank</li>
<li>network support loop: pump hot water from the tank to the supply line</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>flange_in</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>pump inlet</p></td>
</tr>
<tr>
<td colspan=1>
<p>flange_out</p></td>
<td colspan=1>
<p>HeatConnection</p></td>
<td colspan=1>
<p>pump outlet</p></td>
</tr>
<tr>
<td colspan=1>
<p>setpoint_mflow</p></td>
<td colspan=1>
<p>CtrlConnection</p></td>
<td colspan=1>
<p>set-point for pump mass flow (from flex heat controller)</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>pump_cond</p></td>
<td colspan=2>
<p>pump for tank charging loop</p></td>
</tr>
<tr>
<td colspan=1>
<p>pump_tank</p></td>
<td colspan=2>
<p>pump for tank discharging loop</p></td>
</tr>
</table>

### Controller


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>4</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>Controller</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>MENB-SC</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element serves as parent class for concrete controller implementations.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<ul>
<li>Controllers govern the operation of the system.</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>-</p></td>
<td colspan=1>
<p>-</p></td>
<td colspan=1>
<p>-</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>-</p></td>
<td colspan=2>
<p>-</p></td>
</tr>
</table>

### VoltageController


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>4.1</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>VoltageController</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>Controller</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a voltage controller in the electrical distribution network.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<ul>
<li>This controller monitors the voltage at bus_1 and proposes a power consumption setpoint for the heat pump (controllable/flexible load) to keep the voltage within acceptable limits.</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<ul>
<li>delta_vm_up (float): upper threshold for turning off the heat pump [p.u.]</li>
<li>delta_vm_low_hp_on (float): lower threshold for turning on the heat pump [p.u.]</li>
<li>delta_vm_low_hp_off (float): lower threshold for turning off the heat pump [p.u.]</li>
<li>delta_vm_deadband (float): deadband size [p.u.]</li>
<li>hp_p_el_mw_min (float): minimum operating point (minimal allowed power consumption) of heat pump [MWe]</li>
<li>k_p (float): the controller's proportional term [-]</li>
</ul></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>meas_voltage_pu</p></td>
<td colspan=1>
<p>MeasureConnection</p></td>
<td colspan=1>
<p>voltage measurement at bus_1 [p.u.]</p></td>
</tr>
<tr>
<td colspan=1>
<p>setpoint_hp_p_el</p></td>
<td colspan=1>
<p>CtrlConnection</p></td>
<td colspan=1>
<p>proposed heat pump setpoint for electrical consumption [MWel]</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>voltage_ctrl</p></td>
<td colspan=2>
<ul>
<li>delta_vm_up [p.u.]: 0.1</li>
<li>delta_vm_low_hp_on [p.u.]: – 0.1</li>
<li>delta_vm_low_hp_off [p.u.]: – 0.08</li>
<li>delta_vm_deadband [p.u.]: 0.03</li>
<li>hp_p_el_mw_min [kWel]: 35</li>
<li>k_p [-]: 0.15</li>
</ul></td>
</tr>
</table>

### FlexHeatController


<table>
<tr>
<th colspan=3>
Component description</th>
</tr>
<tr>
<th colspan=1>
Tag in SBD</th>
<td colspan=2>
<p>4.2</p></td>
</tr>
<tr>
<th colspan=1>
Level in SBD</th>
<td colspan=2>
<p>2</p></td>
</tr>
<tr>
<th colspan=1>
Class ID</th>
<td colspan=2>
<p>FlexHeatController</p></td>
</tr>
<tr>
<th colspan=1>
Parent class</th>
<td colspan=2>
<p>Controller</p></td>
</tr>
<tr>
<th colspan=1>
Contained in</th>
<td colspan=2>
<p>-</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=2>
<p>This element represents a dedicated controller for operating the power-to-heat facility.</p></td>
</tr>
<tr>
<th colspan=1>
Number of components in SC</th>
<td colspan=2>
<p>1</p></td>
</tr>
<tr>
<th colspan=3>
Attributes</th>
</tr>
<tr>
<th colspan=1>
Functionality</th>
<td colspan=2>
<ul>
<li>The flex heat controller decides whether the heat supply is covered entirely through the external grid or whether the power-to-heat facility supports by discharging the tank. If required, the heat pump is used to charge the tank, taking into account the power consumption threshold from the voltage controller (i.e., the power consumption never exceeds the setpoint, but may be less).</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Physical characteristics</th>
<td colspan=2>
<ul>
<li>T_tank_max (float): maximum tank temperature [°C]</li>
<li>T_tank_min (float): minimum tank temperature [°C]</li>
<li>mdot_tank_out_setpoint (float): setpoint for tank discharge mass flow rate [kg/s]</li>
</ul></td>
</tr>
<tr>
<th colspan=3>
Terminals</th>
</tr>
<tr>
<th colspan=1>
Terminal ID</th>
<th colspan=1>
Type ID</th>
<th colspan=1>
Description</th>
</tr>
<tr>
<td colspan=1>
<p>meas_tank_temp</p></td>
<td colspan=1>
<p>MeasureConnection</p></td>
<td colspan=1>
<p>measurement of tank temperature [°C]</p></td>
</tr>
<tr>
<td colspan=1>
<p>meas_hp_p_el</p></td>
<td colspan=1>
<p>MeasureConnection</p></td>
<td colspan=1>
<p>measurement of electrical power consumption of heat pump [kWel]</p></td>
</tr>
<tr>
<td colspan=1>
<p>setpoint_hp_p_el</p></td>
<td colspan=1>
<p>CtrlConnection</p></td>
<td colspan=1>
<p>setpoint for power consumption of heat pump from voltage controller [MWel]</p></td>
</tr>
<tr>
<td colspan=1>
<p>setpoint_tank_mflow</p></td>
<td colspan=1>
<p>CtrlConnection</p></td>
<td colspan=1>
<p>setpoint for tank discharge mass flow [kg/s]</p></td>
</tr>
<tr>
<td colspan=1>
<p>setpoint_cond_mflow</p></td>
<td colspan=1>
<p>CtrlConnection</p></td>
<td colspan=1>
<p>setpoint for heat pump condenser mass flow [kg/s]</p></td>
</tr>
<tr>
<th colspan=3>
Instances</th>
</tr>
<tr>
<th colspan=1>
Instance ID</th>
<th colspan=2>
Instance parameterization</th>
</tr>
<tr>
<td colspan=1>
<p>flex_heat_ctrl</p></td>
<td colspan=2>
<ul>
<li>T_tank_max [°C]: 72</li>
<li>T_tank_min [°C]: 65</li>
</ul></td>
</tr>
</table>



## Connection points


<table>
<tr>
<th colspan=4>
Connection points</th>
</tr>
<tr>
<th colspan=1>
Connection from
component</th>
<th colspan=1>
Connection from
terminal</th>
<th colspan=1>
Connection from
component</th>
<th colspan=1>
Connection from
terminal</th>
</tr>
<tr>
<td colspan=1>
<p>ext_el_grid</p></td>
<td colspan=1>
<p>plug_ext</p></td>
<td colspan=1>
<p>line_1</p></td>
<td colspan=1>
<p>plug_line_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>bus_1</p></td>
<td colspan=1>
<p>plug_bus</p></td>
<td colspan=1>
<p>line_1</p></td>
<td colspan=1>
<p>plug_line_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>bus_1</p></td>
<td colspan=1>
<p>plug_bus</p></td>
<td colspan=1>
<p>line_2</p></td>
<td colspan=1>
<p>plug_line_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>bus_1</p></td>
<td colspan=1>
<p>plug_bus</p></td>
<td colspan=1>
<p>load_1</p></td>
<td colspan=1>
<p>plug_load</p></td>
</tr>
<tr>
<td colspan=1>
<p>bus_1</p></td>
<td colspan=1>
<p>plug_bus</p></td>
<td colspan=1>
<p>hp</p></td>
<td colspan=1>
<p>plug_load </p></td>
</tr>
<tr>
<td colspan=1>
<p>bus_1</p></td>
<td colspan=1>
<p>plug_bus</p></td>
<td colspan=1>
<p>pv_1</p></td>
<td colspan=1>
<p>plug_pv</p></td>
</tr>
<tr>
<td colspan=1>
<p>bus_2</p></td>
<td colspan=1>
<p>plug_bus</p></td>
<td colspan=1>
<p>line_2</p></td>
<td colspan=1>
<p>plug_line_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>bus_2</p></td>
<td colspan=1>
<p>plug_bus</p></td>
<td colspan=1>
<p>load_2</p></td>
<td colspan=1>
<p>plug_load</p></td>
</tr>
<tr>
<td colspan=1>
<p>bus_2</p></td>
<td colspan=1>
<p>plug_bus</p></td>
<td colspan=1>
<p>pv_2</p></td>
<td colspan=1>
<p>plug_pv</p></td>
</tr>
<tr>
<td colspan=1>
<p>ext_th_grid</p></td>
<td colspan=1>
<p>flange_supply</p></td>
<td colspan=1>
<p>pipe_1_supply</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>ext_th_grid</p></td>
<td colspan=1>
<p>flange_return</p></td>
<td colspan=1>
<p>pipe_1_return</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_tank_supply</p></td>
<td colspan=1>
<p>flange_1</p></td>
<td colspan=1>
<p>pipe_1_supply</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_tank_supply</p></td>
<td colspan=1>
<p>flange_2</p></td>
<td colspan=1>
<p>pipe_tank_supply</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_tank_supply</p></td>
<td colspan=1>
<p>flange_3</p></td>
<td colspan=1>
<p>pipe_2_supply</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_tank_return</p></td>
<td colspan=1>
<p>flange_1</p></td>
<td colspan=1>
<p>pipe_2_return</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_tank_return</p></td>
<td colspan=1>
<p>flange_2</p></td>
<td colspan=1>
<p>pipe_tank_return</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_tank_return</p></td>
<td colspan=1>
<p>flange_3</p></td>
<td colspan=1>
<p>hp</p></td>
<td colspan=1>
<p>flange_evap_in</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_1_supply</p></td>
<td colspan=1>
<p>flange_1</p></td>
<td colspan=1>
<p>pipe_2_supply</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_1_supply</p></td>
<td colspan=1>
<p>flange_2</p></td>
<td colspan=1>
<p>pipe_3_supply</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_1_supply</p></td>
<td colspan=1>
<p>flange_3</p></td>
<td colspan=1>
<p>pipe_4_supply</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_1_return</p></td>
<td colspan=1>
<p>flange_1</p></td>
<td colspan=1>
<p>pipe_4_return</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_1_return</p></td>
<td colspan=1>
<p>flange_2</p></td>
<td colspan=1>
<p>pipe_3_return</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_1_return</p></td>
<td colspan=1>
<p>flange_3</p></td>
<td colspan=1>
<p>pipe_2_return</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_2_supply</p></td>
<td colspan=1>
<p>flange_1</p></td>
<td colspan=1>
<p>pipe_4_supply</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_2_supply</p></td>
<td colspan=1>
<p>flange_2</p></td>
<td colspan=1>
<p>pipe_5_supply</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_2_supply</p></td>
<td colspan=1>
<p>flange_3</p></td>
<td colspan=1>
<p>pipe_6_supply</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_2_return</p></td>
<td colspan=1>
<p>flange_1</p></td>
<td colspan=1>
<p>pipe_6_return</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_2_return</p></td>
<td colspan=1>
<p>flange_2</p></td>
<td colspan=1>
<p>pipe_5_return</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>junction_2_return</p></td>
<td colspan=1>
<p>flange_3</p></td>
<td colspan=1>
<p>pipe_4_return</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>hex_1</p></td>
<td colspan=1>
<p>flange_supply</p></td>
<td colspan=1>
<p>pipe_3_supply</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>hex_1</p></td>
<td colspan=1>
<p>flange_return</p></td>
<td colspan=1>
<p>pipe_3_return</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>hex_2</p></td>
<td colspan=1>
<p>flange_supply</p></td>
<td colspan=1>
<p>pipe_5_supply</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>hex_2</p></td>
<td colspan=1>
<p>flange_return</p></td>
<td colspan=1>
<p>pipe_5_return</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>hp</p></td>
<td colspan=1>
<p>flange_evap_out</p></td>
<td colspan=1>
<p>pipe_1_return</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>hp</p></td>
<td colspan=1>
<p>flange_cond_in</p></td>
<td colspan=1>
<p>pump_cond</p></td>
<td colspan=1>
<p>flange_out</p></td>
</tr>
<tr>
<td colspan=1>
<p>hp</p></td>
<td colspan=1>
<p>flange_cond_out</p></td>
<td colspan=1>
<p>tank</p></td>
<td colspan=1>
<p>flange_hp_in</p></td>
</tr>
<tr>
<td colspan=1>
<p>hp</p></td>
<td colspan=1>
<p>meas_p_el</p></td>
<td colspan=1>
<p>flex_heat_ctrl</p></td>
<td colspan=1>
<p>meas_hp_p_el</p></td>
</tr>
<tr>
<td colspan=1>
<p>tank</p></td>
<td colspan=1>
<p>meas_temp</p></td>
<td colspan=1>
<p>flex_heat_ctrl</p></td>
<td colspan=1>
<p>meas_tank_temp</p></td>
</tr>
<tr>
<td colspan=1>
<p>tank</p></td>
<td colspan=1>
<p>flange_hp_out</p></td>
<td colspan=1>
<p>pump_cond</p></td>
<td colspan=1>
<p>flange_in</p></td>
</tr>
<tr>
<td colspan=1>
<p>tank</p></td>
<td colspan=1>
<p>flange_tank_return</p></td>
<td colspan=1>
<p>pipe_tank_return</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>tank</p></td>
<td colspan=1>
<p>flange_tank_supply</p></td>
<td colspan=1>
<p>pump_tank</p></td>
<td colspan=1>
<p>flange_in</p></td>
</tr>
<tr>
<td colspan=1>
<p>pump_tank</p></td>
<td colspan=1>
<p>flange_out</p></td>
<td colspan=1>
<p>pipe_tank_supply</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>bypass</p></td>
<td colspan=1>
<p>flange_supply</p></td>
<td colspan=1>
<p>pipe_6_supply</p></td>
<td colspan=1>
<p>flange_b</p></td>
</tr>
<tr>
<td colspan=1>
<p>bypass</p></td>
<td colspan=1>
<p>flange_return</p></td>
<td colspan=1>
<p>pipe_6_return</p></td>
<td colspan=1>
<p>flange_a</p></td>
</tr>
<tr>
<td colspan=1>
<p>voltage_ctrl</p></td>
<td colspan=1>
<p>meas_voltage_pu</p></td>
<td colspan=1>
<p>bus_1</p></td>
<td colspan=1>
<p>meas_voltage_pu</p></td>
</tr>
<tr>
<td colspan=1>
<p>voltage_ctrl</p></td>
<td colspan=1>
<p>setpoint_hp_p_el</p></td>
<td colspan=1>
<p>flex_heat_ctrl</p></td>
<td colspan=1>
<p>setpoint_hp_p_el</p></td>
</tr>
<tr>
<td colspan=1>
<p>flex_heat_ctrl</p></td>
<td colspan=1>
<p>setpoint_tank_mflow</p></td>
<td colspan=1>
<p>pump_tank</p></td>
<td colspan=1>
<p>setpoint_mflow</p></td>
</tr>
<tr>
<td colspan=1>
<p>flex_heat_ctrl</p></td>
<td colspan=1>
<p>setpoint_cond_mflow</p></td>
<td colspan=1>
<p>pump_cond</p></td>
<td colspan=1>
<p>setpoint_mflow</p></td>
</tr>
</table>


