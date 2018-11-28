# R + Python Binder Example

Minimal working example for a binder with both R and Python Jupyter and RMarkdown notebooks.

 - Launch in Jupyter Lab: [![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/KopfLab/R_python_binder_example/master?urlpath=lab)
 - Launch in RStudio: [![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/KopfLab/R_python_binder_example/master?urlpath=rstudio)

## Binder Setup

Modify the files in the `binder` sub-directory to specify required dependencies for R and python. Binder will generate a docker image for your repository after every change to the repo and then will re-use the docker image on subsequent launches. This means that the first time you launch binder for the latest version of your branch, it may take some time to launch but will be fast for everyone else aftewards. Switching between `RStudio` vs. `Jupyter Lab` as the IDE is done easily by changing the binder link as described below.

**Important**: binder will *only* work for public repositories. If your repository is private, you will have to make it public in the repository settings before you can launch it in binder.

### R
 - modify the `binder/runtime.txt` file to specify which R date snapshot should be used (the [MRAN](https://mran.microsoft.com/documents/rro/reproducibility) network keeps a daily snapshot)
 - modify the `binder/install.R` file to make sure all dependencies are specified. Dependencies can be from CRAN, bioconductor or GitHub. Since GitHub hosted libraries are not part of the MRAN snapshot, it is best to specify a commit or release tag to ensure that a compatible version of the package is installed in the binder.

### Python

 - modify the `binder/environment.yml` file to specify the dependencies. The file is a standard [conda environment config file](https://conda.io/docs/user-guide/tasks/manage-environments.html#create-env-file-manually) and thus supports conda packages, version definitions, multiple source channels as well as pip installations.
 - modify the `binder/postBuild` file for any JupyterLab extensions or other direct install commands

## Binder Link

### Jupyter Lab

 - modify the following link to launch your repo in an RStudio binder (`USER`, `REPO`, `BRANCH`): `http://beta.mybinder.org/v2/gh/USER/REPO/BRANCH?urlpath=lab`
 - modify the following markdown code to create a launch badge like the one at the top this README: `[![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/USER/REPO/BRANCH?urlpath=lab)`

### RStudio

 - modify the following link to launch your repo in an RStudio binder (`USER`, `REPO`, `BRANCH`): `http://beta.mybinder.org/v2/gh/USER/REPO/BRANCH?urlpath=rstudio`
 - modify the following markdown code to create a launch badge like the one at the top of this README: `[![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/USER/REPO/BRANCH?urlpath=rstudio)`


