library(BiocInstaller) # shouldn't be necessary


pkgs <- c(
    "OrganismDbi",
    "ExperimentHub",
    "Biobase",
    "biomaRt",
    "Biostrings",
    "BSgenome",
    "ShortRead",
    "IRanges",
    "SummarizedExperiment",
    "VariantAnnotation",
    "DelayedArray",
    "GSEABase",
    "Gviz",
    "graph",
    "RBGL",
    "Rgraphviz",
    "rmarkdown",
    "httr",
    "knitr",
    "openCyto",
    "BiocStyle"
    )

ap.db <- available.packages(contrib.url(biocinstallRepos()))
ap <- rownames(ap.db)

pkgs_to_install <- pkgs[pkgs %in% ap]

biocLite(pkgs_to_install)

# just in case there were warnings, we want to see them
# without having to scroll up:
warnings()

if (!is.null(warnings()))
{
    w <- capture.output(warnings())
    if (length(grep("is not available|had non-zero exit status", w)))
        quit("no", 1L)
}

suppressWarnings(BiocInstaller::biocValid(fix=TRUE, ask=FALSE))
