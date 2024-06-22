FROM andybaxter/docker-shiny-arm:latest

COPY install_tidyverse_dep.sh /rocker_scripts/install_tidyverse_dep.sh
RUN chmod 777 /rocker_scripts/install_tidyverse_dep.sh

RUN /rocker_scripts/install_tidyverse_dep.sh

RUN R -e "install.packages('tidyverse', repos='https://cran.rstudio.com/')"
