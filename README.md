# MR.PARETO - Modules & Recipes for Pragmatic Augmentation of Research Efficiency Towards Optimum
> _"For many outcomes, roughly 80% of consequences come from 20% of causes (the "vital few")."_ - The Pareto Principle by Vilfredo Pareto (1906)

Get 80% of all standard biomedical data science analyses done semi-automated with 20% of the effort, by leveraging [Snakemake's](https://snakemake.github.io/) module functionality to use and combine pre-existing workflows into arbitrarily complex analyses.

# TL;DR - More Time for Science!
- **Why**: Time is the most precious resource. By taking care of efficiency (i.e., maximum output with limited resources) scientists can re-distribute their time to focus on effectiveness (i.e., the biggest impact possible).
- **How**: Leverage the latest developments in workflow management to (re-)use and combine independent computational modules into arbitrarily complex analyses in combination with modern innovation methods (e.g., fast prototyping, design thinking, and agile concepts).
- **What**: Independent computational **Modules** implemented as Snakemake workflows, encoding best practices and standard approaches, are used to scale, automate and parallelize analyses. Snakemake's module function enables arbitrarily complex combinations of pre-existing modules for any **Project**. **Recipes** combine modules into the most conceivable standard analyses, thereby accelerating projects to the point of the unknown. 

Altogether this enables complex, portable, transparent, reproducible, and documented analysis of biomedical data at scale.

# Table of contents
  * [Motivation](#motivation)
  * [Modules](#modules)
    * [Installation](#installation)
    * [Configuration](#configuration)
    * [Execution](#execution)
    * [Results & Reports](#results--reports)
    * [Sustainability & Reproducibility](#sustainability--reproducibility)
  * [Projects using multiple Modules](#projects-using-multiple-modules)
  * [Recipes](#recipes)
  * [Tips](#tips)
  * [Resources](#resources)
  * [CeMM Users](#cemm-users)

# Motivation
> _"Programming is about trying to make the future less painful. It’s about making things easier for our teammates."_ from _The Pragmatic Programmer_ by Andy Hunt & Dave Thomas

Three key observations at the end of 2021 motivated me to start this project.
  * Increased demand, but limited resources.
    * The balance between data generators and data analysts is getting worse and communication suffers.
    * There is no sustainable framework to preserve complex inventions and best practices.
    * Established innovation methods (e.g., design thinking, fast prototyping, agile concepts,...) can not be leveraged.
  * An increasing number of fields of relevance and interest, but not more time.
    * Staying current in one field is getting harder.
    * Getting into novel fields takes time and is risky.
    * Method development is very competitive and takes a lot of time, hence it requires determination and focus.
  * Reproducibility crisis and recent technological developments.
    * Established analyses/approaches are often “reinvented”, leading to irreproducible results.
    * Recent developments in workflow management enable a mindset shift towards software engineering best practices.
    * Compounding effects of re-using established best practices become possible.

# Modules
> _"Is it functional, multifunctional, durable, well-fitted, simple, easy to maintain, and thoroughly tested? Does it provide added value, and doesn't cause unnecessary harm? Can it be simpler? Is it an innovation?"_ - Patagonia Design Principles

**Modules** are Snakemake workflows, consisting of **Rules** for multi-step analyses, that are independent and self-contained. A `{module}` can be modality-specific (e.g., ATAC-seq processing) or general-purpose (e.g., Unsupervised Analysis). Currently, the following **nine modules** are available:

| Module | Type (Data Modality) | DOI | Stars |
| :---: | :---: | :---: | :---: |
| [Unsupervised Analysis](https://github.com/epigen/unsupervised_analysis) | General Purpose<br>(tabular data) | [![DOI](https://zenodo.org/badge/475465311.svg)](https://zenodo.org/badge/latestdoi/475465311) | <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/epigen/unsupervised_analysis?style=plastic"> |
| [Split, Filter, Normalize and Integrate Sequencing Data](https://github.com/epigen/spilterlize_integrate) | Bioinformatics<br>(NGS counts) | [![DOI](https://zenodo.org/badge/659800258.svg)](https://zenodo.org/badge/latestdoi/659800258) | <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/epigen/spilterlize_integrate?style=plastic"> |
| [Differential Analysis with limma](https://github.com/epigen/dea_limma) | Bioinformatics<br>(NGS data) | [![DOI](https://zenodo.org/badge/524038188.svg)](https://zenodo.org/badge/latestdoi/524038188) | <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/epigen/dea_limma?style=plastic">
| [Enrichment Analysis](https://github.com/epigen/enrichment_analysis) | Bioinformatics<br>(genes/genomic regions) | [![DOI](https://zenodo.org/badge/377527671.svg)](https://zenodo.org/badge/latestdoi/377527671) | <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/epigen/enrichment_analysis?style=plastic"> |
| [Genome Track Visualization](https://github.com/epigen/genome_tracks) | Bioinformatics<br>(aligned BAM files) | [![DOI](https://zenodo.org/badge/438573546.svg)](https://zenodo.org/doi/10.5281/zenodo.10849097) | <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/epigen/genome_tracks?style=plastic"> |
| [ATAC-seq Processing](https://github.com/epigen/atacseq_pipeline) | Bioinformatics<br>(ATAC-seq) | [![DOI](https://zenodo.org/badge/350342694.svg)](https://zenodo.org/doi/10.5281/zenodo.6323634) | <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/epigen/atacseq_pipeline?style=plastic"> |
| [scRNA-seq Processing using Seurat](https://github.com/epigen/scrnaseq_processing_seurat) | Bioinformatics<br>(scRNA-seq) | [![DOI](https://zenodo.org/badge/468752490.svg)](https://zenodo.org/doi/10.5281/zenodo.10679327) | <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/epigen/scrnaseq_processing_seurat?style=plastic"> |
| [Differential Analysis using Seurat](https://github.com/epigen/dea_seurat) | Bioinformatics<br>(scRNA-seq) | [![DOI](https://zenodo.org/badge/483638364.svg)](https://zenodo.org/doi/10.5281/zenodo.10689139) | <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/epigen/dea_seurat?style=plastic"> |
| [Perturbation Analysis using Mixscape from Seurat](https://github.com/epigen/mixscape_seurat) | Bioinformatics<br>(scCRISPR-seq) | [![DOI](https://zenodo.org/badge/481635018.svg)](https://zenodo.org/badge/latestdoi/481635018) | <img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/epigen/mixscape_seurat?style=plastic"> |


## Installation
The following instructions should take less than 10 minutes to execute and hold true for any Snakemake workflow, including all MR.PARETO modules.

  1. Install and setup [Snakemake](https://snakemake.readthedocs.io/en/stable/) (only once)
      1. install Snakemake, which requires [conda](https://docs.conda.io/en/latest/) and [mamba](https://mamba.readthedocs.io/en/latest/), following the offical [documentation](https://snakemake.readthedocs.io/en/stable/getting_started/installation.html) (the full installation is recommended). 
          ```console
          conda install -n base -c conda-forge mamba
          conda activate base
          mamba create -c conda-forge -c bioconda -n snakemake snakemake
          ```
          Most modules were developed and tested with Snakemake version 7.15.2 (recommended)
          ```console
          mamba create -c conda-forge -c bioconda -n snakemake snakemake=7.15.2
          ```
     2. set Snakemake environment variables for convenience (optional, but highly recommended)
         1. configure a **dedicated Snakemake conda environment folder** (e.g., on a non-backed-up partition of your cluster) to avoid redundant installations and consolidate all conda environments installed by Snakemake in one easy-to-manage location.
             ```bash
             # put this in your .bashrc profile
             export SNAKEMAKE_CONDA_PREFIX = path/to/conda/directory
             ```
         2. if you work on a cluster: configure the location of your **cluster profile** (i.e., the interface between Snakemake and your cluster's workload manager)
             ```bash
             # put this in your .bashrc profile
             export SNAKEMAKE_PROFILE = path/to/your/cluster/profile
             ```
  2. clone the `{module}` repository (only once per module)
     ```console
     git clone git@github.com:user/{module}.git
      ```

**Note**: All software dependencies are installed and managed automatically via Snakemake and conda. They are installed upon the first run of the module.

## Configuration
Configure your analysis:
1. this depends on the module and is always described in a separate `README.md` located in the module's `config` folder (i.e., `{module}/config/README.md`).
2. most often it is 1 configuration file (`.yaml`) for configuring the analysis (e.g., parameters) and 1-2 annotation files (`.csv`) describing the data or data-specific configurations (e.g., file paths or metadata).

## Execution
Run the `{module}` from within the Snakemake conda environment and the module's root directory.
1. activate the snakemake conda environment (Snakemake commands only work from within the snakemake conda environment)
    ```console
    conda activate snakemake
    ```
2. enter the `{module}` directory (always execute from within the top level of the module directory)
    ```console
    cd {module}
    ```
3. execute the module, while using conda to install and manage the required software
    1. **local execution** with one core
       ```console
       snakemake --use-conda --cores 1
       ```
    2. **vanilla cluster execution** with 32 jobs for cluster engines that support shell scripts and have access to a common filesystem, (e.g. the Sun Grid Engine), see [Snakemake Cluster Execution documentation](https://snakemake.readthedocs.io/en/stable/executing/cluster.html)
       ```{console}
       snakemake --use-conda --cluster qsub --jobs 32
       ```
    3. **configured cluster execution** by using --profile (not necessary if you set it as an environment variable before)
       ```{console}
       snakemake --use-conda --profile path/to/cluster_profile
       ```

**Note**: Snakemake cluster profiles are the interface between an OS-agnostic Snakemake workflow and the system it is executed on (e.g., SLURM HPC). If you are working on another cluster engine get your cluster execution profile here: [The Snakemake-Profiles project](https://github.com/snakemake-profiles/doc)

These instructions (installation, configuration, execution) are also shown in the modules' respective [Snakmake workflow catalog entry](https://snakemake.github.io/snakemake-workflow-catalog).

## Results & Reports
Finally, you can inspect the results directly and/or create a [Snakemake report](https://snakemake.readthedocs.io/en/stable/snakefiles/reporting.html).
In the following, `{project}` refers to a dataset and its potential subsets/analyses that are analyzed by a `{module}`.

### Results
Next to the expected `{module}` outputs (i.e., results), a complete conda export of the actually used software as `.yaml` files (environments) and copies of all provided configuration and annotation files (configurations), are provided within the `{project}` `{result_directory}`.

`{result_directory}/` (e.g., `myProject`)
  - `{module}/` contains all result files with subfolders for each subset/analysis (e.g., `unsupervised_analysis/`).
  - `envs/{module}/` (e.g., `envs/unsupervised_analysis/sklearn.yaml`)
  - `configs/{module}/` (e.g., `configs/unsupervised_analysis/myProject_unsupervised_analyis_config.yaml`)

It is recommended to make this part of the module by including [a separate Snakemake rule](https://gist.github.com/sreichl/c6bda9e4193329ead05e5f2a39b22709) to export environment specifications, configuration, and annotation files.

### Report
The files contained in the report are most of the time a subset of all results focusing on visualizations.
```bash
# this can take a few minutes, depending on the size and number of files in the results
snakemake --report /absolute/path/to/report.zip
```

The command creates a self-contained HTML-based report in a ZIP archive with the following sections:
- GENERAL (automatically filled by Snakemake)
    - Workflow: interactive rulegraph recapitulating individual steps, used software and concrete code of the `{module}`
    - Statistics: duration and timing of individual steps
    - About: information on the "Embedded Packages" used by the report
- RESULT (module specific result section)
    - Configuration/`{project}_{module}/` (e.g., `Configuration/myProject_unsupervised_analysis/myProject_unsupervised_analyis_config.yaml`)
    - Software/`{project}_{module}/` (e.g., `Software/myProject_unsupervised_analysis/sklearn.yaml`)
    - `{project}_{module}`: one top-level **category**, and **subcategories** for subsets/analyses containing results of all respective analysis steps (e.g., `myProject_unsupervised_analysis`).

**Both, the `{project}` result-directory and the report, deliberately follow the same structure for every module to enable the (repetitive) usage of different modules within one project with multiple data sets (see [Projects](#projects-using-multiple-modules) section for details).**

## Sustainability & Reproducibility
To ensure sustainable development, implicit documentation and reproducibility each `{module}` has to fulfill the following requirements:
- GitHub repository for development and version control
    - descriptive name (i.e., what it does and purpose e.g, dea_limma) and split by underscores '_'
    - README according to the provided [template](README_template.md)
    - repository structure according to [Snakemake's recommendation](https://snakemake.readthedocs.io/en/stable/snakefiles/deployment.html)
    - [releases](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository) (i.e.,  versions) according to the [semantic versioning scheme](https://semver.org/)
    - Workflow rulegraph in `workflow/dags/rulegraph.svg`
        ```console
        snakemake --rulegraph --forceall | dot -Tsvg > workflow/dags/rulegraph.svg
        ```
    - GitHub page displaying the README
    - LICENSE file (recommendation: MIT)
    - CITATION.cff file
      - [CFF docs](https://citation-file-format.github.io/)
      - [GitHub citation files](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-citation-files)
      - [Generator](https://citation-file-format.github.io/cff-initializer-javascript/#/)
    - (optional, but recommended) add example data and configurations for other users as starting point
    - (optional, but recommended) provide resources and/or external data sources (e.g., reference data) as links or, Zenodo or [Git Large File Storage](https://docs.github.com/en/repositories/working-with-files/managing-large-files)
- Zenodo repository to ensure compatibility, citability, and long-term archiving
    - via [automated GitHub hook](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content) 
    - every GitHub release will trigger the creation of a new release in the Zenodo repository, and thereby a new DOI
    - the Zenodo repository will be annotated using the provided information in the CITATION.cff file in your GitHub repository
    - there is one permanent DOI that can be used to reference/cite all releases/versions of a given repository -> we recommend using this DOI and the release version for referencing e.g., in publications
    - add the dynamic DOI badge to the GitHub repository
    - add the permanent project DOI to the README in the introduction, in the methods, at the bottom (Zenodo link), and add it to the CITATION.cff.
- [Snakemake Workflow Catalog](https://snakemake.github.io/snakemake-workflow-catalog/) entry
   - increase visibility by fulfilling the requirements for [Standardized Usage](https://snakemake.github.io/snakemake-workflow-catalog/?rules=true)
   - every GitHub release will trigger the entry to be updated
- Snakemake Report for implicit documentation and collaboration
    - following the [above](#report) described structure to enhance reproducibility (via export of used software and configuration) and ensure module compatibility
- Result directory 
    - following the [above](#results) described structure to enhance reproducibility (via export of used software and configuration) and ensure module compatibility
- Software Management with [conda](https://docs.conda.io/en/latest/) for reproducibility
  - specify the version of every entry in your conda environment specification files (`workflow/envs/*.yaml`)
- (COMING SOON) Containerization with Docker/Singularity for OS-level virtualization
    - final frontier to be explored and implemented across MR.PARETO modules
    - automated containerization supported since Snakemake 6.0.0 (released 2021-02-26)
- Finally, add the `{module}` to the summary table with all modules in this repository's README under [Modules](#modules).

# Projects using multiple Modules
> _“Absorb what is useful. Discard what is not. Add what is uniquely your own.”_ - Bruce Lee

The combination of multiple modules into projects that analyze multiple datasets represents the overarching vision and power of MR.PARETO. When applied to multiple datasets within a research project, each dataset should have its own result directory within a project directory.

Three components are required to use a module within your Snakemake workflow (i.e., project):
- Configuration: The [`config/config.yaml`](./config/config.yaml) file has to point to the respective configuration files per dataset and workflow.
  
    In the example, we want to use the [`unsupervised_analysis` module](https://github.com/epigen/unsupervised_analysis) on `MyData`. Therefore, we first provide the respective configuration file using the predefined structure.
    https://github.com/epigen/mr.pareto/blob/ffa00e74f1227f5c4f526e2a84fdc832c18ad720/config/config.yaml#L12-L15
- Snakefile: Within the main Snakefile ([`workflow/Snakefile`](.workflow/Snakefile)) we have to do three things
    - load and parse all configurations into a structured dictionary.
      https://github.com/epigen/mr.pareto/blob/ffa00e74f1227f5c4f526e2a84fdc832c18ad720/workflow/Snakefile#L19-L28
    - include the `MyData` analysis snakfile from the rule subfolder (see below).
      https://github.com/epigen/mr.pareto/blob/ffa00e74f1227f5c4f526e2a84fdc832c18ad720/workflow/Snakefile#L31-L32
    - require all outputs from the used module as inputs to the target rule `all`.
      https://github.com/epigen/mr.pareto/blob/ffa00e74f1227f5c4f526e2a84fdc832c18ad720/workflow/Snakefile#L35-L40
- Modules: Load the required module and its rules within separate snakefiles (.smk) in the rule folder. Recommendation: Use one snakefile (.smk) per dataset.
    
    In the dedicated snakefile for the analysis of `MyData`, [`workflow/rules/MyData.smk`](./workflow/rules/MyData.smk) we load the specified version of the [`unsupervised_analysis` module](https://github.com/epigen/unsupervised_analysis) directly from GitHub, provide it with the previously loaded configuration and use as a prefix for all loaded rules. Recommendation: `{data_name}_{module_name}_`.
    https://github.com/epigen/mr.pareto/blob/ffa00e74f1227f5c4f526e2a84fdc832c18ad720/workflow/rules/MyData.smk#L1-L10

Here are links to the documentation on how to (re-)use modules in your Snakemake workflow:
- [Introduction to the Module system with Snakemake 6.0.0 released 2021-02-26](https://slides.com/johanneskoester/snakemake-6#/8)
- [Snakemake - Modules](https://snakemake.readthedocs.io/en/stable/snakefiles/modularization.html#snakefiles-modules)
- [Snakemake - Using and combining pre-exising workflows](https://snakemake.readthedocs.io/en/stable/snakefiles/deployment.html#using-and-combining-pre-exising-workflows)

# Recipes
> _"Civilization advances by extending the number of important operations which we can perform without thinking of them."_ - Alfred North Whitehead, author of _Principia Mathematica_

**Recipes** are combinations of existing [Modules](#modules) into end-to-end best practice analyses (from A to Z). They can be used as templates for standard analyses by leveraging existing modules, thereby enabling fast iterations and progression to the unknown. Every recipe is described and presented using a wiki page by application to a public data set.

Usage recommendation: Process each dataset module by module. Check the results of each module to inform the configuration of the next module. This iterative method allows for quick initial completion, followed by refinement in subsequent iterations based on feedback from yourself or collaborators. Adjustments in later iterations are straightforward, requiring only changes to individual configurations or annotations. Ultimately you end up with a reproducible and readable end-to-end analysis for each dataset.

| Recipe | Description | # Modules | Results |
| :---: | :---: | :---: | :---: |
| [ATAC-seq Analysis](../../wiki/ATAC‐seq-Analysis-Recipe) | From rAw BAMs to DAA enrichemntZ | 6(-7) | ... |
| [RNA-seq Analysis](../../wiki/RNA‐seq-Analysis-Recipe) | From rAw BAMs to DEA enrichemntZ | 6(-7) | ... |
| [Integrative RNA-seq & ATAC-seq Analysis](../../wiki/Integrative-Analysis-Recipe) | From count mAtrices to epigenetic potentialZ | 5 | ... |
| [scRNA-seq Analysis](../../wiki/scRNA‐seq-Analysis-Recipe) | From count mAtrix to DEA enrichemntZ | 5(-6) | ... |
| [scCRISPR-seq Analysis](../../wiki/scCRISPR‐seq-Analysis-Recipe) | From count mAtrix to KO phenotype enrichemntZ | 6(-7) | ... |

# Tips
Here are some tips for better understanding and troubleshooting that I found useful.
- always use the flag `-p` that makes Snakemake print the resulting **shell commands** that will be executed.
    ```console
    snakemake -p
    ```
- always perform first a **dry run** using the flag `-n`, to check if the configuration works and the workflow does what you intend it to do.
    ```console
    snakemake -p -n
    ```
- if unsure why a certain rule will be executed use option `--reason` during the dry run, this will give the **reason for the execution** of each rule.
    ```console
    snakemake -p -n --reason
    ```
- if you use a module in multiple projects with **different configuration files** use the command line argument `--configfile` to overwrite values from the configfile statement. Important note from the [docs](https://snakemake.readthedocs.io/en/stable/snakefiles/configuration.html#configuration): Note that any values parsed into the config dictionary with any of the above mechanisms are merged, i.e., all keys defined via a configfile statement, or the `--configfile` and `--config` command line arguments will end up in the final config dictionary, but if two methods define the same key, command line overwrites the configfile statement.
    ```console
    snakemake --configfile path/to/config.yaml
    ```
- in case a **module crashes**, you manually canceled your jobs or when Snakemake gets stuck trying to "resume.. resubmit.." jobs, then remove the `.snakemake/incomplete` directory.
- command to **generate the directed acyclic graph (DAG)** of all jobs with current configuration for visual inspection (most often too large to inspect).
    ```console
    snakemake --dag --forceall | dot -Tsvg > workflow/dags/all_DAG.svg
    ```
- in case of errors during installations, make dure your conda channel priorities are set to "strict"
    ```console
    conda config --set channel_priority strict
    ```
- Finally, if you want to **develop your own workflows/modules** start with the excellent [tutorial](https://snakemake.readthedocs.io/en/stable/tutorial/tutorial.html) from the documentation.

# Resources
- [GitHub list of MR.PARETO modules](https://github.com/stars/sreichl/lists/mr-pareto)
- [My Data Science Setup - Tutorial](https://bit.ly/TAP-data-science-setup)
- [GitHub Page of this repository](https://epigen.github.io/mr.pareto/)
- Curated and published workflows that could be used as modules:
    - [Snakemake Workflow Catalog](https://snakemake.github.io/snakemake-workflow-catalog/)
    - [WorkflowHub](https://workflowhub.eu/)
    - [SnakePipes](https://snakepipes.readthedocs.io/en/latest/index.html)
    - [Seq2Science](https://vanheeringen-lab.github.io/seq2science/index.html)
- Software
    - [Snakemake](https://snakemake.readthedocs.io/en/stable/index.html)
    - [Conda](https://docs.conda.io/en/latest/)
    - [Docker](https://www.docker.com/)
    - [Singularity](https://docs.sylabs.io/guides/3.5/user-guide/index.html#) 

# CeMM Users
We created a Snakemake cluster profile and job conductor for the HPC at [CeMM](https://cemm.at/). You can find the repository including documentation and instructions here [cemm.slurm.sm](https://github.com/epigen/cemm.slurm.sm).
