# WSP STATUS DECISION TREE

References with links are listed at the end of the [main Readme](https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/tree/main?tab=readme-ov-file#references)

## Background

We have extracted a consistent set of decision rules from status assessments completed in a series of expert workshops (Grant & Pestal 2013; DFO 2015; DFO 2016; Grant et al. 2020) and formalized these rules in a decision tree that works through a sequence of yes/no questions based on available information. Pestal et al. (2023) and DFO (2024) document the development and testing of candidate decision trees. 

Holt (2009) developed and tested a suite of status metrics and associated benchmarks. Four metrics were relied on consistently in the status assessment workshops and therefore form the basis for the decision tree: relative abundance, absolute abundance, short-term and long-term trends (Table 1).  For each metric, a lower and upper benchmark was identified to designate Red, Amber, or Green status zones. Holt (2009) and Holt et al. (2009) document the justification for the selected metric benchmarks. 

The R package [WSPMetrics (Holt et al. 2025)](https://github.com/Pacific-salmon-assess/WSP-Metrics-Pkg) implements the metric calculations as well as the selected decision tree, allowing for streamlined application across CUs and for retrospective status assessments. 

## Fundamental Properties of the WSP Rapid Status Decision Tree

Three fundamental properties of the decision tree include: 

(1) A status determination does not rely on a simple tally of metric results. Instead, the decision tree follows a sequence of Yes/No branching questions that determine which metrics are applied for a given CU. Not all applicable metrics are used for each CU. The order of operations reflects how metrics have been weighed in past status workshops. For example, if the relative abundance metric can be applied, then trend-based metrics are not used, as expert consensus recognized trend metrics as less reliable. 

(2) Each endpoint on the decision tree assigns a Red, Amber, or Green status paired with a High, Medium, or Low confidence. Confidence reflects the type of metrics used to assign status: determinations based on the absolute or relative abundance metrics are considered High Confidence, while those based on trend metrics are considered Low or Medium Confidence. 

(3) The metric thresholds used in the decision tree may differ from their benchmarks (Table B1). These differences reflect how benchmarks have been interpreted in past expert workshops, accounting for data uncertainty and, in the case of the relative abundance metric, uncertainty in the benchmark estimates themselves. 


## Alternative Displays

To support the initial learning of the WSP rapid status approach, we provide two versions of the decision tree: a simplified version showing the basic structure (Figure 1) and the full version (Figure 2). In the full version diagram (Figure 2), each Yes/No question is represented as a node. All CU assessments begin at the same starting point (node 1) and proceed along different branches depending on the answers at each node, ultimately reaching distinct status and confidence outcomes. 
Nodes (decision points) in the decision tree are systematically numbered. Each Yes/No split generates two new nodes: the No branch is numbered as double the parent node (e.g. 2), and the Yes branch is numbered as double +1 (e.g. 3). This numbering system uniquely defines the full path taken to reach any given node. For example, cases that end at Node 17 follow the path YES at node 8, NO at node 4, NO at node 2, and NO at node 1. 

## Three Main Branches
The decision tree first splits into three main branches based on categorizing CU abundance as very small, small to moderate, or large/unknown. Here abundance refers to the current generation geometric mean of spawner abundances where these are appropriate for calculating the absolute abundance metric (i.e. total spawner abundance is known or otherwise has been approved for use by CU experts). These branches are delineated by thresholds of 1,500 and 10,000 spawners, derived from the absolute abundance metric and linked to species extinction risk. The lower threshold of 1,500 incorporates a 500-spawner buffer above the original 1,000 benchmark, reflecting how this metric has been interpreted in past status workshops (Table B1; Pestal et al. 2023). Where spawner abundances are not appropriate for calculating the absolute abundance metric, the large/unknown path is taken.   

## Branch 1: CUs with Very Small Abundance

If a CU’s abundance falls below the absolute abundance lower threshold of 1,500, then the CU is assigned a Red status with High confidence (Node 3). Small population sizes carry an inherent extinction risk, regardless of other available metrics. Even if the CU has been stable over the assessment period or if its spawning habitat capacity is below 1,500, the small size alone places it at an elevated extinction risk.

## Branch 2: CUs with Small to Moderate Abundance

If a CU’s abundance falls between the absolute abundance lower threshold of 1,500 and the upper threshold of 10,000, other metrics are used to determine the final status. CUs with fewer than 10,000 spawners are considered to carry some inherent biodiversity risk (National Research Council (US) Committee on Scientific Issues in the Endangered Species Act 1998; McElhany et al. 2000), and therefore their final statuses are restricted to Red or Amber.

Additional metrics are applied in a sequence that reflects how experts in the status workshops weighed information across metrics:
* If the CU can be assessed with the relative abundance metric, the lower threshold for this metric (Node 11) is used to assign a Red or Amber status with High Confidence (Nodes 22 or 23).
* If the CU cannot be assessed with the relative abundance metric, the lower threshold for the long-term trend metric (Node 10) is used to assign a Red or Amber status with Medium Confidence (Nodes 20 or 21).


## Branch 3: CUs with Large Abundance or Unknown Total Abundance

If a CU’s abundance exceeds the absolute abundance upper threshold of 10,000, or the total spawner abundance for the CU is unknown, other metrics are used to assign a Red, Amber, or Green status. Metrics are applied in a sequence reflecting expert consensus from status workshops:

* If the relative abundance metric can be used (Node 4):
  
	o	Current average abundance below the lower threshold: Red status (Node 19) 

	o	Between lower and upper thresholds: Amber status (Node 37)

	o	Above the upper threshold: Green status (Node 36)

	o	Confidence is High for all three outcomes

* If relative abundance cannot be used, trend metrics are applied:
 
 o	Long-term trend metric (Node 8)

   -Below the lower threshold: Red status with Medium Confidence (Node 17) 

   -Above threshold, then proceed to the next node.

 o	Short-term trend (change over three generations) metric (Node 16)

   -Decline > 70%: Red status with Medium Confidence (Node 33)
  
   -if above this threshold, proceeds to the next node.
  
 o	Long-term trend upper threshold (Node 32)

   -Below threshold: Amber with Low confidence (Node 65)

   -If above this threshold: Green with Low confidence (Node 64)



**Table 1: Definitions and data requirements for standard WSP metrics used in the rapid status decision tree. ‘Generational average’ is the geometric mean of spawner abundance for the most recent generation.**

**WSP Metric**	| **Description**
-- | --
Absolute Abundance	| Generational average compared to abundance benchmarks that align with COSEWIC criteria and are supported by conservation biology.  Benchmarks are 1,000 and 10,000 for all CUs. Generally, this metric will only be applied when estimates of total spawner abundance for the CU are available. However, in some cases this metric has been used for CUs where only a relative index of abundance is available, but a plausible range of expansion factors would still result in total abundances well below the lower benchmark (e.g., if generational average for the indicator population is 150 spawners and the whole CU is plausibly 3-5 times larger).  Data requirements are:  (1) no missing years in current generation.
Relative Abundance |	Generational average compared to CU-specific biological benchmarks based on stock-recruitment (SR) relationships, habitat capacity estimates, or percentiles of the spawner abundance time series. The lower benchmark is either Sgen, the spawner abundance that allows rebuilding to Smsy in one generation in the absence of fishing; 20% of Smax, the spawner abundance that maximizes recruitment; or the 25th percentile of the CU’s spawner abundance time series. The upper benchmark is either 80-85% Smsy; 40% of Smax; or the 75th percentile. Data requirements are: (1) no missing years in current generation, and (2) CU-specific benchmark estimates.
Long-term Trend	| Ratio of the generational average over the long-term average (geometric mean of all years). Benchmarks are 50% and 75% of the long-term average. Data requirements are: (1) no missing years in current generation, and (2) at least 15 years of abundance estimates.
Short-term Trend (recent trend)	| Calculated based on the slope in log-transformed spawner abundance over the most recent three generations, or 10 years, whichever is longer. Depending on species and data availability, the data may be smoothed (i.e., fit slope to running generational average). Benchmarks are 25% and 15% decline. Data requirements are: (1) no missing years over the 3-generation window of annual values or smoothed values. 



**Figure 1: Simplified Decision Tree**

<img src="https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/blob/main/DECISION_TREE/WSP_Status_Simplified_DecisionTree.PNG"
	width="600">



**Figure 2: Full Decision Tree**

<img src="https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/blob/main/DECISION_TREE/Full Decision Tree (full algorithm).jpg"
	width="900">




