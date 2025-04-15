# WSP STATUS DECISION TREE

## Background

We have extracted a consistent set of decision rules from status assessments completed in a series of expert workshops (Grant & Pestal 2013; DFO 2015; DFO 2016; Grant et al. 2020) and formalized these rules in a decision tree that works through a sequence of yes/no questions based on available information. Pestal et al. (2023) and DFO (2024) document the development and testing of candidate decision trees. 

Holt (2009) developed and tested a suite of status metrics and associated benchmarks. Four metrics were relied on consistently in the status assessment workshops and therefore form the basis for the decision tree: relative abundance, absolute abundance, short-term and long-term trends (Table 1).  For each metric, a lower and upper benchmark was identified to designate Red, Amber, or Green status zones. Holt (2009) and Holt et al. (2009) document the justification for the selected metric benchmarks. 

The R package [WSPMetrics (Holt et al. 2025)](https://github.com/Pacific-salmon-assess/WSP-Metrics-Pkg) implements the metric calculations as well as the selected decision tree, allowing for streamlined application across CUs and for retrospective status assessments. 

## Fundamental Properties of the Decision Tree

Three fundamental properties of the decision tree have been the source of recurring debate and misunderstanding: 

(1)	A status determination does not necessarily use all metrics available for a CU but rather depends on the specific path determined by a sequence of yes/no questions. Individual metrics can’t simply be counted, summed, or averaged. The order of operations captured in the decision tree reflects the complex weighing of metrics in the status workshops. For example, if abundance can be compared to CU-specific biological benchmarks (the relative abundance metric), then trend metrics are not used to assess status, due to expert consensus that they are less reliable, especially for Pacific salmon which have high year-to-year variation in abundance. 

(2)	Each endpoint assigns a Red, Amber, or Green status with High, Medium, or Low confidence. The confidence rating reflects which metrics were used to assess status (e.g., when CU-specific biological benchmarks are not available, status is determined based on trends, and trend-based statuses have lower confidence).

(3)	Thresholds used throughout the decision tree account for how the standard metrics and associated benchmarks were interpreted by experts in the status integration workshops. The thresholds, therefore, can be different from the standard benchmarks used for individual metrics to address uncertainty in the data and, for the relative abundance metric, uncertainty in the estimated benchmarks. 


## Alternative Displays

The decision tree presents a substantial communication challenge when participants in a status review process are first confronted with it. Our experience has been that by working through a few applied examples as a group, status review participants quickly become familiar with the biological rationale encapsulated in the sequence and thresholds. They are then able to efficiently and consistently work through subsequent cases using the decision tree as a guide. To facilitate the initial learning step, we have developed three different displays of the decision tree. Figure 1 is a simplified version for communicating the fundamental rationale. The full decision tree can be displayed as a tree diagram (Figure 2) or a table (Figure 3). Sequence, thresholds, and rationale are the same for both displays of the full tree. 

In the tree diagram (Fig. 2), each yes/no question is called a ‘node’. Assessments for all CUs start at the same point (‘root node’) but then take different pathways (‘branches’) based on the answers at each node and end up in different end-points (‘leaf nodes’).  In the table display (Figure 3), the sequential structure is preserved through and/or statements and the nodes are shown as a checklist of criteria.


## Three Main Branches
The decision tree splits into three main branches based on categorizing CU abundance as very small, small to moderate, or large/unknown (Nodes 1 and 2 in the tree; Sections A, B, C in the table). The thresholds to delineate these abundance categories are 1,500 and 10,000, based on analyses of extinction risk (National Research Council (US) Committee on Scientific Issues in the Endangered Species Act 1998; McElhany et al. 2000) and incorporate how this metric was interpreted in the expert consensus during the status integration workshops (Grant & Pestal 2013; DFO 2015; DFO 2016; Grant et al. 2020; Pestal et al. 2023). Note that the lower benchmark for the absolute abundance metric is 1,000 (Table B1), but experts in the status workshops applied a substantial buffer to account for year-to-year variability and uncertainty in estimates. For Pacific salmon, a generational average just above 1,000 usually means that several brood years had spawner abundance well below 1,000.

## Branch 1: CUs with Very Small Abundance

Branch 1 assigns Red status to CUs with very small spawner abundance (generational average < 1,500) due to the inherent extinction risk they face, regardless what other available metrics might show (e.g., a strongly increasing trend metric does not override the risk due to very small abundance). In the status integration workshops, experts quickly came to consensus on these types of cases, which the tree reflects by handling these clear-cut designations in the first step.
There are CUs where the capacity of a spawning or juvenile rearing system is relatively small, and the CU-specific lower benchmarks for the relative abundance metric (Sgen or 20% of Smax) are less than 1,500. Consensus in the status workshops was that the small population criterion takes precedence. Other metrics are only considered if this fundamental criterion is met.

## Branch 2: CUs with Small to Moderate Abundance

If a CU’s abundance falls between the lower threshold of 1,500 and the upper threshold of 10,000, then other metrics are used to distinguish between Red and Amber status. CUs with fewer than 10,000 spawners are still considered to be at some inherent biodiversity risk (National Research Council (US) Committee on Scientific Issues in the Endangered Species Act 1998; McElhany et al. 2000), and therefore other metrics are currently not used to assign Green status.

Additional metrics are considered in a sequence that reflects how experts in the status workshops weighed information across metrics:

* If CU-specific biological benchmarks are available (Node 5 in the tree, criterion B1 in the table), then the lower benchmark for the relative abundance metric (Sgen or 20% Smax) is used to determine Red or Amber status with high confidence (Nodes 22,23 in the tree). 

* If CU-specific biological benchmarks are not available, then the long-term trend metric is used to determine Red or Amber status with medium confidence (Nodes 20,21 in the tree). The threshold for Amber status includes a buffer above the upper benchmark for the long-term trend metric (79% vs. 75% of long-term average).

## Branch 3: CUs with Large Abundance or Unknown Total Abundance

If a CU’s abundance falls above the upper threshold of 10,000, or the total spawner abundance for the CU is unknown, then other metrics are used to distinguish between Red, Amber, or Green status.
Additional metrics are considered in a sequence that reflects how experts in the status workshops weighed information across metrics:

* If CU-specific biological benchmarks are available (Node 4 in the tree, criterion C1 in the table), then the relative abundance metric is used to determine status with high confidence.  If generational average is below the lower threshold, status is Red (Node 19), if it falls between lower and upper thresholds, status is Amber (Node 37), and if above the upper threshold status is Green (Node 36). The lower threshold is the same as the lower benchmark for the relative abundance metric, but the upper threshold includes a 10% buffer above the upper benchmark for the metric. This reflects the workshop consensus that abundance should be clearly above the upper benchmark before Green status is assigned.

* If CU-specific biological benchmarks are not available, then status is determined based on trend considerations using fixed thresholds that apply to all CUs. The sequence first checks for Red status based on pronounced long-term decline, then based on steep short-term decline. If neither of these applies, then it checks for a very clear long-term increase to distinguish between Amber and Green status. Red statuses based on pronounced decline are considered medium confidence. Amber or Green status based on long-term trend is considered low confidence. Specifically: 
   * If the current abundance is less than 79% of the long term average (Node 8), then the status is Red with medium confidence (Node 17).  As in Branch 2 above, this threshold includes a buffer above the upper benchmark for the long-term trend metric (79% vs. 75% of long-term average).
   * If short-term trend (change over three generations) shows a decline greater than 70% (Node 16), then the status is Red with medium confidence (Node 33). By itself, this threshold appears to be much less biologically conservative than the lower benchmark for the short-term trend metric, which is a 25% decline (Table B1). However, within the decision tree sequence this criterion is only considered if the long-term trend does not indicate a pronounced decline. Expert consensus in the status workshops was that short-term trend over three generation can be highly volatile for Pacific salmon CUs, frequently switching between indicating declines and increases. A very clear signal is needed to justify a determination of Red status based on this metric if current abundance is near or above the long-term average.
   * If neither of the two previous criteria resulted in a Red status, then a very strong long-term increase (generational average > 233% of long-term average) is needed to determine Green status with low confidence (Node 64), otherwise status is Amber with low confidence (Node 65). This threshold is a substantial buffer above upper benchmark for the long-term trend metric.


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

<img src="https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/blob/main/DECISION_TREE/WSP_Status_Full_DecisionTree.PNG"
	width="600">



**Figure 3: Full Decision Tree - Table Version**

<img src="https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/blob/main/DECISION_TREE/WSP_Status_Full_DecisionTree_TableVersion.PNG"
	width="600">




## References


Add full citations with links