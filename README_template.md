# Analysis & Visualization Snakemake Workflow Using/Powered by PACKAGE for DATA/MODALITY
A [Snakemake](https://snakemake.readthedocs.io/en/stable/) workflow for performing and visualizing analyses of data (e.g., ...) powered by the package [package](https://www.packageURL.org).

This workflow adheres to the module specifications of [MR.PARETO](https://github.com/epigen/mr.pareto), an effort to augment research by modularizing (biomedical) data science.

**If you use this workflow in a publication, don't forget to give credits to the authors by citing the URL of this (original) repository (and its DOI, see Zenodo badge above -> coming soon).**

![Workflow Rulegraph](./workflow/dags/rulegraph.svg)

Table of contents
----------------
  * [Authors](#authors)
  * [Software](#software)
  * [Methods](#methods)
  * [Features](#features)
  * [Usage](#usage)
  * [Configuration](#configuration)
  * [Examples](#examples)
  * [Links](#links)
  * [Resources](#resources)
  * [Publications](#publications)

# Authors
- [MR.PARETO](https://github.com/epigen/mr.pareto)


# Software
This project wouldn't be possible without the following software and their dependencies:

| Software | Reference (DOI) |
| :---: | :---: |
| packageA | https://doi.org/10.AAAA/ |
| packageB | https://doi.org/10.BBBB/ |


# Methods
This is a template for the Methods section of a scientific publication and is intended to serve as a starting point. Only retain paragraphs relevant to your analysis. References [ref] to the respective publications are curated in the software table above. Versions (ver) have to be read out from the respective conda environment specifications (workflow/envs/\*.yaml file) or post execution in the result directory (/envs/{module}/\*.yaml). Parameters that have to be adapted depending on the data or workflow configurations are denoted in squared brackets e.g., [X].

__Analysis.__ Analysis was performed...

__Visualization.__ The results were visualized...


**The analysis and visualizations described here were performed using a publicly available Snakemake [ver] (ref) workflow [ref - cite this workflow here].**

# Features
The workflow performs the following steps that produce the outlined results:

- Analysis
  - ...
  - (optional) ...
- Visualizations
  - ...
- Limitations
  - ...


# Usage
Here are some tips for the usage of this workflow:
- ...

# Configuration
Detailed specifications can be found here [./config/README.md](./config/README.md)

# Examples
--- COMING SOON ---

# Links
- [GitHub Repository](https://github.com/user/module/)
- [GitHub Page](https://user.github.io/module/)
- [Zenodo Repository (coming soon)]()
- [Snakemake Workflow Catalog Entry](https://snakemake.github.io/snakemake-workflow-catalog?usage=user/module)

# Resources
- Recommended downstream analysis modules
    - ...
- ...

# Publications
The following publications successfully used this module for their analyses.
- ...
