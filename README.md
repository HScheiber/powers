powers
======

This folder contains an R package called "powers". The functions in this package are a convenient way of taking numbers to various powers. The functions themselves can be found in the "R" folder. See the inst/doc folder for a useful vignette that explains some example usage for this package.

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
