FROM rocker/r-ver:4.1.0

ENV RENV_VERSION 0.15.2

RUN Rscript -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN Rscript -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"

WORKDIR /computational-reproducibility-in-r
RUN Rscript -e 'renv::restore()'

# Default to bash terminal when running docker image
CMD ["bash"]