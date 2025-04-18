# WSP-Rapid-Status-WorkedExamples

The [WSPMetrics R package](https://github.com/Pacific-salmon-assess/WSP-Metrics-Pkg) includes functions 
to calculate the standard status metrics originally 
defined by Holt et al. 2009, and further refined in subsequent test cases and 
additional explorations ([References](#References)). The package also includes functions for using the resulting metrics in a 
status assessment (apply rapid status decision tree, generate dashboards).

This repository includes teaching materials and worked examples of the full workflow from 
CU-level time series to status dashboards.


## Repository Contents

* [CODE Folder](https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/tree/main/CODE): contains R scripts that install the [WSPMetrics Package (Holt et al. 2025)](https://github.com/Pacific-salmon-assess/WSP-Metrics-Pkg) , calculate standard metrics for example CUs, apply the WSP status decision tree, and generate status dashboard plots.

* [DATA Folder](https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/tree/main/DATA): contains the input data, specification files, and output files.

* [DECISION_TREE Folder](https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/tree/main/DECISION_TREE): contains background information and alternative displays of the WSP status decision tree.

* [EXAMPLES Folder](https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/tree/main/EXAMPLES): contains status metrics and some context for examples CUs. Try to work through each example using the [Decision Tree](https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/tree/main/DECISION_TREE) and [workbook template](https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/blob/main/TEMPLATES/WSP_Status_Template.pdf) 

* [SOLUTIONS FOLDER](https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/tree/main/SOLUTIONS): contains answers for the examples.


## Contact

For questions, comments, or suggestions related to these worked examples and teaching materials please contact: 

* Sue Grant (Sue.Grant"AT"dfo-mpo.gc.ca)
* Gottfried Pestal (gpestal"AT"solv.ca)
* Bronwyn MacDonald (Bronwyn MacDonald"AT"dfo-mpo.gc.ca))
* Dr. Carrie Holt (Carrie.Holt"AT"dfo-mpo.gc.ca)

or start a discussion thread [here](https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples/issues).

If you use the [WSPMetrics R package](https://github.com/Pacific-salmon-assess/WSP-Metrics-Pkg) in your work, please cite it as follows:

*Holt C, Pestal G, MacDonald B, and Grant S (2025) WSPMetrics: Calculate and use metrics for status assessments under Canada's Wild Salmon Policy (WSP). R package version 0.9. https://github.com/Pacific-salmon-assess/WSP-Metrics-Pkg.*



## References 

### Standard WSP Metrics

Holt, C., Cass, A., Holtby, B., and Riddell, B. 2009. [Indicators of status and benchmarks for conservation units in Canada’s Wild Salmon Policy](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/339096.pdf). DFO Can. Sci. Advis. Sec. Res. Doc. 2009/058. viii + 74 p.

Holt, C.A. 2012. [Identifying benchmarks and assessing status of CUs under the Wild Salmon Policy: converging on consistent methods. Summary of progress meeting](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/348218.pdf). Can. Tech. Rep. Fish. Aquat. Sci. 3019: v + 23.

Holt, C.A., and Ogden, A. 2013. [Software for assessing status of Conservation Unit under Canada’s Wild Salmon Policy: instructional manual](https://publications.gc.ca/collections/collection_2014/mpo-dfo/Fs97-6-3058-eng.pdf). Can. Tech. Rep. Fish. Aquat. Sci. 3058.

Holt, C.A., Davis, B., Dobson, D., Godbout, L., Luedke, W., Tadey, J., and Van Will, P. 2018. [Evaluating Benchmarks of Biological Status for Data-limited Conservation Units of Pacific Salmon, Focusing on Chum Salmon in Southern BC](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/40759386.pdf). DFO Can. Sci. Advis. Sec. Res. Doc. 2018/011. ix + 77 p.


### Completed WSP Status assessments

DFO. 2012. [Integrated biological status of Fraser River sockeye salmon (*Oncorhynchus nerka*) under the Wild Salmon Policy](http://www.dfo-mpo.gc.ca/csas-sccs/Publications/SAR-AS/2012/2012_056-eng.html). Can. Sci. Advis. Sec. Sci. Advis. Rep. 2012/056: 13 pp. 

Grant, S.C.H., and Pestal, G. 2013. [Integrated biological status assessments under the Wild Salmon Policy using standardized metrics and expert judgement: Fraser River sockeye salmon (*Oncorhynchus nerka*) case studies](https://waves-vagues.dfo-mpo.gc.ca/Library/349637.pdf). Can. Sci. Advis. Sec. Res. Doc. 2012/106: v + 132 pp. 

DFO. 2015. [Wild Salmon Policy status assessment for conservation units of Interior Fraser River coho (*Oncorhynchus kisutch*)](https://waves-vagues.dfo-mpo.gc.ca/Library/364851.pdf). Can. Sci. Advis. Sec. Sci. Advis. Rep. 2015/022: 12 pp. 

DFO. 2016. [Integrated biological status of southern British Columbia Chinook salmon (*Oncorhynchus tshawytscha*) under the Wild Salmon Policy](https://waves-vagues.dfo-mpo.gc.ca/Library/40595419.pdf). Can. Sci. Advis. Sec. Sci. Advis. Rep. 2016/042: 15 pp. 

DFO. 2018. [The 2017 Fraser Sockeye salmon (*Oncorhynchus nerka*) integrated biological status re-assessments under the Wild Salmon Policy](http://waves-vagues.dfo-mpo.gc.ca/Library/40712163.pdf). Can. Sci. Advis. Sec. Sci. Advis. Rep. 2018/017: 17 pp. 

Grant, S.C.H., Holt, C.A., Pestal, G., Davis, B.M., and MacDonald, B.L. 2020. [The 2017 Fraser Sockeye salmon (*Oncorhynchus nerka*) integrated biological status re-assessments under the Wild Salmon Policy using standardized metrics and expert judgement](http://www.dfo-mpo.gc.ca/csas-sccs/Publications/ResDocs-DocRech/2020/2020_038-eng.pdf). Can. Sci. Advis. Sec. Res. Doc. 2020/038: vii+ 211. 


### Rapid Status Decision Tree

DFO. 2024. [Rapid status approximations for Pacific salmon derived from integrated status assessments under DFO’s Wild Salmon Policy](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41207890.pdf). CSAS Sci. Resp. 2024/004: 42 p. 

Pestal, G., MacDonald, B.L., Grant, S.C.H., and Holt, C.A. 2023. [State of The Salmon: rapid status assessment approach for Pacific salmon under Canada’s Wild Salmon Policy](https://waves-vagues.dfo-mpo.gc.ca/library-bibliotheque/41207890.pdf). Can. Tech. Rep. Fish. Aquat. Sci. 3570: xiv + 200 p. 

