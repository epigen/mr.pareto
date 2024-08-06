# ATACseq Analysis Recipe

# ### ATACseq - NGS Fetch (optional) ####
# module ATACseq_ngs_fetch:
#     snakefile:
#         github("epigen/ngs_fetch", path="workflow/Snakefile", tag="v1.0.0")
#     config:
#         config_wf["ATACseq_ngs_fetch"]

### ATACseq - ATAC-seq processing ####
module ATACseq_atacseq_pipeline:
    snakefile:
        github("epigen/atacseq_pipeline", path="workflow/Snakefile", tag="v1.1.0")
    config:
        config_wf["ATACseq_atacseq_pipeline"]

use rule * from ATACseq_atacseq_pipeline as ATACseq_atacseq_pipeline_*

#### ATACseq - Genome Tracks #### 
module ATACseq_genome_tracks:
    snakefile:
        github("epigen/genome_tracks", path="workflow/Snakefile", tag="v1.0.1")
    config:
        config_wf["ATACseq_genome_tracks"]

use rule * from ATACseq_genome_tracks as ATACseq_genome_tracks_*

#### ATACseq - Spilterlize & Integrate #### 
module ATACseq_spilterlize_integrate:
    snakefile:
        github("epigen/spilterlize_integrate", path="workflow/Snakefile", tag="v1.2.0")
    config:
        config_wf["ATACseq_spilterlize_integrate"]

use rule * from ATACseq_spilterlize_integrate as ATACseq_spilterlize_integrate_*

### ATACseq - Unsupervised Analysis ####
module ATACseq_unsupervised_analysis:
    snakefile:
        github("epigen/unsupervised_analysis", path="workflow/Snakefile", tag="v2.0.0")
    config:
        config_wf["ATACseq_unsupervised_analysis"]

use rule * from ATACseq_unsupervised_analysis as ATACseq_unsupervised_analysis_*

#### ATACseq - Differential Accessibility Analysis #### 
module ATACseq_dea_limma:
    snakefile:
        github("epigen/dea_limma", path="workflow/Snakefile", tag="v1.0.3")
    config:
        config_wf["ATACseq_dea_limma"]

use rule * from ATACseq_dea_limma as ATACseq_dea_limma_*

#### ATACseq - Enrichment Analysis ####
module ATACseq_enrichment_analysis:
    snakefile:
        github("epigen/enrichment_analysis", path="workflow/Snakefile", tag="v1.0.1")
    config:
        config_wf["ATACseq_enrichment_analysis"]

use rule * from ATACseq_enrichment_analysis as ATACseq_enrichment_analysis_*
