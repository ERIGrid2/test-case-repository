---
date: '2024-04-03'
description: Voltage controller for the multi-energy network benchmark
linkTitle: MENB-CF-VC
title: Control Function MENB-CF-VC
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
<p>2021-05-13</p></td>
<td colspan=1>
<p>0.1</p></td>
<td colspan=1>
<p>first draft</p></td>
<td colspan=1>
<p>Evangelos Rikos (CRES)</p></td>
</tr>
<tr>
<td colspan=1>
<p>2021-05-18</p></td>
<td colspan=1>
<p>0.2</p></td>
<td colspan=1>
<p>update of diagrams and control concept based on discussion with partners</p></td>
<td colspan=1>
<p>Evangelos Rikos (CRES)</p></td>
</tr>
<tr>
<td colspan=1>
<p>2021-11-02</p></td>
<td colspan=1>
<p>1.0</p></td>
<td colspan=1>
<p>update controller specification to represent the final implemented benchmark setup</p></td>
<td colspan=1>
<p>Edmund Widl (AIT)</p></td>
</tr>
<tr>
<td colspan=1>
<p>2024-25-01</p></td>
<td colspan=1>
<p>1.1</p></td>
<td colspan=1>
<p>Added identification</p></td>
<td colspan=1>
<p>Filip Pröstl Andrén (AIT)</p></td>
</tr>
</table>



## Control Function Identification


<table>
<tr>
<th colspan=2>
Control Function Identification</th>
</tr>
<tr>
<th colspan=1>
Control Function ID</th>
<th colspan=1>
Name</th>
</tr>
<tr>
<td colspan=1>
<p>MENB-CF-VC</p></td>
<td colspan=1>
<p>Voltage controller for the multi-energy network benchmark</p></td>
</tr>
</table>



## Functional Description


<table>
<tr>
<th colspan=1>
Functional Description</th>
</tr>
<tr>
<td colspan=1>
<p>Background:</p><p>System configuration MENB-SC specifies an electrical network, including a voltage controller, see Figure 1. The system comprises two PV systems, two (aggregated) electricity consumers, a heat pump and a simplified electrical distribution network consisting of two lines and two buses. The distribution grid is connected to the external electrical grid (equivalent voltage source).</p><p>This specific setup is typical for a local energy community (specifically a renewable local energy community) and, as such, allows to address the issue of exploiting the local PV generation in a way that avoids injection of extra energy to the upstream network (self-consumption). In order for an energy community to be autonomous, the size of the PV systems is such that at times high power generation may occur. However, high power generation from the PVs with no corresponding high consumption on the consumer side can lead to a significant voltage rise in parts of the grid (e.g., busbar bus_1). Therefore, synchronization of consumption with generation is necessary to ensure the power quality and avoid any disruption due to overvoltage limit violations.</p><p><img src="image1.png"/></p><p>Figure : Electrical sub-system including the voltage controller</p><p>Problem formulation:</p><p>The voltage controller specified in this document is intended to prevent overvoltages at busbar bus_1 due to high PV generation and simultaneous low power consumption by governing the operation of the heat pump accordingly. In the same way, it should prevent undervoltages due to increased power consumption and reduced PV generation.</p><p>Controller scope:</p><p>In this context, the scope of this controller is to monitor the voltage at busbar bus_1 and increase or decrease the power consumption of the heat pump (controllable/flexible load) in order to keep the voltage within an allowed range.</p></td>
</tr>
</table>



## Terminology


<table>
<tr>
<th colspan=2>
Terminology</th>
</tr>
<tr>
<td colspan=1>
<p>Local energy community</p></td>
<td colspan=1>
<p>Local energy communities (LEC) are a way to organize collective energy actions around open, democratic participation and governance and the provision of benefits for the members or the local community (Roberts et al., 2019).</p></td>
</tr>
<tr>
<td colspan=1>
<p>Renewable local energy community</p></td>
<td colspan=1>
<p>A special type of LEC that incorporate renewable energy sources, renewable local energy communities can be active in all energy sectors and involve activities in production, consumption and selling of renewable energy.</p></td>
</tr>
<tr>
<td colspan=1>
<p>Flexible load</p></td>
<td colspan=1>
<p>A load that has the capability of adjusting its consumption based on specific optimality criteria and/or control signals.</p></td>
</tr>
</table>



## Methodology


<table>
<tr>
<th colspan=1>
Methodology</th>
</tr>
<tr>
<td colspan=1>
<p>The rationale of the applied control methodology is based on the droop control approach used for distributed energy resources (DER) to support voltage variations (see also Figure 2):</p><ul>
<li>The voltage at busbar bus_1 is periodically monitored (with a time resolution depending on the simulation setup, see test specification MENB-TS01).</li>
<li>The measured value of the bus voltage is compared to (subtracted from) the reference value (nominal voltage) to determine the deviation (error).</li>
<li>In case the measured voltage is within the allowed voltage range, no action is taken by the controller. </li>
<li>Otherwise, in case the voltage error exceeds the allowed voltage range, a new setpoint for the heat pump’s power consumption is calculated to compensate for the deviation (see Figure 2 and definition of applied algorithm below).</li>
</ul></td>
</tr>
</table>



## Limitations


<table>
<tr>
<th colspan=1>
Limitations</th>
</tr>
<tr>
<td colspan=1>
<p>Heat pump consumption</p><p>A major limitation in the operation of this control scheme is the maximum/minimum power that the heat pump can consume. In several cases of implementing the droop control technique it is possible that the required setpoint violates the operating limits of the controlled component. Therefore, in the selected implementation two limitations are considered:</p><ul>
<li>The controller cannot request a power consumption from the heat pump above a certain limit (electrical power rating of compressor), regardless of the network condition. </li>
<li>The controller cannot request a power consumption from the pump below a certain limit (minimal electrical power consumption for operating the compressor). However, the controller can request the heat pump to be switched off (set setpoint to 0).</li>
</ul><p>Operation veto</p><p>The control signals must not result in an actuation pattern that switches the heat pump on and off in rapid succession. Therefore, after switching the heat pump on, the voltage controller must not switch off the heat pump for a certain amount of time, regardless of the network conditions. Vice versa for switching the heat pump off. This is referred to as operation veto.</p><p>Time resolution</p><p>Another important limitation is the time resolution selected for the simulation and, consequently, the control loop. In an actual system, voltage variations may take place at very small time scales (&lt;1s). In this case, however, slow (quasi-static) variations will be considered (i.e., in the order of minutes). Essentially, the specified voltage controller can be regarded as a tertiary voltage control scheme dealing with the slow (long-term) variations rather than the short-term dynamics.</p><p>Output signal granularity</p><p>The granularity of the output signal may be a limitation in view of the precision of the voltage control. The use of a discretization function leads to an approximation of the optimal value that would be required at every time instance. To ensure sufficient granularity, the right amount of discretization steps must be selected in advance, depending on the maximum power range of the heat pump. However, since this control scheme aims to contain voltage deviations and not to precisely compensate them, fine granularity is not crucial. </p><p>Response dynamics</p><p>A limitation factor can potentially be the time response of the heat pump after the setpoint changes. However, since a quasi-dynamic approach is assumed, the fast dynamics of the network voltage are neglected.</p></td>
</tr>
</table>



## Inputs



### meas_voltage_pu


<table>
<tr>
<th colspan=2>
Control Function Input</th>
</tr>
<tr>
<th colspan=1>
Name</th>
<td colspan=1>
<p>meas_voltage_pu</p></td>
</tr>
<tr>
<th colspan=1>
Type
(according to SC description)</th>
<td colspan=1>
<p>MeasureConnection</p></td>
</tr>
<tr>
<th colspan=1>
Unit</th>
<td colspan=1>
<p>p.u.</p></td>
</tr>
<tr>
<th colspan=1>
Range</th>
<td colspan=1>
<p>[0.8, 1.2]</p></td>
</tr>
<tr>
<th colspan=1>
Expected update rate</th>
<td colspan=1>
<p>1-15 min (simulation step size)</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=1>
<p>voltage at busbar bus_1 as measured by the voltage sensor (RMS voltage transducer)</p></td>
</tr>
</table>



## Outputs



### setpoint_hp_p_el


<table>
<tr>
<th colspan=2>
Control Function Output</th>
</tr>
<tr>
<th colspan=1>
Name</th>
<td colspan=1>
<p>setpoint_hp_p_el</p></td>
</tr>
<tr>
<th colspan=1>
Type
(according to SC description)</th>
<td colspan=1>
<p>CtrlConnection</p></td>
</tr>
<tr>
<th colspan=1>
Unit</th>
<td colspan=1>
<p>MWel</p></td>
</tr>
<tr>
<th colspan=1>
Range</th>
<td colspan=1>
<p>[0, 0.1]</p></td>
</tr>
<tr>
<th colspan=1>
Expected update rate</th>
<td colspan=1>
<p>1-15 min (simulation step size)</p></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=1>
<p>proposed heat pump setpoint for electrical consumption, sent to flex heat controller</p></td>
</tr>
</table>



## Use Cases



### Voltage support at distribution grid substation


<table>
<tr>
<th colspan=1>
Use Case Example</th>
<th colspan=1>
Voltage support at distribution grid substation</th>
</tr>
<tr>
<th colspan=1>
Date created</th>
<td colspan=1>
<p>2021-05-13</p></td>
</tr>
<tr>
<th colspan=1>
Actor</th>
<td colspan=1>
<ul>
<li>voltage sensor (RMS voltage transducer) at busbar bus_1</li>
<li>flex heat controller (controls the heat pump operation)</li>
<li>heat pump</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Description</th>
<td colspan=1>
<p>The voltage controller modifies the setpoint of the heat pump’s active power consumption to contain/reduce the voltage deviation at busbar bus_1.</p></td>
</tr>
<tr>
<th colspan=1>
Preconditions</th>
<td colspan=1>
<p>Setpoint for heat pump power consumption is within operational limits and there is no operational veto pending.</p></td>
</tr>
<tr>
<th colspan=1>
Postconditions</th>
<td colspan=1>
<p>The bus voltage is kept within the limits of operation.</p></td>
</tr>
<tr>
<th colspan=1>
Priority</th>
<td colspan=1>
<p>medium</p></td>
</tr>
<tr>
<th colspan=1>
Frequency of use</th>
<td colspan=1>
<p>periodically (according to simulation step size)</p></td>
</tr>
<tr>
<th colspan=1>
Normal course</th>
<td colspan=1>
<p>The controller measures the voltage deviation. If the deviation is within the allowed voltage range, no action is taken.</p></td>
</tr>
<tr>
<th colspan=1>
Alternative course</th>
<td colspan=1>
<p>The controller measures the voltage deviation. If the deviation is not within the allowed voltage range, a new setpoint is calculated and sent to the flex heat controller. The flex heat controller takes this setpoint into consideration when actuating the hydraulic pump in the heat pump’s condenser loop.</p></td>
</tr>
<tr>
<th colspan=1>
Exceptions</th>
<td colspan=1>
<p>N/A</p></td>
</tr>
<tr>
<th colspan=1>
Assumptions</th>
<td colspan=1>
<p>N/A</p></td>
</tr>
<tr>
<th colspan=1>
Notes and issues</th>
<td colspan=1>
<p>N/A</p></td>
</tr>
</table>



## Diagrams


<table>
<tr>
<th colspan=1>
Diagrams</th>
</tr>
<tr>
<th colspan=1>
Schematic view of the voltage control algorithm</th>
</tr>
<tr>
<td colspan=1>
<p><img src="image2.png"/></p><p>Figure : Schematic view of the voltage control algorithm</p></td>
</tr>
</table>



## Algorithms


<table>
<tr>
<th colspan=1>
Algorithms</th>
</tr>
<tr>
<th colspan=1>
Voltage controller algorithm</th>
</tr>
<tr>
<td colspan=1>

```
BEGIN ALGORITHM (voltage controller)
    DETERMINE operation veto still pending
    IF operation veto pending THEN
        EXIT ALGORITHM (voltage controller)
    END IF

    READ meas_voltage_pu // get latest voltage measurement
    READ setpoint_hp_p_el // get latest value for setpoint

    // lower voltage band threshold depends on heat pump status
    IF heat pump is switched off THEN
        SET delta_vm_lower_pu = delta_vm_lower_pu_hp_off
    ELSE
        SET delta_vm_lower_pu = delta_vm_lower_pu_hp_on
    END IF

    COMPUTE delta_v_meas_pu = meas_voltage_pu - 1

    IF delta_vm_lower_pu < delta_v_meas_pu < delta_vm_upper_pu THEN
        IF heat pump is switched off AND NOT operation veto pending THEN
            SET setpoint_hp_p_el = hp_p_el_mw_min
            SET operation veto to pending
        END IF
    ELSE
        // update setpoint
        COMPUTE res = k_p * (delta_v_meas_pu - delta_vm_deadband) / hp_p_el_mw_step
        COMPUTE step_res = int(res)
        IF fabs(res - step_res) > hp_p_el_mw_step THEN
            SET setpoint_hp_p_el = setpoint_hp_p_el + hp_p_el_mw_step * (step_res + 1)
        END IF
        // check operational constraints
        IF new setpoint above max. heat pump consumption THEN
            SET setpoint_hp_p_el = hp_p_el_mw_rated
        ELSE IF new setpoint below min. heat pump consumption AND \
                NOT no operation veto pending THEN
            SET setpoint_hp_p_el = 0
            SET operation veto to pending
        ELSE IF new setpoint below min. heat pump consumption AND operation veto pending THEN
            SET setpoint_hp_p_el = hp_p_el_mw_min
        END IF
    END IF
END ALGORITHM (voltage controller)
```

</td>
</tr>
</table>



## Deterministic Functions


<table>
<tr>
<th colspan=1>
Deterministic Functions</th>
</tr>
<tr>
<td colspan=1>
<p>N/A</p></td>
</tr>
</table>



## Stochastic Functions


<table>
<tr>
<th colspan=1>
Stochastic Functions</th>
</tr>
<tr>
<td colspan=1>
<p>N/A</p></td>
</tr>
</table>



## Deployment (optional)


<table>
<tr>
<th colspan=1>
Deployment (optional)</th>
</tr>
<tr>
<td colspan=1>
<p>N/A</p></td>
</tr>
</table>



## References


<table>
<tr>
<th colspan=1>
References</th>
</tr>
<tr>
<td colspan=1>
<p>[1] J. Rocabert, A. Luna, F. Blaabjerg, and P. Rodriguez, “Control of Power Converters in AC Microgrids”, IEEE Trans. Power Electron., vol. 27, no. 11, pp. 4734-4749. Nov. 2012.</p></td>
</tr>
</table>


