# MyData Analysis

### MyData - Unsupervised Analysis ####
module MyData_unsupervised_analysis:
    snakefile:
        github("epigen/unsupervised_analysis", path="workflow/Snakefile", tag="v2.0.0")
    config:
        config_wf["MyData_unsupervised_analysis"]

use rule * from MyData_unsupervised_analysis as MyData_unsupervised_analysis_*
