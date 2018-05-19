# docker build --rm -t beast .

FROM r-base
#setup R configs
RUN echo "r <- getOption('repos'); r['CRAN'] <- 'http://cran.us.r-project.org'; options(repos = r);" > ~/.Rprofile
RUN Rscript -e "install.packages(c('DEoptim','foreach','doMC','doParallel'))"
WORKDIR /data
ENTRYPOINT ["Rscript"]
CMD ["--vanilla"]

