# MR. PARETO - Modules & Recipes for Pragmatic Augmentation of Research Efficiency Towards Optimum
Get 80% of all standard biomedical data science analyses done semi-automated with 20% of the effort, by leveraging [Snakemake's](https://snakemake.github.io/) module functionality to use and combine pre-existing workflows into arbitrarily complex analyses.

# TL;DR - More Time for Science!
- **Goal**: Get 80% of (standard) biomedical data science analyses done semi-automated with 20% of the effort.
- **Why**: By taking care of efficiency (i.e., maximum output with limited resources) scientists can focus on effectivenes (i.e., the biggest impact possible).
- **How**: Leverage the latest developments in workflow management to (re-)use and combine independent computational modules into arbitrarily complex analyses.
- **What**: Independent computational **Modules** implemented as Snakemake workflows, encoding best practices and standard approaches, are used to scale, automate and parallelize analyses. Snakemake's module function enables arbitrarily complex combinations of pre-exsiting modules for any **Project**. **Recipes** combine modules into the most conceivable standard analyses, thereby accelerating projects to the point of the unknown. Altogether this enables complex, portable, transparent, reproducible, documented analysis of biomedical data.

# Table of contents
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
The following instructions should take less than 10 minutes to execute and hold true for all Snakemake workflows, including all MR. PARETO modules.

 1. Install and setup [Snakemake](https://snakemake.readthedocs.io/en/stable/) (only once)
    1. (only once) install Snakemake, which requires [conda](https://docs.conda.io/en/latest/) and [mamba](https://mamba.readthedocs.io/en/latest/), following the offical [documentation](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html)(the full installation is recommended). 
       ```{console}
        conda install -n base -c conda-forge mamba
        conda activate base
        mamba create -c conda-forge -c bioconda -n snakemake snakemake
       ```
     2. (only once) set environment variables for convenience (optional but recommended, details in [Tips](#tips))
 2. clone the workflow repository (only once per workflow)
     ```{console}
     git clone git@github.com:epigen/unsupervised_analysis.git
      ```

Note: All software dependencies are installed and managed automatically via Snakemake and conda. They are installed upon the first run of the workflow.

## Configuration
Configure your analysis
1. this depends on the workflow and is always described in a separate `README.md` located in the workflow's `config` folder.
2. most often it is 1 configuration file (`.yaml`) for configuring the analysis (e.g., parameter) and 1-2 annotation files (`.csv`) describing the data or data-specific configurations (e.g., file paths or metadata).

## Execution
Run the workflow from within the Snakemake conda environment and the workflow's root directory.
1. activate the snakemake conda environment (Snakemake commands only work from within the snakemake conda environment)
    ```{console}
    conda activate snakemake
    ```
2. enter the workflow directory (always execute from within the top level of the workflow directory)
    ```{console}
    cd unsupervised_analysis
    ```
3. execute the workflow using conda to install and manage the required software
    1. **local execution** with one core
       ```{console}
       snakemake --use-conda --cores 1
       ```
    2. **vanilla cluster execution** with 32 jobs for cluster engines that support shell scripts and have access to a common filesystem, (e.g. the Sun Grid Engine), see [Snakemake Cluster Execution documentation](https://snakemake.readthedocs.io/en/stable/executing/cluster.html)
       ```{console}
       snakemake --use-conda --cluster qsub --jobs 32
       ```
    3. **configured cluster execution** by using --profile
       ```{console}
       snakemake --use-conda --profile path/to/clusterProfile
       ```

Note: Snakemake cluster profiles are the interface between an OS-agnostic Snakemake workflow and the system it is executed on (e.g., SLURM HPC). If you are working on another cluster engine get your cluster execution profile here: [The Snakemake-Profiles project](https://github.com/snakemake-profiles/doc)

These instructions (installation, configuration, execution) are also shown in the modules' respective [Snakmake workflow catalog entry](https://snakemake.github.io/snakemake-workflow-catalog).

<a name="results"/>

## Results & Reports
Finally, you can inspect the results directly and/or use the Snakemake report.

The result directory and report follow deliberately always the same structure to enable the usage of multiple modules within one project (see next section):
 * ...

<a name="projects"/>

# Projects using multiple Modules (game changing superpower)
--- COMING SOON ---

# Recipes
--- COMING SOON ---

<a name="sustainability"/>

# Sustainability & Reproducibility

<a name="tips"/>

# Pro Tips
Here are some tips for troubleshooting & FAQs:
- always first perform a dry-run with option -n
- 7. tip always perform first a dry run using the flag -n, to check if the configuration works and the workflow does what you intend it to
command for a dry-run with option -n (-p makes Snakemake print the resulting shell command for illustration)
```
snakemake -p -n
```

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


the profile for CeMM's slurm environment is provided in the config/ directory, of note: 
- the number of jobs in the slurm.cemm/config.yaml should be set as high as necessary, because arrayed job subsmission does not work (yet) and the scheduler (eg SLURM) should take care of the priorization
- jobs which dependencies can never be fulfilled are automatically removed from the queue

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
