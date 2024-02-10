
<!-- README.md is generated from README.Rmd. Please edit that file -->

# valentine <a href="https://valentine.tada.science"><img src="man/figures/logo.png" align="right" height="138" /></a>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/valentine)](https://CRAN.R-project.org/package=valentine)
[![R-CMD-check](https://github.com/tadascience/valentine/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/tadascience/valentine/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of valentine is to spread the love about your favourite R
package.

## Installation

You can install the development version of valentine like so:

``` r
pak::pak("tadascience/valentine")
```

## Example

``` r
valentine::roses("dplyr")
#> 🌹 Roses are red, 📦
#> 💡 dplyr's the R package that'll make your 💻 shine 🌟,
#> 🔥 With its powerful data manipulation capabilities, 📊
#> 😍 You'll love using it all the time! ❤️
valentine::roses("lubridate", hint = "make it kinky")
#> Roses are red, 🌹
#> lubridate's API, so sexy, 🍓
#> Dates it manipulates, so flexible, 📅
#> It's time to get kinky, ooh-la-la! 😏
```
