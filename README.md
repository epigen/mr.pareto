# MR.PARETO - Modules & Recipes for Pragmatic Augmentation of Research Efficiency Towards Optimum
> _"For many outcomes, roughly 80% of consequences come from 20% of causes (the "vital few")."_ - The Pareto Principle by Vilfredo Pareto (1906)

Get 80% of all standard biomedical data science analyses done semi-automated with 20% of the effort, by leveraging [Snakemake's](https://snakemake.github.io/) module functionality to use and combine pre-existing workflows into arbitrarily complex analyses.

# TL;DR - More Time for Science!
> _"Programming is about trying to make the future less painful. It’s about making things easier for our teammates."_ from _The Pragmatic Programmer_ by Andy Hunt & Dave Thomas
- **Why**: Time is the most precious resource. By taking care of efficiency (i.e., maximum output with limited resources) scientists can re-distribute their time to focus on effectiveness (i.e., the biggest impact possible).
- **How**: Leverage the latest developments in workflow management to (re-)use and combine independent computational modules into arbitrarily complex analyses in combination with modern innovation methods (e.g., fast prototyping, design thinking, and agile concepts).
- **What**: Independent computational **Modules** implemented as Snakemake workflows, encoding best practices and standard approaches, are used to scale, automate and parallelize analyses. Snakemake's module function enables arbitrarily complex combinations of pre-existing modules for any **Project**. **Recipes** combine modules into the most conceivable standard analyses, thereby accelerating projects to the point of the unknown. 

Altogether this enables complex, portable, transparent, reproducible, and documented analysis of biomedical data at scale.

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

> [!TIP]
> For detailed instructions on the [installation](../../wiki/Installation), [configuration](../../wiki/Configuration), and [execution](../../wiki/Execution) of modules, you can check out the [wiki](https://github.com/epigen/mr.pareto/wiki). Generic instructions are also shown in the modules' respective [Snakmake workflow catalog entry](https://snakemake.github.io/snakemake-workflow-catalog).

# Projects using multiple Modules
> _“Absorb what is useful. Discard what is not. Add what is uniquely your own.”_ - Bruce Lee

The combination of multiple modules into projects that analyze multiple datasets represents the overarching vision and power of MR.PARETO. When applied to multiple datasets within a research project, each dataset should have its own result directory within a project directory. As a concrete example we will apply the [`unsupervised_analysis` module](https://github.com/epigen/unsupervised_analysis) on `MyData` stored on [data/MyData](./data/MyData). A full [tutorial](../../wiki/Module-Usage-in-Projects) is available on the [wiki](https://github.com/epigen/mr.pareto/wiki).

Three components are required to use a module within your Snakemake workflow (i.e., a project).
- Configuration: The [`config/config.yaml`](./config/config.yaml) file has to point to the respective configuration files per dataset and workflow.
  
    Therefore, we First, we provide the respective configuration file using the predefined structure.
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

**Recipes** are combinations of existing [Modules](#modules) into end-to-end best practice analyses (from A to Z). They can be used as templates for standard analyses by leveraging existing modules, thereby enabling fast iterations and progression to the unknown. Every recipe is described and presented using a [wiki](https://github.com/epigen/mr.pareto/wiki) page by application to a public data set.

> [!TIP]
> Process each dataset module by module. Check the results of each module to inform the configuration of the next module. This iterative method allows for quick initial completion, followed by refinement in subsequent iterations based on feedback from yourself or collaborators. Adjustments in later iterations are straightforward, requiring only changes to individual configurations or annotations. Ultimately you end up with a reproducible and readable end-to-end analysis for each dataset.

| Recipe | Description | # Modules | Results |
| :---: | :---: | :---: | :---: |
| [ATAC-seq Analysis](../../wiki/ATACseq-Analysis-Recipe) | From rAw BAMs to DAA enrichemntZ | 6(-7) | ... |
| [RNA-seq Analysis](../../wiki/RNAseq-Analysis-Recipe) | From rAw BAMs to DEA enrichemntZ | 6(-7) | ... |
| [Integrative RNA-seq & ATAC-seq Analysis](../../wiki/Integrative-Analysis-Recipe) | From count mAtrices to epigenetic potentialZ | 5 | ... |
| [scRNA-seq Analysis](../../wiki/scRNAseq-Analysis-Recipe) | From count mAtrix to DEA enrichemntZ | 5(-6) | ... |
| [scCRISPR-seq Analysis](../../wiki/scCRISPRseq-Analysis-Recipe) | From count mAtrix to KO phenotype enrichemntZ | 6(-7) | ... |

# Resources
- [MR.PARETO Wiki for instructions & tutorials](https://github.com/epigen/mr.pareto/wiki)
- [GitHub list of MR.PARETO modules](https://github.com/stars/sreichl/lists/mr-pareto)
- [My Data Science Setup - Tutorial for developing Snakemake workflows and beyond](https://bit.ly/TAP-data-science-setup)
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
