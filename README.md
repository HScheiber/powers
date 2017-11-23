powers
======

This folder contains an R package called "powers". The functions in this package are a convenient way of taking numbers to various powers. The functions themselves can be found in the "R" folder. See the inst/doc folder for a useful vignette that explains some example usage for this package.

Installation
------------

You can install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("vincenzocoia/powers")
#> Downloading GitHub repo vincenzocoia/powers@master
#> from URL https://api.github.com/repos/vincenzocoia/powers/zipball/master
#> Installing powers
#> "C:/PROGRA~1/R/R-34~1.1/bin/x64/R" --no-site-file --no-environ --no-save  \
#>   --no-restore --quiet CMD INSTALL  \
#>   "C:/Users/Hayden/AppData/Local/Temp/Rtmpy03IZi/devtools362c1ef84a79/vincenzocoia-powers-2724fc6"  \
#>   --library="C:/Users/Hayden/Documents/R/win-library/3.4"  \
#>   --install-tests
#> 
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
powers::square(1:10)
#>  [1]   1   4   9  16  25  36  49  64  81 100
```

For developers
--------------

The pow.R function is an internal function that all external functions in this package depend on. It takes an input number or vector to an arbitrary power. Please build any new functions for this package by utilizing the pow.R function.
