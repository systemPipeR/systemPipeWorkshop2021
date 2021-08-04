<!-- badges: start -->
[![.github/workflows/basic_checks.yaml](https://github.com/systemPipeR/systemPipeWorkshop2021/actions/workflows/basic_checks.yaml/badge.svg)](https://github.com/systemPipeR/systemPipeWorkshop2021/actions/workflows/basic_checks.yaml)
<!-- badges: end -->

# systemPipe: Workflow and Visualization Toolkit <img src="https://raw.githubusercontent.com/systemPipeR/systemPipeR.github.io/main/static/images/systemPipe_logo.png" align="right" width="280" height="288">

**Authors**:
    Daniela Cassol (danielac@ucr.edu),
    Le Zhang (le.zhang001@email.ucr.edu),
    Thomas Girke (thomas.girke@ucr.edu).
    
**Institution**: Institute for Integrative Genome Biology, University of California, Riverside, California, USA.

# Overview

## Workshop Description

This workshop introduces _systemPipe_ (SP), a generic toolkit for designing and running reproducible data analysis workflows. The environment consists of three major modules implemented as R/Bioconductor packages. _systemPipeR_ (SPR) provides core functionalities for defining workflows, interacting with command-line software, and executing both R and/or command-line software, as well as generating publication-quality analysis reports. _systemPipeShiny_ (SPS) integrates a graphical user interface for managing workflows and visualizing results interactively. _systemPipeWorkflow_ (SPW) offers a collection of pre-configured workflow templates. This hand-on event will include the following topics: (1) brief overview of the design principles and functionalities of the SP toolkit; (2) design and usage of SPR's command-line interface based on an object-oriented R implementation of CWL; (3) configuration and execution of workflows; (4) construction of custom workflows; (5) configuration and execution of a pre-configured workflow example from start to finish, e.g. RNA-Seq template; (6) parallel execution of workflows on HPC and cloud systems with and without schedulers; (7) generation of technical and scientific analysis reports including visualization; and 
(8) demonstration of SPS' core functionalities, the project's Shiny App.

## Pre-requisites

  * Basic knowledge of R and usage of Bioconductor packages for NGS analysis
  * Basic knowledge of running command-line software
  * Basic knowledge of parallelization concepts

Non-essential background reading:

  * [systemPipe Workflow Environment WebPage](https://systempipe.org/)
  * [systemPipeR vignette](https://bioconductor.org/packages/devel/bioc/vignettes/systemPipeR/inst/doc/systemPipeR.html)
  * [systemPipeShiny vignette](https://bioconductor.org/packages/devel/bioc/vignettes/systemPipeShiny/inst/doc/systemPipeShiny.html)
  * [systemPipeRdata vignette](https://bioconductor.org/packages/release/data/experiment/vignettes/systemPipeRdata/inst/doc/systemPipeRdata.html)
  * [R Markdown tutorial](https://rmarkdown.rstudio.com/lesson-2.html)

## Workshop Participation

Participants will be able to perform all analysis components of this workshop hands-on. Active user participation throughout the event is highly encouraged, including but not limited to lecture material, hands-on sections, and final discussion about package improvements. Participants are encouraged to ask questions at any time during the workshop.

## _R_ / _Bioconductor_ packages used

* [`systemPipeR`](http://www.bioconductor.org/packages/release/bioc/html/systemPipeR.html)
* [`systemPipeShiny`](https://bioconductor.org/packages/devel/bioc/html/systemPipeShiny.html)
* [`systemPipeRdata`](http://www.bioconductor.org/packages/release/data/experiment/html/systemPipeRdata.html)

## Time outline

1h 45m total

| Activity                                                         | Time |
|------------------------------------------------------------------|------|
| Overview of *systemPipe* toolkit                                 | 10m  | 
| Introduction to SPR's command-line interface                     | 20m  |
| Showcase RNA-Seq workflow                                        | 20m  |
| Configuration and execution of workflows                         | 20m  |
| Parallelization on single machines and clusters                  | 10m  |
| Generation of technical and scientific analysis reports          | 5m   |
| Overview of *systemPipeShiny* core functionalities               | 20m  |

## Workshop goals and objectives

### Learning goals

* Recognize the benefits of a generic R-based workflow construction environment that is both scalable and reproducible
* Integration of command-line tools via the CWL community standard
* Rendering of R markdown reports and critical assessment of scientific analysis reports
* Parallelization of big data analysis tasks

### Learning objectives

* Identify and practice how to make analysis workflows more robust, reproducible, and portable across heterogeneous computing systems
* Usage of new workflow control class for designing, configuring, and running workflows
* Optimize and debug workflows
* Inspection of technical reports and log files
* Design of new and fully customized workflows
* Practice interactive workflow management and visualization 

# Key resources

- [Docker image](https://hub.docker.com/r/systempipe/systempipeworkshop2021)
- [Workshop website](https://systempipe.org/systemPipeWorkshop2021/)
- [Bioc2021 Workshop](http://app.orchestra.cancerdatasci.org/1)
- [Bioc2021 website](https://bioc2021.bioconductor.org/)
