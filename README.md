# MR. PARETO - Modules & Recipes for Pragmatic Augmentation of Research Efficiency Towards Optimum
Get 80% of all standard biomedical data science analyses done semi-automated with 20% of the effort, by leveraging Snakemake's module functionality to use and combine pre-existing workflows into arbitrarily complex analyses.

# TL;DR - More Time for Science!
- **Goal**: Get 80% of (standard) biomedical data science analyses done semi-automated with 20% of the effort.
- **Why**: By taking care of efficiency (i.e., maximum output with limited resources) scientists can focus on effectivenes (i.e., the biggest impact possible).
- **How**: Leverage the latest developments in workflow management to (re-)use and combine independent computational modules into arbitrarily complex analyses.
- **What**: Independent computational **Modules** implemented as Snakemake workflows, encoding best practices and standard approaches, are used to scale, automate and parallelize analyses. Snakemake's module function enables arbitrarily complex combinations of pre-exsiting modules for any **Project**. **Recipes** combine modules into the most conceivable standard analyses, thereby accelerating projects to the point of the unknown. Altogether this enables complex, portable, transparent, reproducible, documented analysis of biomedical data.


Table of contents
----------------
  * [Motivation](#motivation)
  * [Modules](#modules)
    * [Installation](#installation)
    * [Configuration](#configuration)
    * [Execution](#execution)
    * [Results & Reports](#results)
  * [Projects using multiple Modules](#projects)
  * [Recipes (coming soon)](#recipes)
  * [Sustainability & Reproducibility](#sustainability)
  * [Pro Tips](#tips)
  * [Resources](#resources)
  * [CeMM Users](#cemm)

# Motivation
Three key observations at the end of 2021 motivated me to start this project.
  * Increased demand, but limited resources.
    * The balance between data generators and data analysts is getting worse and communication/understadning is suffering.
    * There is no sustainable framework to preserve inventions and best practices.
    * Established innovation methods (e.g., design thinking, fast prototyping/iterations, agile concepts,...) can not be leveraged.
  * Increased fields of relevance and interest, but not more time.
    * Staying current in one field is getting harder.
    * Getting into novel fields takes time and is risky.
    * Method development is very competitive and takes a lot of time, hence it can not be done on the side.
  * Reproducibility crisis and recent technological developments.
    * Established analysis/approaches are often “reinvented”, leading to irreproducible results.
    * Recent developments in workflow management enable a mindset shift towards software engineering best practices.
    * Compounding effects of re-using established best practices become possible.

# Modules
**Modules** are Snakemake workflows, consisting of **Rules** for multi-step analyses. They can be modality-specific (e.g., ATAC-seq processing) or general-purpose (e.g., Unsupervised Analysis). Currently, the following eight modules are available:

| Module | Module Type (Data Modality) |
| :---: | :---: |
| [Unsupervised Analysis](https://github.com/epigen/unsupervised_analysis) | General Purpose |
| [Differential Analysis with limma](https://github.com/epigen/dea_limma) | Bioinformatics |
| [Enrichment Analysis](https://github.com/epigen/enrichment_analysis) | Bioinformatics |
| [Genome Track Visualization](https://github.com/sreichl/genome_tracks) | Bioinformatics |
| [ATAC-seq Processing](https://github.com/epigen/atacseq_pipeline) | Bioinformatics (ATAC-seq) |
| [scRNA-seq Processing using Seurat](https://github.com/epigen/scrnaseq_processing_seurat) | Bioinformatics (sc/snRNA-seq) |
| [Differential Analysis using Seurat](https://github.com/epigen/dea_seurat) | Bioinformatics (sc/snRNA-seq) |
| [Perturbation Analysis using Mixscape from Seurat](https://github.com/epigen/mixscape_seurat) | Bioinformatics (sc/snRNA-seq) |


## Installation

Requirement: conda

 1. only once: install snakemake, which requires conda & mamba, according to the (I recommend full installation)
 2. only once per module: clone/download this repository
 3. (optional, but recommended) set environment variables (see details in [Tips](#tips)


This should take less than 10 minutes.
1. install snakemake, which requires conda & mamba, according to the [documentation](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html)
2. clone/download this repository (eg git clone https://github.com/epigen/atacseq_pipeline.git)

All software/package dependencies are installed and managed automatically via Snakemake and conda (and optional Singularity) and installed upon the first run of the workflow.

## Configuration
Configure your analysis:
    1. depends on the workflow, but is usually described here config/README.md
    2. most often it is 1 configuration file for configuring the analysis and 1-2 annotation files describing the data or data-specific configurations
Detailed specifications can be found here [./config/README.md](./config/README.md)

## Execution
Run the workflow:
1. activate the snakemake conda environment
2. enter the workflow repository
3. execute the workflow (at CeMM cluster: snakemake -p --use-conda --profile config/slurm.cemm -> this submits ALL planned jobs at once with dependencies, so you do not need a "orchestrating" job running)
4. tip always perform first a dry run using the flag -n, to check if the configuration works and the workflow does what you intend it to

## 1. Change working directory & activate conda environment
Execute always from within top level of the pipeline directory (ie atacseq_pipeline/).
Snakemake commands only work from within the snakemake conda environment.
```
cd atacseq_pipeline
conda activate snakemake
```
## 2. Execute a dry-run
command for a dry-run with option -n (-p makes Snakemake print the resulting shell command for illustration)
```
snakemake -p -n
```
## 3. Execute workflow local or on a cluster
### 3a. Local execution
command for execution with one core
```
snakemake -p -j1 --use-conda
```
### 3b. Cluster execution
command for **vanilla cluster execution** on cluster engines that support shell scripts and have access to a common filesystem, (e.g. the Sun Grid Engine), more info in the [Snakemake Cluster Execution documentation](https://snakemake.readthedocs.io/en/stable/executing/cluster.html)
```
snakemake -p --use-conda --cluster qsub -j 32
```

command for **cluster execution by using --profile**, submits every task as separate job with dependencies
```
snakemake -p --use-conda --profile config/slurm.cemm
```
the profile for CeMM's slurm environment is provided in the config/ directory, of note: 
- the number of jobs in the slurm.cemm/config.yaml should be set as high as necessary, because arrayed job subsmission does not work (yet) and the scheduler (eg SLURM) should take care of the priorization
- jobs which dependencies can never be fulfilled are automatically removed from the queue

If you are using another setup get your cluster execution profile here: [The Snakemake-Profiles project](https://github.com/snakemake-profiles/doc)
Short reminder: Snakemake cluster profiles are the interface between an OS-agnostic Snakemake workflow and the system it is executed on (e.g., HPC).


These instructions are also shown in the respective Snakmake workflow catalog entry eg https://snakemake.github.io/snakemake-workflow-catalog/?usage=epigen/dea_limma

<a name="results"/>

## Results & Reports

<a name="projects"/>

# Projects using multiple Modules (game changing superpower)
--- COMING SOON ---

# Recipes
--- COMING SOON ---

<a name="sustainability"/>

# Sustainability & Reproducibility

<a name="tips"/>

# Pro Tips

set Snakemake environment variables once
**conda**
pro tip: use a dedicated snakemake conda environment folder (e.g., on a non-backed up partition of your HPC) to avoid redundant installations and consolidate all conda environments installed by snakemake.
Two options:
(recommended) Set environmental variable (e.g., bash.rc) 
```
export SNAKEMAKE_CONDA_PREFIX=<path/to/conda/directory>
```

[Snakemake command line parameter:](https://snakemake.readthedocs.io/en/stable/executing/cli.html#CONDA)
```
snakemake --conda-prefix <path/to/conda/directory>
```

This does 2 things for us:

1. fewer files on the backed-up partition (i.e., part of the ongoing series How to keep your Data Manager happy?)
2. avoid reinstallation in project modules if you use multiple workflows as modules (relevant for advanced Snakemake users)

**cluster profile**

 
# Resources

<a name="cemm"/>

# CeMM Users
I have created a separate repository for CeMM's SLURM cluster profile and removed it from every module/workflow (to reduce redundancy and centralize maintenance).

You can find the repository including documentation here: [https://github.com/epigen/cemm.slurm.sm](https://github.com/epigen/cemm.slurm.sm)

# How to develop a MODULE?
--- COMING SOON ---

# How to create a RECIPE?
--- COMING SOON ---

---
---


# FROM ATAC-seq pipeline to be adapted to fit all Pareto Modules



## X. Singularity execution (not tested)
Singularity has to be installed (system wide by root) and available/loaded (eg module load singularity).
The pipeline automatically loads the correct singularity image from [Dockerhub](https://hub.docker.com/r/
/atacseq_pipeline)

command for execution with singularity, just add the flag --use-singularity and use --singularity-args to provide all the necessary directories the pipeline needs access to (in the example it is configured for the three relevant partitions at CeMM)
```
snakemake -p --use-conda --use-singularity --singularity-args "--bind /nobackup:/nobackup --bind /research:/research --bind /home:/home"
```
# Module
Use as module in another Snakemake workflow (soon)
- [https://snakemake.readthedocs.io/en/stable/snakefiles/modularization.html#snakefiles-modules](https://snakemake.readthedocs.io/en/stable/snakefiles/modularization.html#snakefiles-modules)
- [https://slides.com/johanneskoester/snakemake-6#/8](https://slides.com/johanneskoester/snakemake-6#/8)

# Report
command for report generation (this can take a few minutes, depending on the size of the dataset)
```
snakemake --report /absolute/path/to/report.zip
```

The command creates a self contained HTML based report in a zip archive containing the following sections:
- Workflow: interactive rulegraph to recapitulate individual steps, used software and conrete code (reproducibility)
- Statistics: duration and timing of individual steps
- Configuration: used pipeline configuration (accountability)
- Results
    - Configuration: all 3 used configuration files (project, samples, metadata)
    - QC reports: link to the MultiQC report
    - all: each step of the downstream analysis has its own searchable section with step-specific and unsupervised analysis plots
    - optional: one additional section per split, containing the respective downstream analysis results

# Tips
Here are some tips for troubleshooting & FAQs:
- always first perform a dry-run with option -n
- if unsure why a certain rule will be executed use option --reason in the dry run, this will give the reason for the execution of each rule
- in case the pipeline crashes, you manually canceled your jobs or when snakemake tries to "resume.. resubmit.." jobs, then remove the .snakemake/incomplete directory!
- if you commit a lot of jobs eg via slurm (>500) this might take some time (ie 1s/job commit)
- command for generating the workflow's rulegraph
```
snakemake --rulegraph --forceall | dot -Tsvg > workflow/dags/atacseq_pipeline_rulegraph.svg
```
provided in workflow/dags
- command for generating the directed acyclic graph (DAG) of all jobs with current configuration
```
snakemake --dag --forceall | dot -Tsvg > workflow/dags/all_DAG.svg
```
provided for both test examples in workflow/dags
