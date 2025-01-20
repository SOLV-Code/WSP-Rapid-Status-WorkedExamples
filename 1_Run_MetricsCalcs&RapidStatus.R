# Script to run the worked examples

# Use Ctrl-Enter to run one line of code at a time
# Use Ctrl-A to highlight whole script and then click "Run" above to run all the steps
# Adjust True/False settings below as needed

# Settings
install.package <- TRUE # if TRUE, install the latest version of the R package
new.readme <- TRUE # if TRUE, generate a basic Readme file template.
new.quarto <- TRUE # if TRUE, generate a basic quarto file template that can be used to render word, html, or pdf files
# IMPORTANT: if new.readme or new.quarto are TRUE, these will be generated and overwrite
#              any edits made to earlier versions of the template


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
  out.filepath = "DATA/Dashboards")

if(new.readme){
generateReportTemplate(type = "readme",
                       file.label = "Report", # doesn't apply to readme
                       files.path = "DATA",
                       repo.path = "https://github.com/SOLV-Code/WSP-Rapid-Status-WorkedExamples")
}

if(new.quarto){
generateReportTemplate(type = "quarto",
                       file.label = "Report", # doesn't apply to readme
                       files.path = "DATA",
                       repo.path = NULL)
}




