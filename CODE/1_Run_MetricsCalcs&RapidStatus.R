# Script to run the worked examples

# Use Ctrl-Enter to run one line of code at a time
# Use Ctrl-A to highlight whole script and then click "Run" above to run all the steps
# Adjust True/False settings below as needed

# IMPORTANT NOTES:
# Running this code will overwrite the output files in your local copy of
# the repository. If you change any settings or data, the revised plots will
# be in the folder DATA/Dashboards
# The very last step at the end, excluded with 'if(FALSE){}' is the function
# that generates a basic quarto markdown template. If you run this step, it will overwrite
# the current quarto markdown file which may have additional text that has been manually added after.
# The quarto markdown can be used to render a word document. This was used as the starting point for
# building the word documents in the EXAMPLES and SOLUTIONS folders.



# Settings
install.package <- TRUE # if TRUE, install the latest version of the R package



# Install the WSPMetrics package
if(install.package){
require("devtools") # check for and, if needed, install the devtools package
library(devtools) # Load the devtools package.

# for latest dev version, use this
#install_github("SOLV-CODE/WSP-Metrics-Pkg", dependencies = TRUE, build_vignettes = FALSE)

# for latest official version, use this
install_github("Pacific-salmon-assess/WSP-Metrics-Pkg", dependencies = TRUE, build_vignettes = FALSE)


library(WSPMetrics)
citation("WSPMetrics")
}


# load packages

require(tidyverse)
library(WSPMetrics)

metrics.out <- calculateMetricsByCU(cu.file = read_csv("DATA/CU_Data_WorkedExamples.csv"),
                                                    cu.info = read_csv("DATA/CU_Specs_WorkedExamples.csv")     ,
                                                    cyclic.cu.bm = NULL,
                                                    retro.start.use = 1995,
                                                    out.label = "WorkedExamples",
                                                    out.filepath = "DATA")
names(metrics.out)
names(metrics.out$Metrics)



rapid.status.input <- prepDataForRapidStatus(
  cu.info = metrics.out$Specs,
  metrics.raw = metrics.out$Metrics,
  gen.avg.src = metrics.out$GenAvg,
  out.label = "WorkedExamples",
  out.filepath = "DATA")

names(rapid.status.input)
head(rapid.status.input$Values)


rapid.status.results <- generateRapidStatus(cu.info = metrics.out$Specs,
                                            cu.data = metrics.out$Data,
                                            publ.status.src = read_csv("DATA/CU_PublishedIntegratedStatuses_WorkedExamples.csv"),
                                            retro.values = rapid.status.input$Values,
                                            retro.status = rapid.status.input$Status,
                                            metrics.long = rapid.status.input$LongForm,
                                            group.var = "Species",
                                            out.label = "WorkedExamples",
                                            out.filepath = "DATA")
names(rapid.status.results)
rapid.status.results$Summary
rapid.status.results$SummaryTable
rapid.status.results$Data
rapid.status.results$Rules
rapid.status.results$ConfusionMatrix
rapid.status.results$RawConfusionMatrix
rapid.status.results$Accuracy


plotStatusDashboards(
  cu.info =  metrics.out$Specs,
  retro.summary.tbl = rapid.status.results$SummaryTable,
  cu.data = metrics.out$Data,
  out.label = "RapidStatusOut",
  out.filepath = "DATA/Dashboards",
  plot.status.timeline = TRUE)

plotStatusDashboards(
  cu.info =  metrics.out$Specs,
  retro.summary.tbl = rapid.status.results$SummaryTable,
  cu.data = metrics.out$Data,
  out.label = "RapidStatusOut",
  out.filepath = "DATA/Dashboards_NoStatus",
  plot.status.timeline = FALSE)




generateReportTemplate(type = "quarto",
                       file.label = "Report", # doesn't apply to readme
                       files.path = "DATA",
                       repo.path = NULL)


