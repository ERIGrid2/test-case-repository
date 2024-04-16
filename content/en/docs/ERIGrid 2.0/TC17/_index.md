---
date: '2024-04-03'
description: Fault tolerance/ recovery of a multi-aggregator dispatch mechanism
linkTitle: '17'
title: Test Case 17
weight: 1

---


## Identification


<table>
<tr>
<th colspan=1>
ID</th>
<td colspan=1>
<p>17</p></td>
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
<p>5/2/2021</p></td>
</tr>
</table>



## Test Case Definition


<table>
<tr>
<th colspan=2>
Name of the Test Case</th>
<td colspan=1>
<p>Fault tolerance/ recovery of a multi-aggregator dispatch mechanism</p></td>
</tr>
<tr>
<th colspan=2>
Narrative</th>
<td colspan=1>
<p>In a section of an electrical distribution grid, multiple (&gt;=2) aggregators operate independently of each other. Each of the aggregators maintains a portfolio of flexible DER units under contract. The contract provides for on-demand delivery of a grid service (e.g. load reduction/production increase).</p><p>It is assumed that the primary customer for the grid service in question is the local DSO operating the grid section. It is also assumed that a fair mechanism exists for matching supply (aggregators) and demand (DSO). This mechanism could e.g. be a flexibility market - but the exact workings are not relevant to the test case. For the sake of simplicity, it is assumed that the unknown mechanism has produced a merit-order list of the services offered by the different aggregators, before the start of the test. A dispatch unit is tasked with continuously matching the service demand indicated by the DSO using the merit order list, and to submit service activation requests to the appropriate aggregators.</p><p>At some point in time after the start of the test, a communication fault disrupts communication between the dispatch unit and one of the aggregators. To ensure that the service demand is met, the dispatch unit must decide whether the fault is temporary or permanent, and arrange for meeting the service demand with the remaining aggregator(s).</p><p>It is assumed that an aggregator affected by a communication fault will continue to function, i.e. service definitions agreed with the dispatch unit will continue to be delivered. However, due to the lack of updates from the dispatch unit, these services will eventually diverge from the evolving needs of the grid.</p></td>
</tr>
<tr>
<th colspan=2>
Function(s) under Investigation (FuI)</th>
<td colspan=1>
<p>Communication fault detection and impact mitigation. </p><p>A communication fault in the context of this test case is defined as the inability of the dispatch unit to communicate with one or more aggregators, caused by a disruption of the communication link. Implementations of the two functions will typically require functionality both on the dispatch unit as well as on the aggregator side.</p></td>
</tr>
<tr>
<th colspan=2>
Object under Investigation (OuI)</th>
<td colspan=1>
<p>Aggregator dispatch unit</p></td>
</tr>
<tr>
<th colspan=2>
Domain under Investigation (DuI)</th>
<td colspan=1>
<ul>
<li>Electrical</li>
<li>ICT</li>
</ul></td>
</tr>
<tr>
<th colspan=2>
Purpose of Investigation (PoI)</th>
<td colspan=1>
<p>Characterisation of (the performance of) system recovery from a permanent communication failure.</p></td>
</tr>
<tr>
<th colspan=3>
</th>
</tr>
<tr>
<th colspan=2>
System under Test (SuT)</th>
<td colspan=1>
<p>The test system consists of an electrical grid section, energy resources, aggregators, a dispatch unit, a service requester (DSO) and an ICT command and control infrastructure. The electrical grid section is a part of a LV and/or MV distribution grid (e.g. 0.4kV and 10kV) with a number of flexible DER units distributed across one or multiple feeders. The ICT infrastructure consists of three separate types of IT systems (dispatch unit, aggregator and DER controller) as well as the communication links between these entities.</p></td>
</tr>
<tr>
<th colspan=2>
Functions under Test (FuT)</th>
<td colspan=1>
<ul>
<li>Communication fault detection and impact mitigation (FuI)</li>
<li>Coordinated congestion management, consisting of an algorithm for congestion management as well as the communication between units needed to implement the algorithm (i.e. between unit controllers and aggregators and between aggregators and dispatch unit)</li>
<li>Aggregator internal dispatch mechanism, consisting of portfolio management and unit dispatch</li>
<li>Unit controller functionality, consisting of local flexibility calculation and management</li>
<li>A dispatch mechanism for aggregators, executing on the dispatch unit.</li>
<li>A congestion detection method, emulating the determination of service requirements by a DSO.</li>
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
<li>Time to detection of a nonresponsive aggregator</li>
<li>Time to full service restoration</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
</td>
<th colspan=1>
Target Metrics (TM)</th>
<td colspan=1>
<ul>
<li>Time elapsed from the occurrence of a communication fault to the classification of an aggregator as nonresponsive by the dispatch unit [s]</li>
<li>Time elapsed from the occurrence of a communication fault to the restoration of a stable steady state in which the entire service demand as requested by the DSO is met by the aggregators [s].</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
</td>
<th colspan=1>
Variability Attributes (VA)</th>
<td colspan=1>
<ul>
<li>Controllable<ul>
<li>Frequency of service change requests from dispatch unit to aggregators [1/10s to 1/10min]</li>
<li>Duration of communication failure [100ms to permanent]</li>
<li>Variability of baseload profile [0 to 100% of mean baseload]</li>
</ul>
</li>
</ul></td>
</tr>
<tr>
<td colspan=1>
</td>
<th colspan=1>
Quality Attributes (QA)</th>
<td colspan=1>
<ul>
<li>Confidence in the accuracy of the time measurements (measurement error &lt;= +/- 10% of measured value)</li>
</ul></td>
</tr>
</table>



## Qualification Strategy

<p>The system will be characterized in two different domains:</p><ul>
<li>Isolated in the ICT domain: How well does the multi-aggregator system recover from a communication fault?</li>
<li>The overall performance of the system in the electrical power domain: What is the impact of the fault recovery in the ICT domain on the ability of the multi-aggregator system to deliver a power system service?</li>
</ul><p>This will be achieved by a sequence of two tests:</p><ul>
<li>One test to determine the performance of a multi-aggregator system without any communication fault recovery mechanism. This will establish a baseline for overall system performance in the electrical power system domain.</li>
<li>A second test where a recovery mechanism is in place. This will allow both characterization objectives to be achieved by (a) measuring the performance of the fault recovery mechanism in the ICT domain, and (b) comparing the performance of the entire multi-aggregator system to the baseline results.</li>
</ul>


