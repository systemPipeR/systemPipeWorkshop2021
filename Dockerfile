FROM bioconductor/bioconductor_docker:devel

WORKDIR /home/rstudio

COPY --chown=rstudio:rstudio . /home/rstudio/

RUN apt-get update && \
    apt-get install -y hisat2 bowtie bowtie2 bwa samtools vim && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN cd inst/tools &&\
    unzip Trimmomatic-0.39.zip -d /opt/ &&\
#    rm -rf Trimmomatic-0.39.zip &&\
    chmod +x /opt/Trimmomatic-0.39/trimmomatic-0.39.jar &&\
    echo "#!/bin/bash" >> /opt/Trimmomatic-0.39/trimmomatic &&\
    echo "exec java -jar /opt/Trimmomatic-0.39/trimmomatic-0.39.jar """"$""@"""" " >> /opt/Trimmomatic-0.39/trimmomatic &&\
    chmod +x /opt/Trimmomatic-0.39/trimmomatic

ENV PATH="${PATH}:/opt/Trimmomatic-0.39/"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); BiocManager::install(ask=FALSE)"

RUN Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=TRUE, repos = BiocManager::repositories())"

# Install required Bioconductor packages from devel version
RUN Rscript -e 'BiocManager::install("systemPipeR/systemPipeShiny")'
RUN Rscript -e 'BiocManager::install("tgirke/systemPipeR")'
RUN Rscript -e 'BiocManager::install("tgirke/systemPipeRdata")'
