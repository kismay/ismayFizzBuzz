
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ismayFizzBuzz

<!-- badges: start -->

<!-- badges: end -->

The goal of `ismayFizzBuzz` is to reproduce the FizzBuzz game in R

## Installation

You can install the released version of ismayFizzBuzz from
[GitHub](https://github.com/kismay/ismayFizzBuzz) with:

``` r
# install.packages("remotes")
remotes::install_github("kismay/ismayFizzBuzz")
```

This package will not be available on CRAN.

## Example

This is a basic example which shows the FizzBuzz game:

``` r
library(ismayFizzBuzz)

fizz_buzz(24L)
#> [1] "Fizz"
fizz_buzz(90)
#> FYI you've entered a whole number numeric `x` but this function expects a positive integer. We'll treat the input as an integer in R for this function.
#> [1] "FizzBuzz"
```
