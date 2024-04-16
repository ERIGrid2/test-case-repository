---
date: '2024-04-03'
description: Baseline test
linkTitle: TC17.TS1
title: Test Specification TC17.TS1
weight: 1

---


## Test Specification Definition


<table>
<tr>
<th colspan=1>
ID</th>
<td colspan=1>
<p>TC17.TS1</p></td>
</tr>
<tr>
<th colspan=1>
Reference to Test Case</th>
<td colspan=1>
<p>TC17</p></td>
</tr>
<tr>
<th colspan=1>
Title of Test</th>
<td colspan=1>
<p>Baseline test</p></td>
</tr>
<tr>
<th colspan=1>
Test Rationale</th>
<td colspan=1>
<p>This test will establish the performance of the dispatch mechanism in the absence of a fault recovery mechanism by establishing the (permanent) performance loss of the dispatcher as a result of a permanent loss of one aggregator from its portfolio. This performance loss will express itself in a degradation of the dispatcher’s ability to track a setpoint, and will depend on the amount of flexibility which can be taken over by the remaining aggregator(s).</p></td>
</tr>
<tr>
<th colspan=1>
Specific Test System  
(graphical)</th>
<td colspan=1>
<p><img src="image1.png"/></p></td>
</tr>
<tr>
<th colspan=1>
Target measures</th>
<td colspan=1>
<p>Deviation of service delivered from service requested</p></td>
</tr>
<tr>
<th colspan=1>
Input and output parameters</th>
<td colspan=1>
<ul>
<li>Input: Level of base load [kW]</li>
<li>Input: Service requested (by DSO) to dispatch unit</li>
<li>Input: Time of fault occurrence [s]</li>
<li>Output: Active power production/consumption at individual DERs [kW]</li>
<li>Output: Active power sum flow at grid connection [kW]</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Test Design</th>
<td colspan=1>
<p>The test can be performed as a hardware experiment, a simulation experiment or a combination of the two.</p><ul>
<li>Configure grid, DER units and base load to bring system into initial state (t=t0)</li>
<li>At t=t1, request a load relief service from the dispatch unit, wait for aggregators to activate DER units. Measure the effectiveness of the service delivery (impact on grid) after stabilization.</li>
<li>At t=t2, command fault simulator to disrupt communication to aggregator 1</li>
<li>Continue measuring the effectiveness of the service delivery for a period to determine the magnitude of the mismatch between service requested and service delivered.</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Initial system state</th>
<td colspan=1>
<ul>
<li>No service requested by dispatch unit</li>
<li>All DERs in neutral state (not delivering a service)</li>
<li>Feeder in overload condition by combined baseload+DER consumption</li>
<li>Fault simulator in bypass state (no fault)</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Evolution of system state and test signals</th>
<td colspan=1>
<ul>
<li>Base load continues to change, following e.g. a random pattern</li>
<li>Aggregator response tracks changes in base load</li>
</ul></td>
</tr>
<tr>
<th colspan=1>
Other parameters</th>
<td colspan=1>
</td>
</tr>
<tr>
<th colspan=1>
Temporal resolution</th>
<td colspan=1>
<p>Electrical system measurements: 1s. Logging of ICT events (messages exchanged, communication fault event etc.) using timestamps with at least 1ms resolution.</p></td>
</tr>
<tr>
<th colspan=1>
Source of uncertainty</th>
<td colspan=1>
<p>Residual time synchronization difference between ICT entities</p></td>
</tr>
<tr>
<th colspan=1>
Suspension criteria / Stopping criteria</th>
<td colspan=1>
<p>Elapsed time (fixed length experiment)</p></td>
</tr>
</table>


