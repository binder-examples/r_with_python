### install regular packages

install.packages("reticulate") # python support in RMarkdown
# install.packages(c("rmarkdown", "caTools", "bitops")) # for knitting
# install.packages(“tidyverse”) # install the entire tidyverse

### install bioconductor packages
# install.packages("BiocManager")
# BiocManager::install("package")

### install GitHub packages (tag = commit, branch or release tag)
# install.packages("devtools")
# devtools::install_github("user/repo”, ref = "tag")