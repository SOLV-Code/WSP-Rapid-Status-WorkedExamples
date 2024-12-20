# Script to run the worked examples




# Install the WSPMetrics package
require("devtools") # check for and, if needed, install the devtools package
library(devtools) # Load the devtools package.
install_github("SOLV-CODE/WSP-Metrics-Pkg", dependencies = TRUE, build_vignettes = FALSE)
library(WSPMetrics)

citation("WSPMetrics")
